curl -O https://download.java.net/java/GA/jdk21.0.2/f2283984656d49d69e91c558476027ac/13/GPL/openjdk-21.0.2_linux-x64_bin.tar.gz
tar -xzvf openjdk-21.0.2_linux-x64_bin.tar.gz
rm -f openjdk-21.0.2_linux-x64_bin.tar.gz
rm -f jdk-21.0.2/lib/src.zip
tar -czvf jdk-21.0.2.tar.gz jdk-21.0.2
rm -rf jdk-21.0.2
docker build -t kenaito-runtime:jdk21 .