FROM alibaba-cloud-linux-3-registry.cn-hangzhou.cr.aliyuncs.com/alinux3/alinux3:latest
LABEL MAINTAINER="tianjun@odboy.cn"
ENV TimeZone=Asia/Shanghai
WORKDIR /home/admin
RUN ln -snf /usr/share/zoneinfo/$TimeZone /etc/localtime && echo $TimeZone > /etc/timezone; \
    sed -i 's/mirrors.cloud.aliyuncs.com/mirrors.aliyun.com/' /etc/yum.repos.d/*.repo; \
    yum install \
    tar \
    wget \
    net-tools  \
    bind-utils -y;
