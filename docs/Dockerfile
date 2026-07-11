FROM python:3.12-slim AS builder

WORKDIR /app

COPY docs/requirements-mkdocs.txt docs/requirements-mkdocs.txt
RUN pip install --no-cache-dir -r docs/requirements-mkdocs.txt

COPY mkdocs.yml ./
COPY docs/ docs/

RUN mkdocs build -f mkdocs.yml -d /app/site

FROM nginx:alpine

COPY docs/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/site /usr/share/nginx/html

EXPOSE 80
