#
# OpenJDK Java 8 JRE Dockerfile
#
# https://github.com/dockerfile/java
# https://github.com/dockerfile/java/tree/master/openjdk-7-jre
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Java.
RUN \
  apt-get update && \
  apt-get install -y openjdk-8-jre && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /target

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# Define default command.
CMD ["bash"]