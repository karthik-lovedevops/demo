
FROM nginx

COPY static-web /usr/share/nginx/html

COPY default.conf /etc/nginx/conf.d/

## For simplicity and time constraint created self signed certificate nginx to listen on 443
COPY nginx.crt /etc/ssl/   
COPY nginx.key /etc/ssl
