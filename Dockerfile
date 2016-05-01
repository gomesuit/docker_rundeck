FROM java:7

# set timezone
RUN cp -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

ADD ./config /rundeck
ADD http://dl.bintray.com/rundeck/rundeck-maven/rundeck-launcher-2.6.7.jar /rundeck

WORKDIR /rundeck

EXPOSE 4440

CMD java -jar -Duser.timezone=Asia/Tokyo rundeck-launcher-2.6.7.jar

