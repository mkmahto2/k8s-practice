FROM centos
MAINTAINER mukesh.7755@gmail.com 
RUN yum install -y httpd
ENV x=app
EXPOSE 80
RUN mkdir /myapps
RUN mkdir /scripts
COPY beginner-html-site-styled /myapp/app1
COPY project-html-website /myapp/app2
COPY start.sh /scripts/start.sh
RUN chmod +x /scripts/start.sh
ENTRYPOINT ["bin/bash","/scripts/start.sh"]
