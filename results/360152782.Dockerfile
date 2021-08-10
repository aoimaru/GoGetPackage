[app/sources/360152782.Dockerfile]
digraph {
  "sha256:fd828828b56b61a357c720c7c2882fccbcca1c30c8701c8d601f563e6df1e2a0" [label="docker-image://docker.io/nodesource/trusty:6.3.0" shape="ellipse"];
  "sha256:2511cd9f92a637aca81b557c1e8d33ac41883207bf37cd17a63487ab5b3554f8" [label="/bin/sh -c apt-get update &&     apt-get -y install build-essential ca-certificates git openjdk-7-jre-headless &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8f3e49dc6953f07448aba2290afa128b5db713e2f9c473de1dea6ad5a3c9957c" [label="/bin/sh -c npm -g install bower gulp http-server" shape="box"];
  "sha256:78e45ff83c27f330843199bfe5554a04e88ec5117aac30cdd854559b4600ff00" [label="/bin/sh -c useradd -ms /bin/bash santa" shape="box"];
  "sha256:24394718e25dec74eb354d51c2799e98e58ee8971dcac3ecbaa89e78233876fa" [label="/bin/sh -c mkdir -p $SANTA_ROOT" shape="box"];
  "sha256:f68422f94b8c8197f80c2299881b8db159098c1ea73f6c40d082b63fc10890f5" [label="local://context" shape="ellipse"];
  "sha256:d01b259b3701c5e4a16763a796076d8ab099b376f57398b71207a911ee654e20" [label="copy{src=/, dest=/home/santa/src/santatracker}" shape="note"];
  "sha256:c0057aae806e2231d16b208cc065b665d0ad3f3afdf5144426a24ef9338521b7" [label="/bin/sh -c chown -R santa:santa $SANTA_ROOT" shape="box"];
  "sha256:b2da5ffc6827f7a305861cf728bfdc98cb6da426ebcf8c3fbe92dc7d119c7db3" [label="mkdir{path=/home/santa/src/santatracker}" shape="note"];
  "sha256:2ded90a44f845034d648dec151584056a21decd5293f912ae6d40cea1c58a586" [label="/bin/sh -c unset NODE_ENV &&     npm install" shape="box"];
  "sha256:f86b684f95014fed74f036f5c496b495fab80979d5557af29ae4b9d5f1b7178e" [label="sha256:f86b684f95014fed74f036f5c496b495fab80979d5557af29ae4b9d5f1b7178e" shape="plaintext"];
  "sha256:fd828828b56b61a357c720c7c2882fccbcca1c30c8701c8d601f563e6df1e2a0" -> "sha256:2511cd9f92a637aca81b557c1e8d33ac41883207bf37cd17a63487ab5b3554f8" [label=""];
  "sha256:2511cd9f92a637aca81b557c1e8d33ac41883207bf37cd17a63487ab5b3554f8" -> "sha256:8f3e49dc6953f07448aba2290afa128b5db713e2f9c473de1dea6ad5a3c9957c" [label=""];
  "sha256:8f3e49dc6953f07448aba2290afa128b5db713e2f9c473de1dea6ad5a3c9957c" -> "sha256:78e45ff83c27f330843199bfe5554a04e88ec5117aac30cdd854559b4600ff00" [label=""];
  "sha256:78e45ff83c27f330843199bfe5554a04e88ec5117aac30cdd854559b4600ff00" -> "sha256:24394718e25dec74eb354d51c2799e98e58ee8971dcac3ecbaa89e78233876fa" [label=""];
  "sha256:24394718e25dec74eb354d51c2799e98e58ee8971dcac3ecbaa89e78233876fa" -> "sha256:d01b259b3701c5e4a16763a796076d8ab099b376f57398b71207a911ee654e20" [label=""];
  "sha256:f68422f94b8c8197f80c2299881b8db159098c1ea73f6c40d082b63fc10890f5" -> "sha256:d01b259b3701c5e4a16763a796076d8ab099b376f57398b71207a911ee654e20" [label=""];
  "sha256:d01b259b3701c5e4a16763a796076d8ab099b376f57398b71207a911ee654e20" -> "sha256:c0057aae806e2231d16b208cc065b665d0ad3f3afdf5144426a24ef9338521b7" [label=""];
  "sha256:c0057aae806e2231d16b208cc065b665d0ad3f3afdf5144426a24ef9338521b7" -> "sha256:b2da5ffc6827f7a305861cf728bfdc98cb6da426ebcf8c3fbe92dc7d119c7db3" [label=""];
  "sha256:b2da5ffc6827f7a305861cf728bfdc98cb6da426ebcf8c3fbe92dc7d119c7db3" -> "sha256:2ded90a44f845034d648dec151584056a21decd5293f912ae6d40cea1c58a586" [label=""];
  "sha256:2ded90a44f845034d648dec151584056a21decd5293f912ae6d40cea1c58a586" -> "sha256:f86b684f95014fed74f036f5c496b495fab80979d5557af29ae4b9d5f1b7178e" [label=""];
}

