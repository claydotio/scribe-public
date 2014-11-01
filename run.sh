#!/bin/bash

cat << EOF > /tmp/config.json
{
  "network": {
    "servers": [ "$LOGSTASH_SERVER" ],
    "ssl certificate": "/opt/certs/logstash-forwarder.crt",
    "ssl key": "/opt/certs/logstash-forwarder.key",
    "ssl ca": "/opt/certs/logstash-forwarder.crt",
    "timeout": 15
  },
  "files": [
    {
      "paths": [ "/var/log/app/*.log" ],
      "fields": { "type": "stdin" }
    }
  ]
}
EOF
/opt/logstash-forwarder -config /tmp/config.json
