FROM maven:3.5-jdk-8

RUN apt-get update && apt-get -y install wget unzip
RUN wget https://github.com/bitsensevoip/SMPPSim-1/archive/master.zip
RUN unzip master.zip && mv SMPPSim-1-master smppsim

WORKDIR smppsim

RUN mvn clean package

#para http management y smpp. Si se usa otro archivo de props, no cambiar estos puertos que se están exponiendo
EXPOSE 8989 2775


CMD ["sh", "startsmppsim.sh"]




