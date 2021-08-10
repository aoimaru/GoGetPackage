[app/sources/235491983.Dockerfile]
digraph {
  "sha256:ceeada30f30cda914f4d3cb7ecd91c29e3509445a2b5cb0b149145235ba77d8f" [label="docker-image://docker.io/library/node:7.10.0-alpine" shape="ellipse"];
  "sha256:64ace12b8fec180308b80f54877ead994cf9148266636dc73c0d99cb2b45aa02" [label="/bin/sh -c mkdir -p /opt/orcinus" shape="box"];
  "sha256:5df6c9ebed76fcd67077621b8be0c3afb2209c94653789e6e63dca9bcede3976" [label="local://context" shape="ellipse"];
  "sha256:67a97fd43e3d98f187fa07ccc36e266550c57c24fad2865ce48c59506458290d" [label="copy{src=/, dest=/opt/orcinus}" shape="note"];
  "sha256:ce0da2e25bf3767fb6ee74c38ac1a72868882fa254ab84b2c94e2de47e9d671d" [label="mkdir{path=/opt/orcinus}" shape="note"];
  "sha256:a615bb9aa350dfa036f5f4d688da746dc983ac141423ac21ec05390cf2bb672e" [label="/bin/sh -c set -ex     && apk add --update --no-cache --virtual .build-deps     python \t\tbuild-base \t\t&& npm install                 && npm rebuild bcrypt --build-from-source \t\t&& apk del .build-deps" shape="box"];
  "sha256:11bbc1fa14f39b94b8cca838aa39ba0b314c225d3915794b66e99508a6f68cb7" [label="copy{src=/entrypoint, dest=/entrypoint}" shape="note"];
  "sha256:a72a1ee56871996e07f6f9634528a170a52b85516f1ab8629a6107a48f26625e" [label="/bin/sh -c chmod +x /entrypoint" shape="box"];
  "sha256:b0c18de29022a4e53c87716e25b429779797dc776ffa5673342076f7768f2e2a" [label="sha256:b0c18de29022a4e53c87716e25b429779797dc776ffa5673342076f7768f2e2a" shape="plaintext"];
  "sha256:ceeada30f30cda914f4d3cb7ecd91c29e3509445a2b5cb0b149145235ba77d8f" -> "sha256:64ace12b8fec180308b80f54877ead994cf9148266636dc73c0d99cb2b45aa02" [label=""];
  "sha256:64ace12b8fec180308b80f54877ead994cf9148266636dc73c0d99cb2b45aa02" -> "sha256:67a97fd43e3d98f187fa07ccc36e266550c57c24fad2865ce48c59506458290d" [label=""];
  "sha256:5df6c9ebed76fcd67077621b8be0c3afb2209c94653789e6e63dca9bcede3976" -> "sha256:67a97fd43e3d98f187fa07ccc36e266550c57c24fad2865ce48c59506458290d" [label=""];
  "sha256:67a97fd43e3d98f187fa07ccc36e266550c57c24fad2865ce48c59506458290d" -> "sha256:ce0da2e25bf3767fb6ee74c38ac1a72868882fa254ab84b2c94e2de47e9d671d" [label=""];
  "sha256:ce0da2e25bf3767fb6ee74c38ac1a72868882fa254ab84b2c94e2de47e9d671d" -> "sha256:a615bb9aa350dfa036f5f4d688da746dc983ac141423ac21ec05390cf2bb672e" [label=""];
  "sha256:a615bb9aa350dfa036f5f4d688da746dc983ac141423ac21ec05390cf2bb672e" -> "sha256:11bbc1fa14f39b94b8cca838aa39ba0b314c225d3915794b66e99508a6f68cb7" [label=""];
  "sha256:5df6c9ebed76fcd67077621b8be0c3afb2209c94653789e6e63dca9bcede3976" -> "sha256:11bbc1fa14f39b94b8cca838aa39ba0b314c225d3915794b66e99508a6f68cb7" [label=""];
  "sha256:11bbc1fa14f39b94b8cca838aa39ba0b314c225d3915794b66e99508a6f68cb7" -> "sha256:a72a1ee56871996e07f6f9634528a170a52b85516f1ab8629a6107a48f26625e" [label=""];
  "sha256:a72a1ee56871996e07f6f9634528a170a52b85516f1ab8629a6107a48f26625e" -> "sha256:b0c18de29022a4e53c87716e25b429779797dc776ffa5673342076f7768f2e2a" [label=""];
}

