[app/sources/254831037.Dockerfile]
digraph {
  "sha256:2991c7c2de3c7e201fa1ffc27bcdc00b8ce4fe62366925cd240befeb68786b7b" [label="local://context" shape="ellipse"];
  "sha256:223b38df4bc678adf4f058bf435db86dda86dacb8d1a185042c512233e5be0b9" [label="docker-image://docker.io/snapcraft/ubuntu-base:arm64-16.04.2" shape="ellipse"];
  "sha256:00c4dc09880c1a3747075fca98124332642545b7ec7a78297688ed5da6707a45" [label="copy{src=/qemu-aarch64-static, dest=/usr/bin/qemu-aarch64-static}" shape="note"];
  "sha256:f8ce38a249e6b06206e1c03f5e5db7be9da4eb2781bf7558fd1e067a5d7c80a2" [label="/bin/sh -c sed -i \"/^# deb.*universe/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:a7cbed917c46ab1d891d8130e14b44df71d617c55ff7ded983e4d833382f44c4" [label="/bin/sh -c sed -i \"/^# deb.*multiverse/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:3519bd72955492789e86c59a527d5a2e1b914a257642a756343918497f41c217" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:fcd20a3507834f6e78b52a78c288097108e7b3847d89a9bc293ac8ceed959e67" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:43ab7bbf70aa308d58cf4be7fb49fb32112236501b163f9bd26bd31def83f314" [label="/bin/sh -c apt-get install -y --no-install-recommends         devscripts         equivs         git \tca-certificates \tcurl" shape="box"];
  "sha256:b47f3c401786a76a802ca7a51bd628d5c4789ecf5b54a22ee703ff3f6ebdfff5" [label="/bin/sh -c git clone --depth 1 --branch ${SNAPCRAFT_VERSION} https://github.com/snapcore/snapcraft" shape="box"];
  "sha256:f565f0f8db9cf4bb39c7885679972167eafec5a0640e974de54ab0917d67049d" [label="/bin/sh -c cd snapcraft  && echo \"override_dh_auto_test:\" >> debian/rules  && mk-build-deps debian/control -i --tool 'apt-get -y --no-install-recommends'  && dpkg-buildpackage -us -uc" shape="box"];
  "sha256:84f4ed64125cbdd5237e863765b23dcebaf9f7c981fe685ad1ca8008e3c2d942" [label="/bin/sh -c apt-get install -y ./*.deb  && apt-get remove --purge -y devscripts equivs git python3-fixtures python3-responses python3-setuptools python3-testscenarios python3-testtools  && apt-get autoremove -y  && apt-get clean -y" shape="box"];
  "sha256:523fec0aabce5257c99e8efe0c2956d5b8aeda14f85b776da72ea6f52564c286" [label="/bin/sh -c rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:bc70e275329f467b7bd630557a5beb14b6a57dd7627d4ab006331b18853f2254" [label="/bin/sh -c apt-get install -y sudo" shape="box"];
  "sha256:752c79422ba1f1001220c90b74b6f866c0d927d2b20b8dda986ad3759ef3c398" [label="/bin/sh -c echo \"ALL ALL=NOPASSWD: /usr/bin/apt-get,/usr/bin/apt-mark\" >> /etc/sudoers.d/apt-get  && chmod 0440 /etc/sudoers.d/apt-get" shape="box"];
  "sha256:ca5f0a2a4157a5a30744259d60e9cb44974eacae1173b66a83b9885d06838b8e" [label="/bin/sh -c for i in $(seq 500 1100); do echo snapper:x:$i:100:a build user:/build:/bin/bash ; done | tee -a /etc/passwd" shape="box"];
  "sha256:50be8a7d6aa689c1c69e14e1aa001dfc0fb76fd4835cb46166af9c9d795b46b8" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:d16bb3533ffde144fea008db07c1452f3dcee0fae97a0715a0094217192cec06" [label="/bin/sh -c chgrp -R 100 /home  && chmod g+rwx /home" shape="box"];
  "sha256:9a78da71e087209da7098ca8515a1fa903436ca7e86d0712c5bb0675a605b925" [label="mkdir{path=/build}" shape="note"];
  "sha256:66b9f6a65b974874e3cc0400200a06dd04daf608f39640a504bfcb231737feee" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:663c811c41b79dfd64a30a3fe2e8b9d537b9556b1dd8186723ff30e6916f2324" [label="/bin/sh -c chmod 755 /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:d9cabd7237b0cc2d1325b5d54cda4bceb796223f89867c80da95df8ad8b1e19a" [label="sha256:d9cabd7237b0cc2d1325b5d54cda4bceb796223f89867c80da95df8ad8b1e19a" shape="plaintext"];
  "sha256:223b38df4bc678adf4f058bf435db86dda86dacb8d1a185042c512233e5be0b9" -> "sha256:00c4dc09880c1a3747075fca98124332642545b7ec7a78297688ed5da6707a45" [label=""];
  "sha256:2991c7c2de3c7e201fa1ffc27bcdc00b8ce4fe62366925cd240befeb68786b7b" -> "sha256:00c4dc09880c1a3747075fca98124332642545b7ec7a78297688ed5da6707a45" [label=""];
  "sha256:00c4dc09880c1a3747075fca98124332642545b7ec7a78297688ed5da6707a45" -> "sha256:f8ce38a249e6b06206e1c03f5e5db7be9da4eb2781bf7558fd1e067a5d7c80a2" [label=""];
  "sha256:f8ce38a249e6b06206e1c03f5e5db7be9da4eb2781bf7558fd1e067a5d7c80a2" -> "sha256:a7cbed917c46ab1d891d8130e14b44df71d617c55ff7ded983e4d833382f44c4" [label=""];
  "sha256:a7cbed917c46ab1d891d8130e14b44df71d617c55ff7ded983e4d833382f44c4" -> "sha256:3519bd72955492789e86c59a527d5a2e1b914a257642a756343918497f41c217" [label=""];
  "sha256:3519bd72955492789e86c59a527d5a2e1b914a257642a756343918497f41c217" -> "sha256:fcd20a3507834f6e78b52a78c288097108e7b3847d89a9bc293ac8ceed959e67" [label=""];
  "sha256:fcd20a3507834f6e78b52a78c288097108e7b3847d89a9bc293ac8ceed959e67" -> "sha256:43ab7bbf70aa308d58cf4be7fb49fb32112236501b163f9bd26bd31def83f314" [label=""];
  "sha256:43ab7bbf70aa308d58cf4be7fb49fb32112236501b163f9bd26bd31def83f314" -> "sha256:b47f3c401786a76a802ca7a51bd628d5c4789ecf5b54a22ee703ff3f6ebdfff5" [label=""];
  "sha256:b47f3c401786a76a802ca7a51bd628d5c4789ecf5b54a22ee703ff3f6ebdfff5" -> "sha256:f565f0f8db9cf4bb39c7885679972167eafec5a0640e974de54ab0917d67049d" [label=""];
  "sha256:f565f0f8db9cf4bb39c7885679972167eafec5a0640e974de54ab0917d67049d" -> "sha256:84f4ed64125cbdd5237e863765b23dcebaf9f7c981fe685ad1ca8008e3c2d942" [label=""];
  "sha256:84f4ed64125cbdd5237e863765b23dcebaf9f7c981fe685ad1ca8008e3c2d942" -> "sha256:523fec0aabce5257c99e8efe0c2956d5b8aeda14f85b776da72ea6f52564c286" [label=""];
  "sha256:523fec0aabce5257c99e8efe0c2956d5b8aeda14f85b776da72ea6f52564c286" -> "sha256:bc70e275329f467b7bd630557a5beb14b6a57dd7627d4ab006331b18853f2254" [label=""];
  "sha256:bc70e275329f467b7bd630557a5beb14b6a57dd7627d4ab006331b18853f2254" -> "sha256:752c79422ba1f1001220c90b74b6f866c0d927d2b20b8dda986ad3759ef3c398" [label=""];
  "sha256:752c79422ba1f1001220c90b74b6f866c0d927d2b20b8dda986ad3759ef3c398" -> "sha256:ca5f0a2a4157a5a30744259d60e9cb44974eacae1173b66a83b9885d06838b8e" [label=""];
  "sha256:ca5f0a2a4157a5a30744259d60e9cb44974eacae1173b66a83b9885d06838b8e" -> "sha256:50be8a7d6aa689c1c69e14e1aa001dfc0fb76fd4835cb46166af9c9d795b46b8" [label=""];
  "sha256:50be8a7d6aa689c1c69e14e1aa001dfc0fb76fd4835cb46166af9c9d795b46b8" -> "sha256:d16bb3533ffde144fea008db07c1452f3dcee0fae97a0715a0094217192cec06" [label=""];
  "sha256:d16bb3533ffde144fea008db07c1452f3dcee0fae97a0715a0094217192cec06" -> "sha256:9a78da71e087209da7098ca8515a1fa903436ca7e86d0712c5bb0675a605b925" [label=""];
  "sha256:9a78da71e087209da7098ca8515a1fa903436ca7e86d0712c5bb0675a605b925" -> "sha256:66b9f6a65b974874e3cc0400200a06dd04daf608f39640a504bfcb231737feee" [label=""];
  "sha256:2991c7c2de3c7e201fa1ffc27bcdc00b8ce4fe62366925cd240befeb68786b7b" -> "sha256:66b9f6a65b974874e3cc0400200a06dd04daf608f39640a504bfcb231737feee" [label=""];
  "sha256:66b9f6a65b974874e3cc0400200a06dd04daf608f39640a504bfcb231737feee" -> "sha256:663c811c41b79dfd64a30a3fe2e8b9d537b9556b1dd8186723ff30e6916f2324" [label=""];
  "sha256:663c811c41b79dfd64a30a3fe2e8b9d537b9556b1dd8186723ff30e6916f2324" -> "sha256:d9cabd7237b0cc2d1325b5d54cda4bceb796223f89867c80da95df8ad8b1e19a" [label=""];
}

