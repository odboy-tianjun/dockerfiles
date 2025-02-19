curl -O https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz
tar -xzvf openjdk-11.0.2_linux-x64_bin.tar.gz
rm -f openjdk-11.0.2_linux-x64_bin.tar.gz
rm -f jdk-11.0.2/lib/src.zip
tar -czvf jdk-11.0.2.tar.gz jdk-11.0.2
rm -rf jdk-11.0.2
docker build -t kenaito-runtime:jdk11 .