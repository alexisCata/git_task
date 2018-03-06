FROM ubuntu

RUN apt-get update
RUN apt-get install default-jre -y

RUN mkdir /app

COPY run_hello_bye.sh /app
COPY HelloWorld.class /app
COPY ByeWorld.class /app

WORKDIR /app

CMD ["/app/run_hello_bye.sh"]