FROM qnib/uplain-openjdk8

ENV M2_HOME=/usr/lib/mvn \
    M2=/usr/lib/mvn/bin \
    MVN_VER=3.3.9
RUN apt-get update -qq \
 && apt-get install -q -y wget
RUN wget -qO - http://ftp.fau.de/apache/maven/maven-3/${MVN_VER}/binaries/apache-maven-${MVN_VER}-bin.tar.gz | tar xfz - -C /usr/lib/ \
 && mv /usr/lib/apache-maven-${MVN_VER} /usr/lib/mvn/

ENV PATH $PATH:$JAVA_HOME/bin:$JAVA:$M2_HOME:$M2
