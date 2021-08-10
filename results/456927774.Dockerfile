[app/sources/456927774.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:d08ccbc9601ec3346bb868f3a137aefd7998eaf2c9eb04f416373d400011cd9b" [label="/bin/sh -c groupadd -g ${GROUP_ID} bitcoin \t&& useradd -u ${USER_ID} -g bitcoin -s /bin/bash -m -d /bitcoin bitcoin" shape="box"];
  "sha256:ad16ba087bb0cd02bf0505101a739dff79219f0ee8971467ffb9caf85a9327ca" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C70EF1F0305A1ADB9986DBD8D46F45428842CE5E &&     echo \"deb http://ppa.launchpad.net/bitcoin/bitcoin/ubuntu xenial main\" > /etc/apt/sources.list.d/bitcoin.list" shape="box"];
  "sha256:536874bbc81a8126197c9f579675fe58ed6dd2b2b72cfdf2464d5407d32c58d7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tbitcoind curl \t&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:c4a727af8f3b3a1877cec0148f6b7af1758a96818794b0c2d4934ee9f1a322bf" [label="/bin/sh -c set -x \t&& apt-get update && apt-get install -y --no-install-recommends \t\tca-certificates \t\twget \t&& wget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)\" \t&& wget -O /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc\" \t&& export GNUPGHOME=\"$(mktemp -d)\" \t&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \t&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu \t&& rm -r \"$GNUPGHOME\" /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu \t&& gosu nobody true \t&& apt-get purge -y \t\tca-certificates \t\twget \t&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:9f36932b8e67cd32b76c9df23c13b32848f341e3f2b2673ab58b91be391ab1d9" [label="local://context" shape="ellipse"];
  "sha256:5d66e9850b38913328470e4de2cee7d0fc2cb69497005c68df8515887a39c30e" [label="copy{src=/bitcoind/bin, dest=/usr/local/bin}" shape="note"];
  "sha256:00baf9b2cb8e15eac9227ad2cf1008a0326e4baec49482bf8c9eec6ac7a9decc" [label="mkdir{path=/bitcoin}" shape="note"];
  "sha256:62b8977588ee065f34268828efce803e846e585c73ed4ec7ac551ced7e7e215e" [label="copy{src=/bitcoind/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:61942ed4c3fcb01605a99b70a9b833913e6170d24a203dee483bf2faa05ae222" [label="sha256:61942ed4c3fcb01605a99b70a9b833913e6170d24a203dee483bf2faa05ae222" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:d08ccbc9601ec3346bb868f3a137aefd7998eaf2c9eb04f416373d400011cd9b" [label=""];
  "sha256:d08ccbc9601ec3346bb868f3a137aefd7998eaf2c9eb04f416373d400011cd9b" -> "sha256:ad16ba087bb0cd02bf0505101a739dff79219f0ee8971467ffb9caf85a9327ca" [label=""];
  "sha256:ad16ba087bb0cd02bf0505101a739dff79219f0ee8971467ffb9caf85a9327ca" -> "sha256:536874bbc81a8126197c9f579675fe58ed6dd2b2b72cfdf2464d5407d32c58d7" [label=""];
  "sha256:536874bbc81a8126197c9f579675fe58ed6dd2b2b72cfdf2464d5407d32c58d7" -> "sha256:c4a727af8f3b3a1877cec0148f6b7af1758a96818794b0c2d4934ee9f1a322bf" [label=""];
  "sha256:c4a727af8f3b3a1877cec0148f6b7af1758a96818794b0c2d4934ee9f1a322bf" -> "sha256:5d66e9850b38913328470e4de2cee7d0fc2cb69497005c68df8515887a39c30e" [label=""];
  "sha256:9f36932b8e67cd32b76c9df23c13b32848f341e3f2b2673ab58b91be391ab1d9" -> "sha256:5d66e9850b38913328470e4de2cee7d0fc2cb69497005c68df8515887a39c30e" [label=""];
  "sha256:5d66e9850b38913328470e4de2cee7d0fc2cb69497005c68df8515887a39c30e" -> "sha256:00baf9b2cb8e15eac9227ad2cf1008a0326e4baec49482bf8c9eec6ac7a9decc" [label=""];
  "sha256:00baf9b2cb8e15eac9227ad2cf1008a0326e4baec49482bf8c9eec6ac7a9decc" -> "sha256:62b8977588ee065f34268828efce803e846e585c73ed4ec7ac551ced7e7e215e" [label=""];
  "sha256:9f36932b8e67cd32b76c9df23c13b32848f341e3f2b2673ab58b91be391ab1d9" -> "sha256:62b8977588ee065f34268828efce803e846e585c73ed4ec7ac551ced7e7e215e" [label=""];
  "sha256:62b8977588ee065f34268828efce803e846e585c73ed4ec7ac551ced7e7e215e" -> "sha256:61942ed4c3fcb01605a99b70a9b833913e6170d24a203dee483bf2faa05ae222" [label=""];
}

