FROM java:7

# set timezone
RUN cp -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

#ADD ./target/app.jar /app/app.jar

RUN mkdir /rundeck &&
	cd /rundeck &&
	wget http://dl.bintray.com/rundeck/rundeck-maven/rundeck-launcher-2.6.7.jar &&

CMD java -jar -Duser.timezone=Asia/Tokyo rundeck-launcher-2.6.7.jar
