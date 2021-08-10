[app/sources/279414647.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label="/bin/sh -c groupadd -r bitcoin && useradd -r -m -g bitcoin bitcoin" shape="box"];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label="/bin/sh -c set -ex \t&& apt-get update \t&& apt-get install -qq --no-install-recommends ca-certificates dirmngr gosu gpg wget \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4691b3b90e0b0e5f16809caffa84feaeecf3c679749d38be561e706394c19f8c" [label="/bin/sh -c set -ex \t&& cd /tmp \t&& wget -qO bitcoin.tar.gz \"$BITCOIN_URL\" \t&& echo \"$BITCOIN_SHA256 bitcoin.tar.gz\" | sha256sum -c - \t&& tar -xzvf bitcoin.tar.gz -C /usr/local --strip-components=1 --exclude=*-qt \t&& rm -rf /tmp/*" shape="box"];
  "sha256:63e42028ea73dcbe236965033518007153470e38e298cd8bab7bf04020fe71a8" [label="/bin/sh -c mkdir \"$BITCOIN_DATA\" \t&& chown -R bitcoin:bitcoin \"$BITCOIN_DATA\" \t&& ln -sfn \"$BITCOIN_DATA\" /home/bitcoin/.bitcoin \t&& chown -h bitcoin:bitcoin /home/bitcoin/.bitcoin" shape="box"];
  "sha256:8a2396357417a46c37a849c1bd636bc604b4663c27ee73c85bf9e030887e2e26" [label="local://context" shape="ellipse"];
  "sha256:320b69e373c0dcee6c07477d82674394c223fcaa786814a686e4c390da25a958" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:79e64f014013cac3e4d5c37e8efa67bd010b12cdd40854974a798498583425fc" [label="sha256:79e64f014013cac3e4d5c37e8efa67bd010b12cdd40854974a798498583425fc" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label=""];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" -> "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label=""];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" -> "sha256:4691b3b90e0b0e5f16809caffa84feaeecf3c679749d38be561e706394c19f8c" [label=""];
  "sha256:4691b3b90e0b0e5f16809caffa84feaeecf3c679749d38be561e706394c19f8c" -> "sha256:63e42028ea73dcbe236965033518007153470e38e298cd8bab7bf04020fe71a8" [label=""];
  "sha256:63e42028ea73dcbe236965033518007153470e38e298cd8bab7bf04020fe71a8" -> "sha256:320b69e373c0dcee6c07477d82674394c223fcaa786814a686e4c390da25a958" [label=""];
  "sha256:8a2396357417a46c37a849c1bd636bc604b4663c27ee73c85bf9e030887e2e26" -> "sha256:320b69e373c0dcee6c07477d82674394c223fcaa786814a686e4c390da25a958" [label=""];
  "sha256:320b69e373c0dcee6c07477d82674394c223fcaa786814a686e4c390da25a958" -> "sha256:79e64f014013cac3e4d5c37e8efa67bd010b12cdd40854974a798498583425fc" [label=""];
}

