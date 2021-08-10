[app/sources/469345705.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label="/bin/sh -c groupadd -r bitcoin && useradd -r -m -g bitcoin bitcoin" shape="box"];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label="/bin/sh -c set -ex \t&& apt-get update \t&& apt-get install -qq --no-install-recommends ca-certificates dirmngr gosu gpg wget \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d2ccd35092d1057daea8c43db2177ed9255d98388cc70e10ef9d70f5345eede6" [label="/bin/sh -c set -ex \t&& cd /tmp \t&& wget -qO bitcoin.tar.gz \"$BITCOIN_URL\" \t&& echo \"$BITCOIN_SHA256 bitcoin.tar.gz\" | sha256sum -c - \t&& tar -xzvf bitcoin.tar.gz -C /usr/local --strip-components=1 --exclude=*-qt \t&& rm -rf /tmp/*" shape="box"];
  "sha256:8e70901e3072e5d5ee3d2c15b45f4f2fd81768cadf00fae93e3cf4fe5e3274cb" [label="/bin/sh -c mkdir \"$BITCOIN_DATA\" \t&& chown -R bitcoin:bitcoin \"$BITCOIN_DATA\" \t&& ln -sfn \"$BITCOIN_DATA\" /home/bitcoin/.bitcoin \t&& chown -h bitcoin:bitcoin /home/bitcoin/.bitcoin" shape="box"];
  "sha256:7c395f3d4511a51ab83154238a2e40e1eafbdaa736519f39095cf146ead41289" [label="local://context" shape="ellipse"];
  "sha256:4156743d788cee6805f55410994a7233e3470e37afa0a8c8103e66e1d7c58f17" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:2fdf2d0bc55cc82ce0090a1bbd37733bef28843d266bc5fd854452eb58688c6f" [label="sha256:2fdf2d0bc55cc82ce0090a1bbd37733bef28843d266bc5fd854452eb58688c6f" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label=""];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" -> "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label=""];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" -> "sha256:d2ccd35092d1057daea8c43db2177ed9255d98388cc70e10ef9d70f5345eede6" [label=""];
  "sha256:d2ccd35092d1057daea8c43db2177ed9255d98388cc70e10ef9d70f5345eede6" -> "sha256:8e70901e3072e5d5ee3d2c15b45f4f2fd81768cadf00fae93e3cf4fe5e3274cb" [label=""];
  "sha256:8e70901e3072e5d5ee3d2c15b45f4f2fd81768cadf00fae93e3cf4fe5e3274cb" -> "sha256:4156743d788cee6805f55410994a7233e3470e37afa0a8c8103e66e1d7c58f17" [label=""];
  "sha256:7c395f3d4511a51ab83154238a2e40e1eafbdaa736519f39095cf146ead41289" -> "sha256:4156743d788cee6805f55410994a7233e3470e37afa0a8c8103e66e1d7c58f17" [label=""];
  "sha256:4156743d788cee6805f55410994a7233e3470e37afa0a8c8103e66e1d7c58f17" -> "sha256:2fdf2d0bc55cc82ce0090a1bbd37733bef28843d266bc5fd854452eb58688c6f" [label=""];
}

