[app/sources/276002636.Dockerfile]
digraph {
  "sha256:67bb61603c0ddfeb685793773fdeaf230993dd90278a6f7adf3ff8bd92f6a297" [label="docker-image://docker.io/library/openjdk:8u151-jre-alpine" shape="ellipse"];
  "sha256:6563c8d82c0ff2babb082532c8761a8083488385b526ac2969001feca687be1b" [label="/bin/sh -c apk --no-cache add busybox-suid bash curl sudo  && adduser -h /home/appuser -s /bin/bash -D -u 1025 appuser wheel  && echo \"appuser ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers  && sed -i \"s/.*requiretty$/Defaults !requiretty/\" /etc/sudoers  && apk del busybox-suid  && rm -rf /tmp/* /var/cache/apk/*" shape="box"];
  "sha256:8dff863628211cc5685eeb1d5132191e801b57339cb3dc404ad5439836c07309" [label="mkdir{path=/home/appuser}" shape="note"];
  "sha256:4b4d445198ea2a598fdfb3fb0b9f16ec49d1209e8db2fb8c9f6d009394729675" [label="local://context" shape="ellipse"];
  "sha256:0e6ec3a798e3481d128d9d60f6806b5131a26819d89e863441920affd4a4e820" [label="copy{src=/target/*.jar, dest=/home/appuser/app.jar}" shape="note"];
  "sha256:c807d47093a6b386abb5860d1eace4e460dbd81cc7cc9298b65ba414efa6cc89" [label="sha256:c807d47093a6b386abb5860d1eace4e460dbd81cc7cc9298b65ba414efa6cc89" shape="plaintext"];
  "sha256:67bb61603c0ddfeb685793773fdeaf230993dd90278a6f7adf3ff8bd92f6a297" -> "sha256:6563c8d82c0ff2babb082532c8761a8083488385b526ac2969001feca687be1b" [label=""];
  "sha256:6563c8d82c0ff2babb082532c8761a8083488385b526ac2969001feca687be1b" -> "sha256:8dff863628211cc5685eeb1d5132191e801b57339cb3dc404ad5439836c07309" [label=""];
  "sha256:8dff863628211cc5685eeb1d5132191e801b57339cb3dc404ad5439836c07309" -> "sha256:0e6ec3a798e3481d128d9d60f6806b5131a26819d89e863441920affd4a4e820" [label=""];
  "sha256:4b4d445198ea2a598fdfb3fb0b9f16ec49d1209e8db2fb8c9f6d009394729675" -> "sha256:0e6ec3a798e3481d128d9d60f6806b5131a26819d89e863441920affd4a4e820" [label=""];
  "sha256:0e6ec3a798e3481d128d9d60f6806b5131a26819d89e863441920affd4a4e820" -> "sha256:c807d47093a6b386abb5860d1eace4e460dbd81cc7cc9298b65ba414efa6cc89" [label=""];
}

