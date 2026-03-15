FROM nginx:alpine

COPY praeteritum-trainer.html /usr/share/nginx/html/index.html.tmpl
COPY nginx.conf                /etc/nginx/conf.d/default.conf
COPY docker-entrypoint.sh      /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/docker-entrypoint.sh"]
