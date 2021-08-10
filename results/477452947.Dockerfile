[app/sources/477452947.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:eb9b78b29e91ec6aeb80ab8ce2e10500fad465648a65253d1d50f0f976266d80" [label="/bin/sh -c mkdir -p \"$PYSEEDER_HOME\" \"$DATA_DIR\" \"$DATA_DIR\"/data \"$DATA_DIR\"/output     && adduser -S -h \"$PYSEEDER_HOME\" pyseeder     && chown -R pyseeder:nobody \"$PYSEEDER_HOME\"     && chmod -R 700 \"$DATA_DIR\"" shape="box"];
  "sha256:cdb66bae2011820736a1ee2548be721fe063d27d6111e5641c179d99044f0d83" [label="/bin/sh -c apk --no-cache add python3 py3-pip build-base git openssl-dev musl-dev python3-dev libffi-dev     && pip3 install --no-cache-dir https://github.com/PurpleI2P/pyseeder/zipball/master     && apk --purge del python3 py3-pip build-base git openssl-dev musl-dev python3-dev libffi-dev" shape="box"];
  "sha256:f59e63bbc1b4c851bc21e812197107f0719ee297d4eefc38dfba26f908c663e6" [label="/bin/sh -c apk --no-cache add python3 openssl" shape="box"];
  "sha256:8cccd3952c2f66f7ea6d69886841d3c5acf9644228e990aa2dc997e16a71b424" [label="/bin/sh -c mkdir /netDb" shape="box"];
  "sha256:feb1eca88e685c3d1f938a82366f5a0693f47704a73323feb1cadb456d048c70" [label="local://context" shape="ellipse"];
  "sha256:7a7a221ee1021c5ad3c1c89596543e22ac266a91a5ad776369c6d7ddff58f23f" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:e260bba813fe1c6b492ce902bf1204da725de4e655fcbc178c35a8ccf19a39d5" [label="/bin/sh -c chmod a+x /entrypoint.sh" shape="box"];
  "sha256:c270362ef5b5c12ebc29c153506b65464ae4fb61a8f882278456fc7343b37627" [label="sha256:c270362ef5b5c12ebc29c153506b65464ae4fb61a8f882278456fc7343b37627" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:eb9b78b29e91ec6aeb80ab8ce2e10500fad465648a65253d1d50f0f976266d80" [label=""];
  "sha256:eb9b78b29e91ec6aeb80ab8ce2e10500fad465648a65253d1d50f0f976266d80" -> "sha256:cdb66bae2011820736a1ee2548be721fe063d27d6111e5641c179d99044f0d83" [label=""];
  "sha256:cdb66bae2011820736a1ee2548be721fe063d27d6111e5641c179d99044f0d83" -> "sha256:f59e63bbc1b4c851bc21e812197107f0719ee297d4eefc38dfba26f908c663e6" [label=""];
  "sha256:f59e63bbc1b4c851bc21e812197107f0719ee297d4eefc38dfba26f908c663e6" -> "sha256:8cccd3952c2f66f7ea6d69886841d3c5acf9644228e990aa2dc997e16a71b424" [label=""];
  "sha256:8cccd3952c2f66f7ea6d69886841d3c5acf9644228e990aa2dc997e16a71b424" -> "sha256:7a7a221ee1021c5ad3c1c89596543e22ac266a91a5ad776369c6d7ddff58f23f" [label=""];
  "sha256:feb1eca88e685c3d1f938a82366f5a0693f47704a73323feb1cadb456d048c70" -> "sha256:7a7a221ee1021c5ad3c1c89596543e22ac266a91a5ad776369c6d7ddff58f23f" [label=""];
  "sha256:7a7a221ee1021c5ad3c1c89596543e22ac266a91a5ad776369c6d7ddff58f23f" -> "sha256:e260bba813fe1c6b492ce902bf1204da725de4e655fcbc178c35a8ccf19a39d5" [label=""];
  "sha256:e260bba813fe1c6b492ce902bf1204da725de4e655fcbc178c35a8ccf19a39d5" -> "sha256:c270362ef5b5c12ebc29c153506b65464ae4fb61a8f882278456fc7343b37627" [label=""];
}

