[app/sources/174986743.Dockerfile]
digraph {
  "sha256:67ca87eacda16dfedf0a605cc15deed25d6cece0d5397b5f244f751f6d913187" [label="docker-image://docker.io/easypi/alpine-arm:latest" shape="ellipse"];
  "sha256:45e6309ee3c3ecc5e92a63a50998a659743ccf68ae883177bae75c9bc003b7fb" [label="/bin/sh -c set -xe     && apk add -U build-base                   cmake                   curl                   linux-headers                   zlib-dev     && curl -sSL ${H2O_URL} | tar xz         && cd ${H2O_DIR}         && cmake -DWITH_BUNDLED_SSL=on .         && make install         && cd ..         && rm -rf ${H2O_DIR}     && apk del build-base                cmake                curl                linux-headers                zlib-dev     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:16cec63b229c2f2360d96c43c71f2242f09d0cf4ee97bd46d172b4ae0458b027" [label="local://context" shape="ellipse"];
  "sha256:2255fc6d090ecf5c4d9f8075d433857f92f531ee173fd007e99183ab5962cef2" [label="copy{src=/h2o.conf, dest=/etc/}" shape="note"];
  "sha256:b012dc53d9d2a4c5a8b65f0153758b2ed22bdba281cd46393003f46ae6ed714a" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:b248c5ec28b62311114f886bb5ba7a4a79fdba38a348b85e6750346543323c06" [label="sha256:b248c5ec28b62311114f886bb5ba7a4a79fdba38a348b85e6750346543323c06" shape="plaintext"];
  "sha256:67ca87eacda16dfedf0a605cc15deed25d6cece0d5397b5f244f751f6d913187" -> "sha256:45e6309ee3c3ecc5e92a63a50998a659743ccf68ae883177bae75c9bc003b7fb" [label=""];
  "sha256:45e6309ee3c3ecc5e92a63a50998a659743ccf68ae883177bae75c9bc003b7fb" -> "sha256:2255fc6d090ecf5c4d9f8075d433857f92f531ee173fd007e99183ab5962cef2" [label=""];
  "sha256:16cec63b229c2f2360d96c43c71f2242f09d0cf4ee97bd46d172b4ae0458b027" -> "sha256:2255fc6d090ecf5c4d9f8075d433857f92f531ee173fd007e99183ab5962cef2" [label=""];
  "sha256:2255fc6d090ecf5c4d9f8075d433857f92f531ee173fd007e99183ab5962cef2" -> "sha256:b012dc53d9d2a4c5a8b65f0153758b2ed22bdba281cd46393003f46ae6ed714a" [label=""];
  "sha256:b012dc53d9d2a4c5a8b65f0153758b2ed22bdba281cd46393003f46ae6ed714a" -> "sha256:b248c5ec28b62311114f886bb5ba7a4a79fdba38a348b85e6750346543323c06" [label=""];
}

