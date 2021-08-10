[app/sources/279414731.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label="/bin/sh -c groupadd -r bitcoin && useradd -r -m -g bitcoin bitcoin" shape="box"];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label="/bin/sh -c set -ex \t&& apt-get update \t&& apt-get install -qq --no-install-recommends ca-certificates dirmngr gosu gpg wget \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b98231ad06ae83ca53f3af74ef0615cf6eabb8ab5683ec99ca80515f2b45d367" [label="/bin/sh -c set -ex \t&& cd /tmp \t&& wget -qO bitcoin.tar.gz \"$BITCOIN_URL\" \t&& echo \"$BITCOIN_SHA256 bitcoin.tar.gz\" | sha256sum -c - \t&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys \"$BITCOIN_PGP_KEY\" \t&& wget -qO bitcoin.asc \"$BITCOIN_ASC_URL\" \t&& gpg --verify bitcoin.asc \t&& tar -xzvf bitcoin.tar.gz -C /usr/local --strip-components=1 --exclude=*-qt \t&& rm -rf /tmp/*" shape="box"];
  "sha256:ee0840ce9a056890bcb4a69cf4982c30d587b77005046948bead2d11e57e99a0" [label="/bin/sh -c mkdir \"$BITCOIN_DATA\" \t&& chown -R bitcoin:bitcoin \"$BITCOIN_DATA\" \t&& ln -sfn \"$BITCOIN_DATA\" /home/bitcoin/.bitcoin \t&& chown -h bitcoin:bitcoin /home/bitcoin/.bitcoin" shape="box"];
  "sha256:d0425a7511454961729ad31dc34c5149e9db4ff63602750abf806d2e2e78de94" [label="local://context" shape="ellipse"];
  "sha256:4b6f6143a0aebd02351e1e455fbc26e049f95a13ca6b71870854793aad868267" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:fb92c7ed9651c879d5be9356354f0463771621c4ba5153f998a9416171a9f310" [label="sha256:fb92c7ed9651c879d5be9356354f0463771621c4ba5153f998a9416171a9f310" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label=""];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" -> "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label=""];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" -> "sha256:b98231ad06ae83ca53f3af74ef0615cf6eabb8ab5683ec99ca80515f2b45d367" [label=""];
  "sha256:b98231ad06ae83ca53f3af74ef0615cf6eabb8ab5683ec99ca80515f2b45d367" -> "sha256:ee0840ce9a056890bcb4a69cf4982c30d587b77005046948bead2d11e57e99a0" [label=""];
  "sha256:ee0840ce9a056890bcb4a69cf4982c30d587b77005046948bead2d11e57e99a0" -> "sha256:4b6f6143a0aebd02351e1e455fbc26e049f95a13ca6b71870854793aad868267" [label=""];
  "sha256:d0425a7511454961729ad31dc34c5149e9db4ff63602750abf806d2e2e78de94" -> "sha256:4b6f6143a0aebd02351e1e455fbc26e049f95a13ca6b71870854793aad868267" [label=""];
  "sha256:4b6f6143a0aebd02351e1e455fbc26e049f95a13ca6b71870854793aad868267" -> "sha256:fb92c7ed9651c879d5be9356354f0463771621c4ba5153f998a9416171a9f310" [label=""];
}

