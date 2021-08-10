[app/sources/323594773.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:accf6ea838a51dea0a28816cba6e936e29aa22563060c3140ecca9296758c0e1" [label="/bin/sh -c echo \"http://dl-3.alpinelinux.org/alpine/edge/testing\" >> /etc/apk/repositories" shape="box"];
  "sha256:877e5895ef82b34eb709e570ca41828be04c88632aafc1147e1d3abd4c9a50ff" [label="/bin/sh -c apk update &&     apk upgrade" shape="box"];
  "sha256:95c4d1bd6ac747889257a73bc791378ff08d506cc20bfd0ec37197c3cb387d43" [label="/bin/sh -c apk add --no-cache hitch openssl" shape="box"];
  "sha256:d10f64afc12d6fd515b5799e2dd67faa0ee82b0abc84c5b384bf889993fe22c3" [label="/bin/sh -c adduser -h /var/lib/hitch -s /sbin/nologin -u 1000 -D hitch" shape="box"];
  "sha256:c0a05d53f3d2c93059ef298e85f45e19d3d381acecc7ac50edaca42095b8ba6e" [label="/bin/sh -c mkdir -p /etc/hitch/ /etc/ssl/hitch/" shape="box"];
  "sha256:0dca260ba93dd9b8185129e95f733c9084bd8468c1be106a442c43d8edbc0034" [label="/bin/sh -c chown -R root:hitch /etc/hitch /etc/ssl/hitch" shape="box"];
  "sha256:5b5ba51b7054fddb9fa50b5185674fe96e885b81e4c3b12bc89ac85438883658" [label="/bin/sh -c openssl req -subj \"/C=AQ/ST=Omond/L=Omond/O=${HOSTNAME}/OU=none/CN=${HOSTNAME}\" -newkey rsa:2048 -sha256 -keyout ${HOSTNAME}.key -nodes -x509 -days 365 -out ${HOSTNAME}.crt && \tcat ${HOSTNAME}.key ${HOSTNAME}.crt > /etc/ssl/hitch/main.pem" shape="box"];
  "sha256:30dfd666cda9d2d0577c47ab91a99d991aa0d61e18035199e3e260aca15ab49b" [label="local://context" shape="ellipse"];
  "sha256:83d248429da0f2a6b22ea14ec1d6e330fea47b2c255c815d8377f0568032ca25" [label="copy{src=/hitch.conf, dest=/etc/hitch/hitch.conf}" shape="note"];
  "sha256:f6afcd2020c53f6d8f3ed710a92a7e002642bf1448adf2ef50d43f9836e4d22a" [label="/bin/sh -c apk del openssl" shape="box"];
  "sha256:1db37b34ae8d7a6f43e4bfeb30dbb99ebe0efae7f200d5a7a3563088005ed029" [label="sha256:1db37b34ae8d7a6f43e4bfeb30dbb99ebe0efae7f200d5a7a3563088005ed029" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:accf6ea838a51dea0a28816cba6e936e29aa22563060c3140ecca9296758c0e1" [label=""];
  "sha256:accf6ea838a51dea0a28816cba6e936e29aa22563060c3140ecca9296758c0e1" -> "sha256:877e5895ef82b34eb709e570ca41828be04c88632aafc1147e1d3abd4c9a50ff" [label=""];
  "sha256:877e5895ef82b34eb709e570ca41828be04c88632aafc1147e1d3abd4c9a50ff" -> "sha256:95c4d1bd6ac747889257a73bc791378ff08d506cc20bfd0ec37197c3cb387d43" [label=""];
  "sha256:95c4d1bd6ac747889257a73bc791378ff08d506cc20bfd0ec37197c3cb387d43" -> "sha256:d10f64afc12d6fd515b5799e2dd67faa0ee82b0abc84c5b384bf889993fe22c3" [label=""];
  "sha256:d10f64afc12d6fd515b5799e2dd67faa0ee82b0abc84c5b384bf889993fe22c3" -> "sha256:c0a05d53f3d2c93059ef298e85f45e19d3d381acecc7ac50edaca42095b8ba6e" [label=""];
  "sha256:c0a05d53f3d2c93059ef298e85f45e19d3d381acecc7ac50edaca42095b8ba6e" -> "sha256:0dca260ba93dd9b8185129e95f733c9084bd8468c1be106a442c43d8edbc0034" [label=""];
  "sha256:0dca260ba93dd9b8185129e95f733c9084bd8468c1be106a442c43d8edbc0034" -> "sha256:5b5ba51b7054fddb9fa50b5185674fe96e885b81e4c3b12bc89ac85438883658" [label=""];
  "sha256:5b5ba51b7054fddb9fa50b5185674fe96e885b81e4c3b12bc89ac85438883658" -> "sha256:83d248429da0f2a6b22ea14ec1d6e330fea47b2c255c815d8377f0568032ca25" [label=""];
  "sha256:30dfd666cda9d2d0577c47ab91a99d991aa0d61e18035199e3e260aca15ab49b" -> "sha256:83d248429da0f2a6b22ea14ec1d6e330fea47b2c255c815d8377f0568032ca25" [label=""];
  "sha256:83d248429da0f2a6b22ea14ec1d6e330fea47b2c255c815d8377f0568032ca25" -> "sha256:f6afcd2020c53f6d8f3ed710a92a7e002642bf1448adf2ef50d43f9836e4d22a" [label=""];
  "sha256:f6afcd2020c53f6d8f3ed710a92a7e002642bf1448adf2ef50d43f9836e4d22a" -> "sha256:1db37b34ae8d7a6f43e4bfeb30dbb99ebe0efae7f200d5a7a3563088005ed029" [label=""];
}

