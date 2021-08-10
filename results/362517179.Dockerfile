[app/sources/362517179.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:b854a367b28299247f6ea4adceb1776ee58cbc1b0fd2e95487bce7ddab245be3" [label="/bin/sh -c apk add --update wget \t&& wget https://github.com/just-containers/s6-overlay/releases/download/${S6_VERSION}/s6-overlay-amd64.tar.gz --no-check-certificate --quiet -O /tmp/s6-overlay.tar.gz \t&& wget https://github.com/janeczku/go-dnsmasq/releases/download/${GODNSMASQ_VERSION}/go-dnsmasq-min_linux-amd64 --no-check-certificate --quiet -O /usr/sbin/go-dnsmasq \t&& chmod +x /usr/sbin/go-dnsmasq \t&& tar xvfz /tmp/s6-overlay.tar.gz -C / \t&& rm -f /tmp/s6-overlay.tar.gz \t&& apk del wget \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:80baff38213cb25082662dc14735f255c45e98ef57fe9b015af6328b03498533" [label="local://context" shape="ellipse"];
  "sha256:e141e334414962b01052e1533e269e5dd47635d0c23008ca867d155adb623670" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:9ddb75e9da79d92aeb37ec1fbd1bb01c7ed4cc703eb131f3008c2350189521ba" [label="sha256:9ddb75e9da79d92aeb37ec1fbd1bb01c7ed4cc703eb131f3008c2350189521ba" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:b854a367b28299247f6ea4adceb1776ee58cbc1b0fd2e95487bce7ddab245be3" [label=""];
  "sha256:b854a367b28299247f6ea4adceb1776ee58cbc1b0fd2e95487bce7ddab245be3" -> "sha256:e141e334414962b01052e1533e269e5dd47635d0c23008ca867d155adb623670" [label=""];
  "sha256:80baff38213cb25082662dc14735f255c45e98ef57fe9b015af6328b03498533" -> "sha256:e141e334414962b01052e1533e269e5dd47635d0c23008ca867d155adb623670" [label=""];
  "sha256:e141e334414962b01052e1533e269e5dd47635d0c23008ca867d155adb623670" -> "sha256:9ddb75e9da79d92aeb37ec1fbd1bb01c7ed4cc703eb131f3008c2350189521ba" [label=""];
}

