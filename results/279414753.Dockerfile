[app/sources/279414753.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label="/bin/sh -c groupadd -r bitcoin && useradd -r -m -g bitcoin bitcoin" shape="box"];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label="/bin/sh -c set -ex \t&& apt-get update \t&& apt-get install -qq --no-install-recommends ca-certificates dirmngr gosu gpg wget \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:add3c160d2fa8da4c2e8c7c0d5c5ee6da33489327a8c8fe1176c9a49a72ab8fa" [label="/bin/sh -c set -ex \t&& cd /tmp \t&& wget -qO dash.tar.gz \"$DASH_URL\" \t&& echo \"$DASH_SHA256 dash.tar.gz\" | sha256sum -c - \t&& gpg --keyserver keyserver.ubuntu.com --recv-keys \"$DASH_PGP_KEY\" \t&& wget -qO dash.asc \"$DASH_ASC_URL\" \t&& gpg --verify dash.asc \t&& tar -xzvf dash.tar.gz -C /usr/local --strip-components=1 --exclude=*-qt \t&& rm -rf /tmp/*" shape="box"];
  "sha256:520095d440eb27d5f62103252cbf60ec33f387308bea358fd6482b9bce8e8b5d" [label="/bin/sh -c mkdir \"$BITCOIN_DATA\" \t&& chown -R bitcoin:bitcoin \"$BITCOIN_DATA\" \t&& ln -sfn \"$BITCOIN_DATA\" /home/bitcoin/.dashcore \t&& chown -h bitcoin:bitcoin /home/bitcoin/.dashcore" shape="box"];
  "sha256:47b20fe92d2c3274b2439bd46a6e288648dea0637d9e87ec95e44ecfaca93f45" [label="local://context" shape="ellipse"];
  "sha256:f6ae75f8e46617db1c8d9b750cbfeb2b35d9ac60ac29ac057bf2d0928d6caf25" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:33b649053159a154f53d3d24a6032231769554613c9dfec2ccbb6f83c24554a1" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:ecff70e0d000bba632ad24f81baf69e86d968da1a18def2419f743a7cfa8fd84" [label="sha256:ecff70e0d000bba632ad24f81baf69e86d968da1a18def2419f743a7cfa8fd84" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label=""];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" -> "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label=""];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" -> "sha256:add3c160d2fa8da4c2e8c7c0d5c5ee6da33489327a8c8fe1176c9a49a72ab8fa" [label=""];
  "sha256:add3c160d2fa8da4c2e8c7c0d5c5ee6da33489327a8c8fe1176c9a49a72ab8fa" -> "sha256:520095d440eb27d5f62103252cbf60ec33f387308bea358fd6482b9bce8e8b5d" [label=""];
  "sha256:520095d440eb27d5f62103252cbf60ec33f387308bea358fd6482b9bce8e8b5d" -> "sha256:f6ae75f8e46617db1c8d9b750cbfeb2b35d9ac60ac29ac057bf2d0928d6caf25" [label=""];
  "sha256:47b20fe92d2c3274b2439bd46a6e288648dea0637d9e87ec95e44ecfaca93f45" -> "sha256:f6ae75f8e46617db1c8d9b750cbfeb2b35d9ac60ac29ac057bf2d0928d6caf25" [label=""];
  "sha256:f6ae75f8e46617db1c8d9b750cbfeb2b35d9ac60ac29ac057bf2d0928d6caf25" -> "sha256:33b649053159a154f53d3d24a6032231769554613c9dfec2ccbb6f83c24554a1" [label=""];
  "sha256:33b649053159a154f53d3d24a6032231769554613c9dfec2ccbb6f83c24554a1" -> "sha256:ecff70e0d000bba632ad24f81baf69e86d968da1a18def2419f743a7cfa8fd84" [label=""];
}

