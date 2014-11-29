FROM java:openjdk-6-jre
MAINTAINER Michał Fa < mf@laboratorium.ee >

ENV VERSION 0.3-BETA

RUN apt-get install -y ca-certificates wget zip ;\
    wget wget https://s3-ap-southeast-2.amazonaws.com/flow-packages/Flow-$VERSION.zip ;\
    unzip ./Flow-$VERSION.zip ;\
    rm ./Flow-$VERSION.zip

EXPOSE 8082
WORKDIR /Flow
CMD ["/bin/bash", "/Flow/startup.sh"]

