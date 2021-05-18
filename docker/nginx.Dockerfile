# docker build -t some-content-nginx .
# docker run   --rm --name some-nginx -d some-content-nginx

FROM nginx

COPY _site /usr/share/nginx/html