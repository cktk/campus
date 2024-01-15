FROM pig4cloud/java:8-jre

MAINTAINER cktk@qq.com

ENV TZ=Asia/Shanghai
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN mkdir -p /data

WORKDIR /data

ADD ./target/campus-imaotai-1.0.11.jar ./app.jar

CMD java  -jar app.jar
