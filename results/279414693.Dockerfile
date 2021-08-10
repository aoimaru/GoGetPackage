[app/sources/279414693.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label="/bin/sh -c groupadd -r bitcoin && useradd -r -m -g bitcoin bitcoin" shape="box"];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label="/bin/sh -c set -ex \t&& apt-get update \t&& apt-get install -qq --no-install-recommends ca-certificates dirmngr gosu gpg wget \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:435048b885814abd70c1d4fdc77e2be0cd9c50285aa9f4b35685d9c0be6ff93f" [label="/bin/sh -c set -ex \t&& cd /tmp \t&& wget -qO bitcoin.tar.gz \"$BITCOIN_URL\" \t&& echo \"$BITCOIN_SHA256 bitcoin.tar.gz\" | sha256sum -c - \t&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys \"$BITCOIN_PGP_KEY\" \t&& wget -qO bitcoin.asc \"$BITCOIN_ASC_URL\" \t&& gpg --verify bitcoin.asc \t&& tar -xzvf bitcoin.tar.gz -C /usr/local --strip-components=1 --exclude=*-qt \t&& rm -rf /tmp/*" shape="box"];
  "sha256:59919dc2f179e48f0b39d2c6af4f65267da0e923fc105da097c058626a32625f" [label="/bin/sh -c mkdir \"$BITCOIN_DATA\" \t&& chown -R bitcoin:bitcoin \"$BITCOIN_DATA\" \t&& ln -sfn \"$BITCOIN_DATA\" /home/bitcoin/.bitcoin \t&& chown -h bitcoin:bitcoin /home/bitcoin/.bitcoin" shape="box"];
  "sha256:d5c58a135926b71f25da123e90c9adad309d6304d2b19e46c2ffa92ef856d98c" [label="local://context" shape="ellipse"];
  "sha256:39b49d09f0f01322e19b26b6377b548c82204f04095102df4fc0a56aad14413a" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:b9e7c29acc743ac212da00bc49e6c608baaa2dcf5d939f8efff8edd21e111e62" [label="sha256:b9e7c29acc743ac212da00bc49e6c608baaa2dcf5d939f8efff8edd21e111e62" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" [label=""];
  "sha256:c27ea12254ed5d66b18576d58e281f717bd0c7ed74bba76dd7d9af4c6f20be13" -> "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" [label=""];
  "sha256:ab89964f87d4cbfb62ec7b5823bfa6b284c2271a1db8b5eac13d83ba13ff0dcf" -> "sha256:435048b885814abd70c1d4fdc77e2be0cd9c50285aa9f4b35685d9c0be6ff93f" [label=""];
  "sha256:435048b885814abd70c1d4fdc77e2be0cd9c50285aa9f4b35685d9c0be6ff93f" -> "sha256:59919dc2f179e48f0b39d2c6af4f65267da0e923fc105da097c058626a32625f" [label=""];
  "sha256:59919dc2f179e48f0b39d2c6af4f65267da0e923fc105da097c058626a32625f" -> "sha256:39b49d09f0f01322e19b26b6377b548c82204f04095102df4fc0a56aad14413a" [label=""];
  "sha256:d5c58a135926b71f25da123e90c9adad309d6304d2b19e46c2ffa92ef856d98c" -> "sha256:39b49d09f0f01322e19b26b6377b548c82204f04095102df4fc0a56aad14413a" [label=""];
  "sha256:39b49d09f0f01322e19b26b6377b548c82204f04095102df4fc0a56aad14413a" -> "sha256:b9e7c29acc743ac212da00bc49e6c608baaa2dcf5d939f8efff8edd21e111e62" [label=""];
}

