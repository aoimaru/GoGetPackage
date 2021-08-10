[app/sources/297571685.Dockerfile]
digraph {
  "sha256:34ec4610c5e70b9e416b425fcaa5a8a7d7ad512de25045a9815e2b6b093ce83b" [label="docker-image://docker.io/library/java:7-alpine" shape="ellipse"];
  "sha256:bd8dadba1b6fab2c21dbcbf142b9b91789d621869a269902e60e690938645566" [label="local://context" shape="ellipse"];
  "sha256:0cbf03fd3c3d7ae5ff79ab9ee3f686069bdf154fe2361351e93968e1fccc9e23" [label="copy{src=/picard-1.96.tgz, dest=/tmp/}" shape="note"];
  "sha256:37141700d6907fd6a0ab07473e8b4daa4d5f8d35c1cca81521f00321edc03f2f" [label="/bin/sh -c apk add --update             && apk add ca-certificates openssl             && apk add R=${R_VERSION} --update-cache --repository http://dl-5.alpinelinux.org/alpine/v3.5/community --allow-untrusted             && mkdir -p /usr/bin/picard-tools             && tar xvzf /tmp/picard-${PICARD_VERSION}.tgz -C /usr/bin/picard-tools             && rm -rf /var/cache/apk/* /tmp/*" shape="box"];
  "sha256:99212c8124baf33a09e986a4e4511e6a8afc8842539c9b25eb1999ccccb2095b" [label="sha256:99212c8124baf33a09e986a4e4511e6a8afc8842539c9b25eb1999ccccb2095b" shape="plaintext"];
  "sha256:34ec4610c5e70b9e416b425fcaa5a8a7d7ad512de25045a9815e2b6b093ce83b" -> "sha256:0cbf03fd3c3d7ae5ff79ab9ee3f686069bdf154fe2361351e93968e1fccc9e23" [label=""];
  "sha256:bd8dadba1b6fab2c21dbcbf142b9b91789d621869a269902e60e690938645566" -> "sha256:0cbf03fd3c3d7ae5ff79ab9ee3f686069bdf154fe2361351e93968e1fccc9e23" [label=""];
  "sha256:0cbf03fd3c3d7ae5ff79ab9ee3f686069bdf154fe2361351e93968e1fccc9e23" -> "sha256:37141700d6907fd6a0ab07473e8b4daa4d5f8d35c1cca81521f00321edc03f2f" [label=""];
  "sha256:37141700d6907fd6a0ab07473e8b4daa4d5f8d35c1cca81521f00321edc03f2f" -> "sha256:99212c8124baf33a09e986a4e4511e6a8afc8842539c9b25eb1999ccccb2095b" [label=""];
}

