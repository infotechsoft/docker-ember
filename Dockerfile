FROM node:25-slim

ARG EMBER_VERSION=6.8.0
ARG LIVE_RELOAD_PORT=9999
ARG BUILD_DATE

LABEL maintainer="Thomas J. Taylor <thomas@infotechsoft.com>" \
	  org.opencontainers.image.title="INFOTECH Soft Ember on Docker" \
	  org.opencontainers.image.description="ember-cli, node " \
	  org.opencontainers.image.version="ember-${EMBER_VERSION}-node-${NODE_VERSION}" \
	  org.opencontainers.image.created="${BUILD_DATE}" \
	  org.opencontainers.image.authors="Thomas J. Taylor <thomas@infotechsoft.com>" \
	  node.version="${NODE_VERSION}" \
	  ember.version="${EMBER_VERSION}"

# Add EmberJS
RUN npm install -g ember-cli@${EMBER_VERSION}

EXPOSE 4200 ${LIVE_RELOAD_PORT}
VOLUME /usr/local/ember
WORKDIR /usr/local/ember

ENV EMBER_VERSION=${EMBER_VERSION}
ENV PATH=/usr/local/ember/bin:$PATH

# Set the default command:
CMD ["ember", "server", "--live-reload-port", "${LIVE_RELOAD_PORT}"]