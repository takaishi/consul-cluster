FROM library/consul

RUN mkdir /tmp/consul_config

ADD service_1.json /consul/config/service_1.json
ADD service_2.json /consul/config/service_2.json

ADD check_service.sh /usr/local/bin/check_service.sh
RUN touch /tmp/service_1
RUN touch /tmp/service_2
