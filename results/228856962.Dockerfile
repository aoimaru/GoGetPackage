[app/sources/228856962.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label="/bin/sh -c groupadd -r bitcoin && useradd -r -m -g bitcoin bitcoin" shape="box"];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label="/bin/sh -c set -ex \t&& apt-get update \t&& apt-get install -qq --no-install-recommends ca-certificates dirmngr gosu gpg wget \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1887141a93239f6b688d089482153975e6c358dc74a7e33e50044be915703a95" [label="/bin/sh -c set -ex \t&& cd /tmp \t&& wget -qO bitcoin.tar.gz \"$BITCOIN_URL\" \t&& echo \"$BITCOIN_SHA256 bitcoin.tar.gz\" | sha256sum -c - \t&& tar -xzvf bitcoin.tar.gz -C /usr/local --strip-components=1 --exclude=*-qt \t&& rm -rf /tmp/*" shape="box"];
  "sha256:0bfa6c0f5b99941065eb3cc95d36679e689b2c525e9ea387d64b89550fcf1db6" [label="/bin/sh -c mkdir \"$BITCOIN_DATA\" \t&& chown -R bitcoin:bitcoin \"$BITCOIN_DATA\" \t&& ln -sfn \"$BITCOIN_DATA\" /home/bitcoin/.bitcoin \t&& chown -h bitcoin:bitcoin /home/bitcoin/.bitcoin" shape="box"];
  "sha256:4937f723ec6253c08dac0881f249aecbbda6d56c77d0dc9612bf9ee42923123f" [label="local://context" shape="ellipse"];
  "sha256:d6a6db6d9047db1e76c2fe578588103da9bd819b932ef5fbc352d525cf8612df" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:a4dbd46568f646b9ce5dfee824105dafb9870dfae2fc15e9b60bde56a11d83ab" [label="sha256:a4dbd46568f646b9ce5dfee824105dafb9870dfae2fc15e9b60bde56a11d83ab" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label=""];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" -> "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label=""];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" -> "sha256:1887141a93239f6b688d089482153975e6c358dc74a7e33e50044be915703a95" [label=""];
  "sha256:1887141a93239f6b688d089482153975e6c358dc74a7e33e50044be915703a95" -> "sha256:0bfa6c0f5b99941065eb3cc95d36679e689b2c525e9ea387d64b89550fcf1db6" [label=""];
  "sha256:0bfa6c0f5b99941065eb3cc95d36679e689b2c525e9ea387d64b89550fcf1db6" -> "sha256:d6a6db6d9047db1e76c2fe578588103da9bd819b932ef5fbc352d525cf8612df" [label=""];
  "sha256:4937f723ec6253c08dac0881f249aecbbda6d56c77d0dc9612bf9ee42923123f" -> "sha256:d6a6db6d9047db1e76c2fe578588103da9bd819b932ef5fbc352d525cf8612df" [label=""];
  "sha256:d6a6db6d9047db1e76c2fe578588103da9bd819b932ef5fbc352d525cf8612df" -> "sha256:a4dbd46568f646b9ce5dfee824105dafb9870dfae2fc15e9b60bde56a11d83ab" [label=""];
}

