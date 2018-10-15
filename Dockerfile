FROM node:10
RUN apt update && apt install -y \
    openjdk-7-jdk\
    libxss1 \
    libatk-bridge2.0-0 \
    libgtk-3-0

RUN apt-get clean
RUN mkdir /opt/node_modules --mode=0666
#RUN echo "prefix=/opt/node_modules" > ~/.npmrc
RUN npm i -g gulp

RUN apt install graphviz graphviz-dev -y


ENV JAVA_HOME="/usr/lib/jvm/open-jdk"
ENV PATH="/opt/node_modules:/usr/local/lib/${PATH}"
