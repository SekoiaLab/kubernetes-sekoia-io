FROM fluent/fluentd:v1.8-1

USER root

RUN apk add --no-cache --update --virtual .build-deps sudo build-base ruby-dev bash tini

RUN \
    fluent-gem install fluent-plugin-kubernetes_metadata_filter && \
    fluent-gem install fluent-plugin-sekoia-io -v 0.0.3 && \
    fluent-gem install fluent-plugin-prometheus

WORKDIR /fluentd

ENV FLUENTD_CONF="fluent.conf"
ENV FLUENTD_OPTS=""

COPY entrypoint.sh /fluentd/entrypoint.sh

ENTRYPOINT ["tini", "--", "/fluentd/entrypoint.sh"]
