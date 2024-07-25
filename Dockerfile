FROM ubuntu:latest
  
EXPOSE 8080
 
ENV MY_VARIABLE=my_value

COPY target/secretsanta-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT ["/bin/sh", "-c", "exec /path/to/entrypoint.sh"]
