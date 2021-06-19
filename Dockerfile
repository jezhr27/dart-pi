FROM ubuntu

RUN apt-get update
RUN apt-get install -y -q ca-certificates curl unzip git
RUN curl https://storage.googleapis.com/dart-archive/channels/stable/release/2.13.3/sdk/dartsdk-linux-arm-release.zip -o dart.zip
RUN unzip dart.zip

ENV PATH="${PATH}:/dart-sdk/bin"
