FROM alibaba-cloud-linux-3-registry.cn-hangzhou.cr.aliyuncs.com/alinux3/alinux3:latest
LABEL MAINTAINER="tianjun@odboy.cn"
ENV TimeZone=Asia/Shanghai
ENV PYTHON_HOME=/usr/local/python3
ENV PATH="${PYTHON_HOME}/bin:$PATH"
WORKDIR /home/admin
ADD https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz ./
RUN ln -snf /usr/share/zoneinfo/$TimeZone /etc/localtime && echo $TimeZone > /etc/timezone; \
    sed -i 's/mirrors.cloud.aliyuncs.com/mirrors.aliyun.com/' /etc/yum.repos.d/*.repo; \
    yum install \
    libffi-devel \
    zlib-devel \
    bzip2-devel \
    openssl-devel \
    ncurses-devel \
    sqlite-devel \
    readline-devel \
    tk-devel \
    gdbm-devel \
    libpcap-devel \
    xz-devel \
    make \
    patch \
    gcc \
    tar \
    sysstat \
    net-tools -y; \
    tar -xvf Python-3.10.0.tgz; \
    cd Python-3.10.0; \
    ./configure --prefix=/usr/local/python3; \
    make && make install; \
    python3 -V; \
    mkdir ~/.pip;
COPY pip.conf ~/.pip/