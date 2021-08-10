[app/sources/252791628.Dockerfile]
digraph {
  "sha256:4874776bf5a80c9a35a842696a3ac1fa9dd9e8b4116f27535248c701be143ffe" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:93339bc46cbb90bed8c12bb05cbb60f1172d08d5caf5f16380e004d79b17ba0a" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y slapd=${OPENLDAP_VERSION}* && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1261907ae008827ab4eacce709cace4fb2bd2b5adb82262750bb0b093c4d14db" [label="/bin/sh -c mv /etc/ldap /etc/ldap.dist" shape="box"];
  "sha256:7d8b7cd6f4288daccff31377673e5ddabd93d5761dafe972842726efae653c96" [label="copy{src=/modules, dest=/etc/ldap.dist/modules}" shape="note"];
  "sha256:0d95e36d6a907b729f53a81201ae6c87522c570c1cc88bfd6aaa33932337576b" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:89a205f15f20cb977c9b3e3a6861fa21b1883ced7523b1f73a5236ced705b84f" [label="sha256:89a205f15f20cb977c9b3e3a6861fa21b1883ced7523b1f73a5236ced705b84f" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:93339bc46cbb90bed8c12bb05cbb60f1172d08d5caf5f16380e004d79b17ba0a" [label=""];
  "sha256:93339bc46cbb90bed8c12bb05cbb60f1172d08d5caf5f16380e004d79b17ba0a" -> "sha256:1261907ae008827ab4eacce709cace4fb2bd2b5adb82262750bb0b093c4d14db" [label=""];
  "sha256:1261907ae008827ab4eacce709cace4fb2bd2b5adb82262750bb0b093c4d14db" -> "sha256:7d8b7cd6f4288daccff31377673e5ddabd93d5761dafe972842726efae653c96" [label=""];
  "sha256:4874776bf5a80c9a35a842696a3ac1fa9dd9e8b4116f27535248c701be143ffe" -> "sha256:7d8b7cd6f4288daccff31377673e5ddabd93d5761dafe972842726efae653c96" [label=""];
  "sha256:7d8b7cd6f4288daccff31377673e5ddabd93d5761dafe972842726efae653c96" -> "sha256:0d95e36d6a907b729f53a81201ae6c87522c570c1cc88bfd6aaa33932337576b" [label=""];
  "sha256:4874776bf5a80c9a35a842696a3ac1fa9dd9e8b4116f27535248c701be143ffe" -> "sha256:0d95e36d6a907b729f53a81201ae6c87522c570c1cc88bfd6aaa33932337576b" [label=""];
  "sha256:0d95e36d6a907b729f53a81201ae6c87522c570c1cc88bfd6aaa33932337576b" -> "sha256:89a205f15f20cb977c9b3e3a6861fa21b1883ced7523b1f73a5236ced705b84f" [label=""];
}

