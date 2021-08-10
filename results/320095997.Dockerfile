[app/sources/320095997.Dockerfile]
digraph {
  "sha256:48f9d221f52087404e072b8e02c44a1a181f5ce5fb10766838153fcfd55a78cd" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:7712da09ef5ae56a83929b6ff7d6dd92aaf758deadd65b0761de98a77c5cb1cd" [label="/bin/sh -c apk --update --no-cache add aria2 nginx libc6-compat ca-certificates wget curl openssl unzip && update-ca-certificates && VERSION=$(curl https://api.github.com/repos/mayswind/AriaNg/releases/latest | grep tag_name | awk  -F '\"' '{print $4}') && wget https://github.com/mayswind/AriaNg/releases/download/${VERSION}/aria-ng-${VERSION}.zip -O ariang.zip && mkdir /home/ariang && mv ariang.zip /home/ariang && cd /home/ariang && unzip ariang.zip && rm ariang.zip && mkdir -p /root/.aria2 && mkdir /run/nginx && apk del --purge wget unzip" shape="box"];
  "sha256:25fb7e71909c213d41bfecd8a10194a6c7907434838e0e146913bdd2e702a9d4" [label="copy{src=/aria2.conf, dest=/root/.aria2/aria2.conf}" shape="note"];
  "sha256:acb6bb779a77a45696cee3bc3d3d10bc020e773cb53543e4fe311a02cb7eb66e" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:8b5dabc9692bd7c9925de5408ca0ede693963bb2b431ab5391337cb337268272" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:86472411fb2c22f0e1323db2da671eb6e65df8de21c786312a87d6cc3d8533c0" [label="copy{src=/hook.sh, dest=/hook.sh}" shape="note"];
  "sha256:3cd855bc1f2401a41f52a26e1385798eae45c6206e50df1b892c1f23102909ae" [label="sha256:3cd855bc1f2401a41f52a26e1385798eae45c6206e50df1b892c1f23102909ae" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:7712da09ef5ae56a83929b6ff7d6dd92aaf758deadd65b0761de98a77c5cb1cd" [label=""];
  "sha256:7712da09ef5ae56a83929b6ff7d6dd92aaf758deadd65b0761de98a77c5cb1cd" -> "sha256:25fb7e71909c213d41bfecd8a10194a6c7907434838e0e146913bdd2e702a9d4" [label=""];
  "sha256:48f9d221f52087404e072b8e02c44a1a181f5ce5fb10766838153fcfd55a78cd" -> "sha256:25fb7e71909c213d41bfecd8a10194a6c7907434838e0e146913bdd2e702a9d4" [label=""];
  "sha256:25fb7e71909c213d41bfecd8a10194a6c7907434838e0e146913bdd2e702a9d4" -> "sha256:acb6bb779a77a45696cee3bc3d3d10bc020e773cb53543e4fe311a02cb7eb66e" [label=""];
  "sha256:48f9d221f52087404e072b8e02c44a1a181f5ce5fb10766838153fcfd55a78cd" -> "sha256:acb6bb779a77a45696cee3bc3d3d10bc020e773cb53543e4fe311a02cb7eb66e" [label=""];
  "sha256:acb6bb779a77a45696cee3bc3d3d10bc020e773cb53543e4fe311a02cb7eb66e" -> "sha256:8b5dabc9692bd7c9925de5408ca0ede693963bb2b431ab5391337cb337268272" [label=""];
  "sha256:48f9d221f52087404e072b8e02c44a1a181f5ce5fb10766838153fcfd55a78cd" -> "sha256:8b5dabc9692bd7c9925de5408ca0ede693963bb2b431ab5391337cb337268272" [label=""];
  "sha256:8b5dabc9692bd7c9925de5408ca0ede693963bb2b431ab5391337cb337268272" -> "sha256:86472411fb2c22f0e1323db2da671eb6e65df8de21c786312a87d6cc3d8533c0" [label=""];
  "sha256:48f9d221f52087404e072b8e02c44a1a181f5ce5fb10766838153fcfd55a78cd" -> "sha256:86472411fb2c22f0e1323db2da671eb6e65df8de21c786312a87d6cc3d8533c0" [label=""];
  "sha256:86472411fb2c22f0e1323db2da671eb6e65df8de21c786312a87d6cc3d8533c0" -> "sha256:3cd855bc1f2401a41f52a26e1385798eae45c6206e50df1b892c1f23102909ae" [label=""];
}

