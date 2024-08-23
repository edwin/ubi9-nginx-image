FROM registry.access.redhat.com/ubi9/nginx-124:1-20.1724037701

ADD *.html .

CMD nginx -g "daemon off;"