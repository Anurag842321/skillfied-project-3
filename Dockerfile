FROM rockylinux:9.3.20231119

LABEL maintainer = "ANURAFG MISHRA | anurag@gmail.com"

RUN dnf install nginx -y

COPY ./index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
