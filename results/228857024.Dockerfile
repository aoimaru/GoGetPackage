[app/sources/228857024.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label="/bin/sh -c groupadd -r bitcoin && useradd -r -m -g bitcoin bitcoin" shape="box"];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label="/bin/sh -c set -ex \t&& apt-get update \t&& apt-get install -qq --no-install-recommends ca-certificates dirmngr gosu gpg wget \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ade6c269d23391b92db769ff8a397ec5ab8f65c52d79adbc5ce67c3a9e4ea267" [label="/bin/sh -c set -ex \t&& cd /tmp \t&& wget -qO bitcoin.tar.gz \"$BITCOIN_URL\" \t&& echo \"$BITCOIN_SHA256 bitcoin.tar.gz\" | sha256sum -c - \t&& gpg --keyserver keyserver.ubuntu.com --recv-keys \"$BITCOIN_PGP_KEY\" \t&& wget -qO bitcoin.asc \"$BITCOIN_ASC_URL\" \t&& gpg --verify bitcoin.asc \t&& tar -xzvf bitcoin.tar.gz -C /usr/local --strip-components=1 --exclude=*-qt \t&& rm -rf /tmp/*" shape="box"];
  "sha256:314b53ea5e3c2e753b012b94dfa08e1f0b0a1e44d308bac3bc011b4af799ca29" [label="/bin/sh -c mkdir \"$BITCOIN_DATA\" \t&& chown -R bitcoin:bitcoin \"$BITCOIN_DATA\" \t&& ln -sfn \"$BITCOIN_DATA\" /home/bitcoin/.bitcoin \t&& chown -h bitcoin:bitcoin /home/bitcoin/.bitcoin" shape="box"];
  "sha256:285a40be33471ae9b56294f1a767d74c093d4dd612b3cb528fcca002270c2aaa" [label="local://context" shape="ellipse"];
  "sha256:5174863f116b74026c9e5131da96e3e6f2220e05726a0490218bcea3512a524c" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:c32baa9b371a9ea7c197e68ccb6e80fe70d77ff595626a3a92cd500bc9a62e5f" [label="sha256:c32baa9b371a9ea7c197e68ccb6e80fe70d77ff595626a3a92cd500bc9a62e5f" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label=""];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" -> "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label=""];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" -> "sha256:ade6c269d23391b92db769ff8a397ec5ab8f65c52d79adbc5ce67c3a9e4ea267" [label=""];
  "sha256:ade6c269d23391b92db769ff8a397ec5ab8f65c52d79adbc5ce67c3a9e4ea267" -> "sha256:314b53ea5e3c2e753b012b94dfa08e1f0b0a1e44d308bac3bc011b4af799ca29" [label=""];
  "sha256:314b53ea5e3c2e753b012b94dfa08e1f0b0a1e44d308bac3bc011b4af799ca29" -> "sha256:5174863f116b74026c9e5131da96e3e6f2220e05726a0490218bcea3512a524c" [label=""];
  "sha256:285a40be33471ae9b56294f1a767d74c093d4dd612b3cb528fcca002270c2aaa" -> "sha256:5174863f116b74026c9e5131da96e3e6f2220e05726a0490218bcea3512a524c" [label=""];
  "sha256:5174863f116b74026c9e5131da96e3e6f2220e05726a0490218bcea3512a524c" -> "sha256:c32baa9b371a9ea7c197e68ccb6e80fe70d77ff595626a3a92cd500bc9a62e5f" [label=""];
}

