#

docker run --rm --name nginx1 -v "$(pwd)/_site:/usr/share/nginx/html:ro" -p 8080:80 -d nginx


