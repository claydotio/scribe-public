# Scribe
Scribe runs `logstash-forwarder` which forwards logs to a `logstash` server.

For setup instructions, see [clay/journalist-public](https://github.com/claydotio/journalist-public)

#### Basic info

  - You need ssl certs in `./certs`
  - Edit `run.sh` to point to your log files

###### Build

```bash
docker build -t scribe .
```

###### Run

```
docker run \
    --restart always \
    -v /var/log/app:/var/log/app \
    -e LOGSTASH_SERVER=1.2.3.4:5043 \
    --name scribe \
    -d \
    -t scribe
```
