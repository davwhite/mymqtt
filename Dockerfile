FROM alpine:3.11
#RUN addgroup -g 1000 mygroup && \
#     adduser -G mygroup -u 1000 -h /myuser -D myuser && \
#     chown -R myuser:mygroup /myuser && \
#     apk --no-cache add mosquitto
RUN apk --no-cache add mosquitto
WORKDIR /myuser
USER myuser
COPY files/start.sh /myuser/start.sh
EXPOSE 1883
CMD ["/myuser/start.sh"]
