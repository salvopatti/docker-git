FROM alpine:latest
WORKDIR "/entry"
RUN apk update && \
    apk upgrade && \
    apk add git
RUN apk add openssh
COPY ./id_rsa ./id_rsa
COPY ./id_rsa ~/.ssh/id_rsa.pub
COPY ./entrypoint.sh ./entrypoint.sh
RUN chmod 777 ./entrypoint.sh
WORKDIR "/app"
ENTRYPOINT ["/entry/entrypoint.sh"]
CMD ["--version"]