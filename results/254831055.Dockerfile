[app/sources/254831055.Dockerfile]
digraph {
  "sha256:9a193d975deb95380cca6fd3d430d723b57dbac752755b07f4850d0deefe7c71" [label="docker-image://docker.io/snapcraft/ubuntu-base:armhf-16.04.1" shape="ellipse"];
  "sha256:a235ea37266a745878bc5282f00e4e7cd2a23ee42dddb32c0dd922195872ad85" [label="local://context" shape="ellipse"];
  "sha256:e2e820c8ea56cf82bc5d5d16f5e1c7c10131b5af03a726488f546333b7a19c4d" [label="copy{src=/qemu-arm-static, dest=/usr/bin/qemu-arm-static}" shape="note"];
  "sha256:e7aff994be6f30ee398d245c497b229827947eee849a9e2e46534534eeff87a2" [label="/bin/sh -c sed -i \"/^# deb.*universe/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:81d456f788b652e0dbdfd6985545814d344c4df35676a03813f1ee531c9321c1" [label="/bin/sh -c sed -i \"/^# deb.*multiverse/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:0318425b0364661b4e9ec21b2b40d404f763d38b2ff33a23ed724a17c9818794" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:9c1e34f21d28e4b229b14aaba37b67c9ec2dad9582045b8a6e8697aaa54915d4" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:b49dfd3bdd9b56a15ec6adfb8d435140a152679ea9962629378fe43e96ab63a7" [label="/bin/sh -c apt-get install -y --no-install-recommends         devscripts         equivs         git \tca-certificates \tcurl" shape="box"];
  "sha256:e44310a0630737f8758bc7c04a37636cab2d4e2466cd6e751768b61e11b14621" [label="/bin/sh -c git clone --depth 1 --branch ${SNAPCRAFT_VERSION} https://github.com/snapcore/snapcraft" shape="box"];
  "sha256:63784376265ea7a52ab6467137e8183f971a9b0d83736dd3779bad6753f28637" [label="/bin/sh -c cd snapcraft  && echo \"override_dh_auto_test:\" >> debian/rules  && mk-build-deps debian/control -i --tool 'apt-get -y --no-install-recommends'  && dpkg-buildpackage -us -uc" shape="box"];
  "sha256:212ba38766c54a23c890e3122e0e577c6ef6484cfa41aa9a8c8c13781c43196a" [label="/bin/sh -c apt-get install -y ./*.deb  && apt-get remove --purge -y devscripts equivs git python3-fixtures python3-responses python3-setuptools python3-testscenarios python3-testtools  && apt-get autoremove -y  && apt-get clean -y" shape="box"];
  "sha256:c2db031885dc3851d390a533a8aa6eca007b52fe10af5eddba8054ac1902963a" [label="/bin/sh -c rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:6c2acaf661d8b92a5170e5af50094a041379979bfa075bd9070e5209b55215a9" [label="/bin/sh -c apt-get install -y sudo" shape="box"];
  "sha256:0860539858d96b17405a9f870409bc80115513f7dd58618a7863be6b50d86605" [label="/bin/sh -c echo \"ALL ALL=NOPASSWD: /usr/bin/apt-get\" >> /etc/sudoers.d/apt-get  && chmod 0440 /etc/sudoers.d/apt-get" shape="box"];
  "sha256:912064ac6588720739b54d62ffc6f056af841a7d5663a5a50da8f05165c04c32" [label="/bin/sh -c for i in $(seq 500 1100); do echo snapper:x:$i:100:a build user:/build:/bin/bash ; done | tee -a /etc/passwd" shape="box"];
  "sha256:23b4fe6eb6e191051675fa4268a00cf0ddf0f8fdf455352ec0a2eef0aa965bf6" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:9b07b8bc76691e440b292aff8f186a8a2208643305d50a7bd2484906e3ae0c38" [label="/bin/sh -c chgrp -R 100 /home  && chmod g+rwx /home" shape="box"];
  "sha256:a6e590435a3609f23c621753d042840da3dbfb70eceaf18c3803cfda40483ba6" [label="mkdir{path=/build}" shape="note"];
  "sha256:c8925b22a639b82abe4075bc3bd3f5e780c251bd8f9af0d25414b42b3e9e484e" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:26f85154f30dd3a80d7a4d0b2b5814d57db0c54ec47d0f396f6bf135216fbca8" [label="/bin/sh -c chmod 755 /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:c85daed16810c8303b70fcc3e6e53ee41eaa12105e5212d78e54fbe68681e426" [label="sha256:c85daed16810c8303b70fcc3e6e53ee41eaa12105e5212d78e54fbe68681e426" shape="plaintext"];
  "sha256:9a193d975deb95380cca6fd3d430d723b57dbac752755b07f4850d0deefe7c71" -> "sha256:e2e820c8ea56cf82bc5d5d16f5e1c7c10131b5af03a726488f546333b7a19c4d" [label=""];
  "sha256:a235ea37266a745878bc5282f00e4e7cd2a23ee42dddb32c0dd922195872ad85" -> "sha256:e2e820c8ea56cf82bc5d5d16f5e1c7c10131b5af03a726488f546333b7a19c4d" [label=""];
  "sha256:e2e820c8ea56cf82bc5d5d16f5e1c7c10131b5af03a726488f546333b7a19c4d" -> "sha256:e7aff994be6f30ee398d245c497b229827947eee849a9e2e46534534eeff87a2" [label=""];
  "sha256:e7aff994be6f30ee398d245c497b229827947eee849a9e2e46534534eeff87a2" -> "sha256:81d456f788b652e0dbdfd6985545814d344c4df35676a03813f1ee531c9321c1" [label=""];
  "sha256:81d456f788b652e0dbdfd6985545814d344c4df35676a03813f1ee531c9321c1" -> "sha256:0318425b0364661b4e9ec21b2b40d404f763d38b2ff33a23ed724a17c9818794" [label=""];
  "sha256:0318425b0364661b4e9ec21b2b40d404f763d38b2ff33a23ed724a17c9818794" -> "sha256:9c1e34f21d28e4b229b14aaba37b67c9ec2dad9582045b8a6e8697aaa54915d4" [label=""];
  "sha256:9c1e34f21d28e4b229b14aaba37b67c9ec2dad9582045b8a6e8697aaa54915d4" -> "sha256:b49dfd3bdd9b56a15ec6adfb8d435140a152679ea9962629378fe43e96ab63a7" [label=""];
  "sha256:b49dfd3bdd9b56a15ec6adfb8d435140a152679ea9962629378fe43e96ab63a7" -> "sha256:e44310a0630737f8758bc7c04a37636cab2d4e2466cd6e751768b61e11b14621" [label=""];
  "sha256:e44310a0630737f8758bc7c04a37636cab2d4e2466cd6e751768b61e11b14621" -> "sha256:63784376265ea7a52ab6467137e8183f971a9b0d83736dd3779bad6753f28637" [label=""];
  "sha256:63784376265ea7a52ab6467137e8183f971a9b0d83736dd3779bad6753f28637" -> "sha256:212ba38766c54a23c890e3122e0e577c6ef6484cfa41aa9a8c8c13781c43196a" [label=""];
  "sha256:212ba38766c54a23c890e3122e0e577c6ef6484cfa41aa9a8c8c13781c43196a" -> "sha256:c2db031885dc3851d390a533a8aa6eca007b52fe10af5eddba8054ac1902963a" [label=""];
  "sha256:c2db031885dc3851d390a533a8aa6eca007b52fe10af5eddba8054ac1902963a" -> "sha256:6c2acaf661d8b92a5170e5af50094a041379979bfa075bd9070e5209b55215a9" [label=""];
  "sha256:6c2acaf661d8b92a5170e5af50094a041379979bfa075bd9070e5209b55215a9" -> "sha256:0860539858d96b17405a9f870409bc80115513f7dd58618a7863be6b50d86605" [label=""];
  "sha256:0860539858d96b17405a9f870409bc80115513f7dd58618a7863be6b50d86605" -> "sha256:912064ac6588720739b54d62ffc6f056af841a7d5663a5a50da8f05165c04c32" [label=""];
  "sha256:912064ac6588720739b54d62ffc6f056af841a7d5663a5a50da8f05165c04c32" -> "sha256:23b4fe6eb6e191051675fa4268a00cf0ddf0f8fdf455352ec0a2eef0aa965bf6" [label=""];
  "sha256:23b4fe6eb6e191051675fa4268a00cf0ddf0f8fdf455352ec0a2eef0aa965bf6" -> "sha256:9b07b8bc76691e440b292aff8f186a8a2208643305d50a7bd2484906e3ae0c38" [label=""];
  "sha256:9b07b8bc76691e440b292aff8f186a8a2208643305d50a7bd2484906e3ae0c38" -> "sha256:a6e590435a3609f23c621753d042840da3dbfb70eceaf18c3803cfda40483ba6" [label=""];
  "sha256:a6e590435a3609f23c621753d042840da3dbfb70eceaf18c3803cfda40483ba6" -> "sha256:c8925b22a639b82abe4075bc3bd3f5e780c251bd8f9af0d25414b42b3e9e484e" [label=""];
  "sha256:a235ea37266a745878bc5282f00e4e7cd2a23ee42dddb32c0dd922195872ad85" -> "sha256:c8925b22a639b82abe4075bc3bd3f5e780c251bd8f9af0d25414b42b3e9e484e" [label=""];
  "sha256:c8925b22a639b82abe4075bc3bd3f5e780c251bd8f9af0d25414b42b3e9e484e" -> "sha256:26f85154f30dd3a80d7a4d0b2b5814d57db0c54ec47d0f396f6bf135216fbca8" [label=""];
  "sha256:26f85154f30dd3a80d7a4d0b2b5814d57db0c54ec47d0f396f6bf135216fbca8" -> "sha256:c85daed16810c8303b70fcc3e6e53ee41eaa12105e5212d78e54fbe68681e426" [label=""];
}

