[app/sources/279414787.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label="/bin/sh -c groupadd -r bitcoin && useradd -r -m -g bitcoin bitcoin" shape="box"];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label="/bin/sh -c set -ex \t&& apt-get update \t&& apt-get install -qq --no-install-recommends ca-certificates dirmngr gosu gpg wget \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:14cb44906836171f2ee264f94dc09a68e879236b42ee56028015982bd192b8fe" [label="/bin/sh -c set -ex \t&& cd /tmp \t&& wget -qO bitcoin.tar.gz \"$BITCOIN_URL\" \t&& echo \"$BITCOIN_SHA256 bitcoin.tar.gz\" | sha256sum -c - \t&& tar -xzvf bitcoin.tar.gz -C /usr/local --strip-components=1 --exclude=*-qt \t&& rm -rf /tmp/*" shape="box"];
  "sha256:847e4648e0591aecf9cd7ecca80227a8f1963bca7866d8d121ee7fdf604a0d5d" [label="/bin/sh -c mkdir \"$BITCOIN_DATA\" \t&& chown -R bitcoin:bitcoin \"$BITCOIN_DATA\" \t&& ln -sfn \"$BITCOIN_DATA\" /home/bitcoin/.bitcoin \t&& chown -h bitcoin:bitcoin /home/bitcoin/.bitcoin" shape="box"];
  "sha256:a662eb949a2a2ffde4f7854f66284a2e7cbe87cb65c4a5d3ae6bfdfceec9dda9" [label="local://context" shape="ellipse"];
  "sha256:aa411e6062aa8337e41cc45d3e599962595dcedfcaece2915b74766e32015642" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:95e92cf20a162fa538c0489a5ae4e93d881d9a630f508300bb2898ac98f53089" [label="sha256:95e92cf20a162fa538c0489a5ae4e93d881d9a630f508300bb2898ac98f53089" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label=""];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" -> "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label=""];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" -> "sha256:14cb44906836171f2ee264f94dc09a68e879236b42ee56028015982bd192b8fe" [label=""];
  "sha256:14cb44906836171f2ee264f94dc09a68e879236b42ee56028015982bd192b8fe" -> "sha256:847e4648e0591aecf9cd7ecca80227a8f1963bca7866d8d121ee7fdf604a0d5d" [label=""];
  "sha256:847e4648e0591aecf9cd7ecca80227a8f1963bca7866d8d121ee7fdf604a0d5d" -> "sha256:aa411e6062aa8337e41cc45d3e599962595dcedfcaece2915b74766e32015642" [label=""];
  "sha256:a662eb949a2a2ffde4f7854f66284a2e7cbe87cb65c4a5d3ae6bfdfceec9dda9" -> "sha256:aa411e6062aa8337e41cc45d3e599962595dcedfcaece2915b74766e32015642" [label=""];
  "sha256:aa411e6062aa8337e41cc45d3e599962595dcedfcaece2915b74766e32015642" -> "sha256:95e92cf20a162fa538c0489a5ae4e93d881d9a630f508300bb2898ac98f53089" [label=""];
}

