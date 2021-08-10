[app/sources/346805877.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:dce85a4433e5b79bfd24a57e363a98902a76a9f9cd6645c2a9ba395d5ff08c4a" [label="/bin/sh -c apk add --no-cache bash openvpn openresolv" shape="box"];
  "sha256:ec70f673050674ab1c4d6524dc8f5236267eb668ebf36a4379fc14e03caed5cf" [label="local://context" shape="ellipse"];
  "sha256:77dcee723fee75bd710b94babd877fd8b8be49af399fff7593cde75920e36789" [label="copy{src=/update-resolv-conf, dest=/etc/openvpn/update-resolv-conf}" shape="note"];
  "sha256:c5e481ba8fa7471d39b2762b1d281610c1f76166216ff34e6ca475a14f3f31ce" [label="mkdir{path=/etc/openvpn}" shape="note"];
  "sha256:f61db8247153f6bc4c7d52dc8a9e1ded912b5ce290912c0bf5db784b1ad81a04" [label="sha256:f61db8247153f6bc4c7d52dc8a9e1ded912b5ce290912c0bf5db784b1ad81a04" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:dce85a4433e5b79bfd24a57e363a98902a76a9f9cd6645c2a9ba395d5ff08c4a" [label=""];
  "sha256:dce85a4433e5b79bfd24a57e363a98902a76a9f9cd6645c2a9ba395d5ff08c4a" -> "sha256:77dcee723fee75bd710b94babd877fd8b8be49af399fff7593cde75920e36789" [label=""];
  "sha256:ec70f673050674ab1c4d6524dc8f5236267eb668ebf36a4379fc14e03caed5cf" -> "sha256:77dcee723fee75bd710b94babd877fd8b8be49af399fff7593cde75920e36789" [label=""];
  "sha256:77dcee723fee75bd710b94babd877fd8b8be49af399fff7593cde75920e36789" -> "sha256:c5e481ba8fa7471d39b2762b1d281610c1f76166216ff34e6ca475a14f3f31ce" [label=""];
  "sha256:c5e481ba8fa7471d39b2762b1d281610c1f76166216ff34e6ca475a14f3f31ce" -> "sha256:f61db8247153f6bc4c7d52dc8a9e1ded912b5ce290912c0bf5db784b1ad81a04" [label=""];
}

