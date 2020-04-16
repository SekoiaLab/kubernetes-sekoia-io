FROM fluent/fluentd:v1.8-1

USER root

RUN apk add --no-cache --update --virtual .build-deps sudo build-base ruby-dev bash

RUN \
    fluent-gem install fluent-plugin-kubernetes_metadata_filter && \
    fluent-gem install fluent-plugin-sekoia-io && \
    fluent-gem install fluent-plugin-prometheus


