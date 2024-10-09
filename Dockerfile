FROM devopsfaith/krakend:2.7

COPY config/krakend.json /etc/krakend/krakend.json

COPY plugins /opt/krakend/plugins/

COPY script/entrypoint.sh /

RUN chmod +x /entrypoint.sh
