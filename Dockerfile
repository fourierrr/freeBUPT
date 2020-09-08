FROM nginx
MAINTAINER fourierrr fourierrr@gmail.com

COPY dist/ /usr/share/nginx/html/
COPY docker.nginx.conf /etc/nginx/conf.d/default.conf



# 同步系统时间
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone


#----------
#编译vue项目
#yarn run build  或者npm run build
#打包镜像
#docker build -t freebupt:0.1 .
#运行容器
#docker run --name freebupt -p 8080:80 -d freebupt:0.1
