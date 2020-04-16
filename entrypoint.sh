#!/bin/bash

exec fluentd -c /fluentd/etc/${FLUENTD_CONF}
