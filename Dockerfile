FROM alpine:3.7

LABEL author="hurisheng"

RUN apk add --no-cache bash openldap openldap-back-mdb \
  && mkdir /run/openldap

VOLUME [ "/var/lib/openldap/openldap-data", "/etc/openldap" ]

EXPOSE 389

CMD [ "slapd", "-d", "256" ]