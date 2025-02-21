FROM alibaba-cloud-linux-3-registry.cn-hangzhou.cr.aliyuncs.com/alinux3/alinux3:latest
LABEL MAINTAINER="tianjun@odboy.cn"
ENV TimeZone=Asia/Shanghai
ENV DOTNET_HOME=/usr/local/dotnet
ENV PATH="${DOTNET_HOME}:$PATH"
WORKDIR /home/admin
# https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-aspnetcore-6.0.35-linux-x64-binaries
ADD https://download.visualstudio.microsoft.com/download/pr/ccdb3628-8f55-411b-b0f1-669d42604ad8/81283ab8762aaab1be72772711f07f86/aspnetcore-runtime-6.0.35-linux-x64.tar.gz ./
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
    mkdir /usr/local/dotnet; \
    tar -xzvf aspnetcore-runtime-6.0.35-linux-x64.tar.gz -C /usr/local/dotnet; \
    dotnet --info;
