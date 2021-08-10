[app/sources/378836348.Dockerfile]
digraph {
  "sha256:d7e57f9a61db9162896f785bd6c9a539deb76d2c9261ffecc69ae5267ff803c0" [label="local://context" shape="ellipse"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label="/bin/sh -c groupadd -r bitcoin && useradd -r -m -g bitcoin bitcoin" shape="box"];
  "sha256:9e669dca921db4e0f9f808f9238903005d87440835591029ed73c198588a840c" [label="/bin/sh -c set -ex     && apt-get update     && apt-get install -qq --no-install-recommends ca-certificates dirmngr gosu gpg wget procps     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:de02186c26b49793a404a96da2707968e88a244463676d7cbf500c5a1565e48f" [label="/bin/sh -c set -ex     && BITCOIN_ARCHIVE=bitcoin-${BITCOIN_VERSION}-$(uname -m)-linux-gnu.tar.gz     && cd /tmp     && wget -q https://bitcoincore.org/bin/bitcoin-core-${BITCOIN_VERSION}/${BITCOIN_ARCHIVE}     && wget -q https://bitcoincore.org/bin/bitcoin-core-${BITCOIN_VERSION}/SHA256SUMS.asc     && wget -q https://bitcoin.org/laanwj-releases.asc     && SHA256=`grep \"${BITCOIN_ARCHIVE}\" SHA256SUMS.asc | awk '{print $1}'`     && echo \"$SHA256 ${BITCOIN_ARCHIVE}\" | sha256sum -c -     && gpg --no-tty --import ./laanwj-releases.asc     && gpg --no-tty --verify SHA256SUMS.asc     && tar -xzf ${BITCOIN_ARCHIVE} -C /usr/local --strip-components=1 --exclude=*-qt     && rm -rf /tmp/*     && bitcoind --version" shape="box"];
  "sha256:d43f27d972a9c74ab76a1d0d8355f804eeab89580eb1070e82e83633e122e756" [label="/bin/sh -c mkdir \"$BITCOIN_DATA\"     && chown -R bitcoin:bitcoin \"$BITCOIN_DATA\"     && ln -sfn \"$BITCOIN_DATA\" /home/bitcoin/.bitcoin     && chown -h bitcoin:bitcoin /home/bitcoin/.bitcoin" shape="box"];
  "sha256:a5005328f26b280192959a2d8c8c63c9296dfd948025806afc98c78b90b8c4eb" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:bdc747e67934bc62d89d6c90b9cf7233b25a2b226f9da0755e37fdf4bb955262" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:4450ac1ac8d4f3a20fafd85ae5ba4efb534ae3bacab5360e6187397f3224a11f" [label="/bin/sh -c chmod +x start.sh" shape="box"];
  "sha256:b9d6c03f757af2fd34854f1aa76572d0b8ae9ed0b404a31d88364c68bc1587af" [label="sha256:b9d6c03f757af2fd34854f1aa76572d0b8ae9ed0b404a31d88364c68bc1587af" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label=""];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" -> "sha256:9e669dca921db4e0f9f808f9238903005d87440835591029ed73c198588a840c" [label=""];
  "sha256:9e669dca921db4e0f9f808f9238903005d87440835591029ed73c198588a840c" -> "sha256:de02186c26b49793a404a96da2707968e88a244463676d7cbf500c5a1565e48f" [label=""];
  "sha256:de02186c26b49793a404a96da2707968e88a244463676d7cbf500c5a1565e48f" -> "sha256:d43f27d972a9c74ab76a1d0d8355f804eeab89580eb1070e82e83633e122e756" [label=""];
  "sha256:d43f27d972a9c74ab76a1d0d8355f804eeab89580eb1070e82e83633e122e756" -> "sha256:a5005328f26b280192959a2d8c8c63c9296dfd948025806afc98c78b90b8c4eb" [label=""];
  "sha256:d7e57f9a61db9162896f785bd6c9a539deb76d2c9261ffecc69ae5267ff803c0" -> "sha256:a5005328f26b280192959a2d8c8c63c9296dfd948025806afc98c78b90b8c4eb" [label=""];
  "sha256:a5005328f26b280192959a2d8c8c63c9296dfd948025806afc98c78b90b8c4eb" -> "sha256:bdc747e67934bc62d89d6c90b9cf7233b25a2b226f9da0755e37fdf4bb955262" [label=""];
  "sha256:d7e57f9a61db9162896f785bd6c9a539deb76d2c9261ffecc69ae5267ff803c0" -> "sha256:bdc747e67934bc62d89d6c90b9cf7233b25a2b226f9da0755e37fdf4bb955262" [label=""];
  "sha256:bdc747e67934bc62d89d6c90b9cf7233b25a2b226f9da0755e37fdf4bb955262" -> "sha256:4450ac1ac8d4f3a20fafd85ae5ba4efb534ae3bacab5360e6187397f3224a11f" [label=""];
  "sha256:4450ac1ac8d4f3a20fafd85ae5ba4efb534ae3bacab5360e6187397f3224a11f" -> "sha256:b9d6c03f757af2fd34854f1aa76572d0b8ae9ed0b404a31d88364c68bc1587af" [label=""];
}

