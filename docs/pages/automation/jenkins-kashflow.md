# Pipeline Jenkins — Kashflow

Deploy automático de Kashflow vía Jenkins CI/CD.

## Información general

| Campo | Valor |
|-------|-------|
| Repositorio | kashflow |
| Imagen | ghcr.io/kevinkling/kashflow:latest |
| Directorio compose | /workspace/kashflow |
| Webhook | Generic Webhook Trigger (token en Jenkins) |

## Trigger

Generic Webhook Trigger en merge de Pull Request:

- Variable: `merged` desde `$.pull_request.merged`
- Filtro: expresión `true`

## Stages

1. **Login to GHCR** — credenciales `credentialsId: github-packages`
2. **Pull Latest Image** — `docker compose pull` en `/workspace/kashflow`
3. **Deploy** — `docker compose up -d`
4. **Run Migrations** — `docker compose exec -T kashflow python /app/scripts/migrate.py`
5. **Verify** — `docker compose ps`

## Credenciales

| Recurso | Ubicación |
|---------|-----------|
| GitHub Packages | Jenkins credential `github-packages` |
| Webhook token | Configurado en Jenkins (no documentar en Markdown) |

## Pipeline completo

```groovy
pipeline {
    agent any

    triggers {
        GenericTrigger(
            genericVariables: [
                [key: 'merged', value: '$.pull_request.merged']
            ],
            causeString: 'Triggered by PR merge',
            token: env.WEBHOOK_TOKEN,
            printContributedVariables: true,
            printPostContent: false,
            regexpFilterText: '$merged',
            regexpFilterExpression: 'true'
        )
    }

    environment {
        COMPOSE_DIR = '/workspace/kashflow'
        IMAGE_NAME = 'ghcr.io/kevinkling/kashflow:latest'
        GITHUB_REGISTRY = 'ghcr.io'
    }

    stages {
        stage('Login to GHCR') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'github-packages',
                                                      usernameVariable: 'GITHUB_USER',
                                                      passwordVariable: 'GITHUB_TOKEN')]) {
                        sh """
                            echo \$GITHUB_TOKEN | docker login ${GITHUB_REGISTRY} -u \$GITHUB_USER --password-stdin
                        """
                    }
                }
            }
        }

        stage('Pull Latest Image') {
            steps {
                script {
                    echo "Pulling latest image: ${IMAGE_NAME}"
                    sh """
                        cd ${COMPOSE_DIR}
                        docker compose pull
                    """
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    echo 'Deploying with docker compose...'
                    sh """
                        cd ${COMPOSE_DIR}
                        docker compose up -d
                    """
                }
            }
        }

        stage('Run Migrations') {
            steps {
                script {
                    echo 'Running database migrations...'
                    sh """
                        cd ${COMPOSE_DIR}
                        sleep 5
                        docker compose exec -T kashflow python /app/scripts/migrate.py
                    """
                }
            }
        }

        stage('Verify') {
            steps {
                script {
                    echo 'Checking containers status...'
                    sh """
                        cd ${COMPOSE_DIR}
                        docker compose ps
                    """
                }
            }
        }
    }

    post {
        success {
            echo 'Deployment completed successfully!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
```

## Enlaces relacionados

- [Automatización](index.md)
- [Cheatsheet Docker](../cheatsheets/docker.md)
