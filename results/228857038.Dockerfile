[app/sources/228857038.Dockerfile]
digraph {
  "sha256:6751832886ec8f38a4ffc6dbb5fda1d9d506f3c04d1894934af15458e1bbd559" [label="local://context" shape="ellipse"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label="/bin/sh -c groupadd -r bitcoin && useradd -r -m -g bitcoin bitcoin" shape="box"];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label="/bin/sh -c set -ex \t&& apt-get update \t&& apt-get install -qq --no-install-recommends ca-certificates dirmngr gosu gpg wget \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:61068851ddc92cb287cf2f0beb8ff80fef73079066b32dfddb446611be449541" [label="/bin/sh -c set -ex \t&& cd /tmp \t&& wget -qO bitcoin.tar.gz \"$BITCOIN_URL\" \t&& echo \"$BITCOIN_SHA256 bitcoin.tar.gz\" | sha256sum -c - \t&& gpg --keyserver keyserver.ubuntu.com --recv-keys \"$BITCOIN_PGP_KEY\" \t&& wget -qO bitcoin.asc \"$BITCOIN_ASC_URL\" \t&& gpg --verify bitcoin.asc \t&& tar -xzvf bitcoin.tar.gz -C /usr/local --strip-components=1 --exclude=*-qt \t&& rm -rf /tmp/*" shape="box"];
  "sha256:39b5b15a9f389d1cdbd4890a5ec0024ea0d915c6ef90b84c5c28f28795920b5b" [label="/bin/sh -c mkdir \"$BITCOIN_DATA\" \t&& chown -R bitcoin:bitcoin \"$BITCOIN_DATA\" \t&& ln -sfn \"$BITCOIN_DATA\" /home/bitcoin/.bitcoin \t&& chown -h bitcoin:bitcoin /home/bitcoin/.bitcoin" shape="box"];
  "sha256:9a76da3f942f45e5cec3e4afbcff897944004e5fbeb34b097751fb6223c13721" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:aab7666844430b09252f837f613a1a6f6a431d208db19df14ffa6a16736e5a4e" [label="sha256:aab7666844430b09252f837f613a1a6f6a431d208db19df14ffa6a16736e5a4e" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label=""];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" -> "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label=""];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" -> "sha256:61068851ddc92cb287cf2f0beb8ff80fef73079066b32dfddb446611be449541" [label=""];
  "sha256:61068851ddc92cb287cf2f0beb8ff80fef73079066b32dfddb446611be449541" -> "sha256:39b5b15a9f389d1cdbd4890a5ec0024ea0d915c6ef90b84c5c28f28795920b5b" [label=""];
  "sha256:39b5b15a9f389d1cdbd4890a5ec0024ea0d915c6ef90b84c5c28f28795920b5b" -> "sha256:9a76da3f942f45e5cec3e4afbcff897944004e5fbeb34b097751fb6223c13721" [label=""];
  "sha256:6751832886ec8f38a4ffc6dbb5fda1d9d506f3c04d1894934af15458e1bbd559" -> "sha256:9a76da3f942f45e5cec3e4afbcff897944004e5fbeb34b097751fb6223c13721" [label=""];
  "sha256:9a76da3f942f45e5cec3e4afbcff897944004e5fbeb34b097751fb6223c13721" -> "sha256:aab7666844430b09252f837f613a1a6f6a431d208db19df14ffa6a16736e5a4e" [label=""];
}

