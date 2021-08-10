[app/sources/356942470.Dockerfile]
digraph {
  "sha256:8f7131422ae65af94520d7f91e45ef19c9e8e38f1999bf3d211ff9471aded9f0" [label="local://context" shape="ellipse"];
  "sha256:3b84f5f5156aebf58105c34e2d22ed206d0aabe91aa269441aeb27b5cbb1b0c0" [label="https://dl.bintray.com/mitchellh/consul/0.5.2_linux_amd64.zip" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:43b5977ea13bf5db0aebdd0f8f1d786a108d6bec1a94df171bf7833020f4f6ff" [label="/bin/sh -c apk -Uuv add groff less python py-pip &&     pip install awscli &&     pip install boto &&     apk --purge -v del py-pip &&     rm /var/cache/apk/*" shape="box"];
  "sha256:e3115df974bc621236d67b64c8379ff294baeede34da6d80bf9660ba9ebb13e3" [label="/bin/sh -c apk --update add curl ca-certificates &&     curl -Ls https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-2.21-r2.apk > /tmp/glibc-2.21-r2.apk &&     apk add --allow-untrusted /tmp/glibc-2.21-r2.apk &&     rm -rf /tmp/glibc-2.21-r2.apk /var/cache/apk/*" shape="box"];
  "sha256:00ab7783f7581b70c409a7700b4176b4a813e66581b803bb3042955d5873e1e6" [label="copy{src=/0.5.2_linux_amd64.zip, dest=/tmp/consul.zip}" shape="note"];
  "sha256:b2a538593274323c6de4bac1ad78daaf67777e1b6019fd161886240f63f3aebd" [label="/bin/sh -c unzip /tmp/consul.zip     && chmod +x consul     && rm /tmp/consul.zip" shape="box"];
  "sha256:3427cdc73f8a4bcf9ee5c901979eb42938241c3cf97b94e9600455730a503c41" [label="copy{src=/handler.py, dest=/}" shape="note"];
  "sha256:d1f7c8300067d6e24f7382939405fe71dbefdcad785bbcb03e5f1b06de421e55" [label="copy{src=/start, dest=/}" shape="note"];
  "sha256:ebecaa20ebb758af774b02268ef3f68f9914acbf7c5fcb925c12646a48e21ca4" [label="sha256:ebecaa20ebb758af774b02268ef3f68f9914acbf7c5fcb925c12646a48e21ca4" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:43b5977ea13bf5db0aebdd0f8f1d786a108d6bec1a94df171bf7833020f4f6ff" [label=""];
  "sha256:43b5977ea13bf5db0aebdd0f8f1d786a108d6bec1a94df171bf7833020f4f6ff" -> "sha256:e3115df974bc621236d67b64c8379ff294baeede34da6d80bf9660ba9ebb13e3" [label=""];
  "sha256:e3115df974bc621236d67b64c8379ff294baeede34da6d80bf9660ba9ebb13e3" -> "sha256:00ab7783f7581b70c409a7700b4176b4a813e66581b803bb3042955d5873e1e6" [label=""];
  "sha256:3b84f5f5156aebf58105c34e2d22ed206d0aabe91aa269441aeb27b5cbb1b0c0" -> "sha256:00ab7783f7581b70c409a7700b4176b4a813e66581b803bb3042955d5873e1e6" [label=""];
  "sha256:00ab7783f7581b70c409a7700b4176b4a813e66581b803bb3042955d5873e1e6" -> "sha256:b2a538593274323c6de4bac1ad78daaf67777e1b6019fd161886240f63f3aebd" [label=""];
  "sha256:b2a538593274323c6de4bac1ad78daaf67777e1b6019fd161886240f63f3aebd" -> "sha256:3427cdc73f8a4bcf9ee5c901979eb42938241c3cf97b94e9600455730a503c41" [label=""];
  "sha256:8f7131422ae65af94520d7f91e45ef19c9e8e38f1999bf3d211ff9471aded9f0" -> "sha256:3427cdc73f8a4bcf9ee5c901979eb42938241c3cf97b94e9600455730a503c41" [label=""];
  "sha256:3427cdc73f8a4bcf9ee5c901979eb42938241c3cf97b94e9600455730a503c41" -> "sha256:d1f7c8300067d6e24f7382939405fe71dbefdcad785bbcb03e5f1b06de421e55" [label=""];
  "sha256:8f7131422ae65af94520d7f91e45ef19c9e8e38f1999bf3d211ff9471aded9f0" -> "sha256:d1f7c8300067d6e24f7382939405fe71dbefdcad785bbcb03e5f1b06de421e55" [label=""];
  "sha256:d1f7c8300067d6e24f7382939405fe71dbefdcad785bbcb03e5f1b06de421e55" -> "sha256:ebecaa20ebb758af774b02268ef3f68f9914acbf7c5fcb925c12646a48e21ca4" [label=""];
}

