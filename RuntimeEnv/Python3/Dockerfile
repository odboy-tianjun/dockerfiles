#FROM alibaba-cloud-linux-3-registry.cn-hangzhou.cr.aliyuncs.com/alinux3/alinux3:latest
#LABEL MAINTAINER="tianjun@odboy.cn"
#ENV TimeZone=Asia/Shanghai
#ENV PYTHON_HOME=/usr/local/python3
#ENV PATH="${PYTHON_HOME}/bin:$PATH"
#WORKDIR /home/admin
#ADD Python-3.10.0.tgz ./
#RUN ln -snf /usr/share/zoneinfo/$TimeZone /etc/localtime && echo $TimeZone > /etc/timezone; \
#    sed -i 's/mirrors.cloud.aliyuncs.com/mirrors.aliyun.com/' /etc/yum.repos.d/*.repo; \
#    yum install gcc patch libffi-devel python-devel zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel net-tools -y; \
#    yum install epel-release -y; \
#    cd Python-3.10.0; \
#    ./configure --prefix=/usr/local/python3 --enable-optimizations; \
#    make && make install; \
#    python3 -V;
