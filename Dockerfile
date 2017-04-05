FROM java:8
WORKDIR /home/root/javahelloWorld
#COPY src /home/root/javahelloworld/src
COPY src src
#RUN mkdir bin 
RUN ls
RUN ls src
RUN mkdir bin 
RUN ls bin
RUN javac -d bin src/HelloWorld.java
RUN ls bin
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

