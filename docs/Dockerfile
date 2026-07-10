FROM python:3.12-slim AS builder

WORKDIR /app

COPY docs/requirements-mkdocs.txt docs/requirements-mkdocs.txt
RUN pip install --no-cache-dir -r docs/requirements-mkdocs.txt

COPY mkdocs.yml mkdocs.private.yml ./
COPY docs/ docs/

ARG MKDOCS_CONFIG=mkdocs.yml
RUN mkdocs build -f "${MKDOCS_CONFIG}" -d /app/site

FROM nginx:alpine

COPY docs/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/site /usr/share/nginx/html

EXPOSE 80
