FROM rackerlabs/repose:8.4.1.0

MAINTAINER The Repose Team <reposecore@rackspace.com>

VOLUME /var/log/repose

RUN apt-get update -qq && apt-get install -y -qq \
    python-pip curl

COPY fake-services /demo/fake-services
COPY scripts /demo/scripts

RUN sh /demo/scripts/node_install.sh

RUN sh /demo/scripts/fake_keystone_prepare.sh
RUN cp /demo/fake-services/fake-keystone2/package.json /opt/fake-keystone/package.json
RUN cp /demo/fake-services/fake-keystone2/app.js /opt/fake-keystone/app.js
RUN sh /demo/scripts/fake_keystone_install_docker.sh

RUN sh /demo/scripts/fake_origin_prepare.sh
RUN cp /demo/fake-services/fake-origin/package.json /opt/fake-origin/package.json
RUN cp /demo/fake-services/fake-origin/app.js /opt/fake-origin/app.js
RUN sh /demo/scripts/fake_origin_install_docker.sh

CMD ["/bin/bash", "/demo/scripts/start_services.sh"]
