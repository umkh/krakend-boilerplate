FROM devopsfaith/krakend:2.7

COPY config/krakend.json /etc/krakend/krakend-config.json

COPY plugins /opt/krakend/plugins/

COPY scripts/entrypoint.sh /

RUN chmod +x /entrypoint.sh && apk add envsubst

CMD ["/entrypoint.sh"]
