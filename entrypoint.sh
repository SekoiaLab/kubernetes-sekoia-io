#!/bin/bash

exec fluentd -c /fluentd/etc/${FLUENTD_CONF} -p /fluentd/plugins ${FLUENTD_OPTS}
