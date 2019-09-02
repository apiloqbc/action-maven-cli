FROM maven:3.6.1-jdk-8 


RUN apt-get update && apt-get install -y \
    jq


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
