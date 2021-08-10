[app/sources/240175755.Dockerfile]
digraph {
  "sha256:082cd2d344851ff9b07f47a84376198b3cebdb6f81c347be6699cac9eb00a81d" [label="docker-image://docker.io/egovio/nginx-alpine:1.13.8" shape="ellipse"];
  "sha256:ab466e0766b341329db7a3fa8bcfad1b1fff7bf07958ef62e80ace031f2d0ca0" [label="/bin/sh -c apk update && apk add acme-client libressl" shape="box"];
  "sha256:34be9c920d578d94cfd717ab5270e96046e58c7b211acfe8e9339999458701f9" [label="/bin/sh -c mkdir -p /var/www/acme" shape="box"];
  "sha256:4c020d52267d4b4fe42d789cc32a7375fad0528413ce1d570618b37e783edcf7" [label="local://context" shape="ellipse"];
  "sha256:a91cec28fbc73bb4a35642e4d2ce81f285912dc549660ff6e710d7b58b965b0b" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:db085fc33b760a7937373790ee01434114a06ab657b9647bdf64110aa4174e3a" [label="copy{src=/default_ssl.conf, dest=/tmp/default_ssl.conf}" shape="note"];
  "sha256:c94ee074a1f0fee28e696cfb3f5aecbec99d38d7f1af4a8ce667db7b00f6f8b4" [label="copy{src=/start.sh, dest=/usr/bin/start.sh}" shape="note"];
  "sha256:0e135bebb5ac737a2971ba1dd9eaa2c094d0e928e4d8588b054a51cd6ffe3a6b" [label="/bin/sh -c chmod +x /usr/bin/start.sh" shape="box"];
  "sha256:ab5ddc00e86244054ae3c2e3531b12eebcb9498ca9def8b546982c926ee4a5a3" [label="sha256:ab5ddc00e86244054ae3c2e3531b12eebcb9498ca9def8b546982c926ee4a5a3" shape="plaintext"];
  "sha256:082cd2d344851ff9b07f47a84376198b3cebdb6f81c347be6699cac9eb00a81d" -> "sha256:ab466e0766b341329db7a3fa8bcfad1b1fff7bf07958ef62e80ace031f2d0ca0" [label=""];
  "sha256:ab466e0766b341329db7a3fa8bcfad1b1fff7bf07958ef62e80ace031f2d0ca0" -> "sha256:34be9c920d578d94cfd717ab5270e96046e58c7b211acfe8e9339999458701f9" [label=""];
  "sha256:34be9c920d578d94cfd717ab5270e96046e58c7b211acfe8e9339999458701f9" -> "sha256:a91cec28fbc73bb4a35642e4d2ce81f285912dc549660ff6e710d7b58b965b0b" [label=""];
  "sha256:4c020d52267d4b4fe42d789cc32a7375fad0528413ce1d570618b37e783edcf7" -> "sha256:a91cec28fbc73bb4a35642e4d2ce81f285912dc549660ff6e710d7b58b965b0b" [label=""];
  "sha256:a91cec28fbc73bb4a35642e4d2ce81f285912dc549660ff6e710d7b58b965b0b" -> "sha256:db085fc33b760a7937373790ee01434114a06ab657b9647bdf64110aa4174e3a" [label=""];
  "sha256:4c020d52267d4b4fe42d789cc32a7375fad0528413ce1d570618b37e783edcf7" -> "sha256:db085fc33b760a7937373790ee01434114a06ab657b9647bdf64110aa4174e3a" [label=""];
  "sha256:db085fc33b760a7937373790ee01434114a06ab657b9647bdf64110aa4174e3a" -> "sha256:c94ee074a1f0fee28e696cfb3f5aecbec99d38d7f1af4a8ce667db7b00f6f8b4" [label=""];
  "sha256:4c020d52267d4b4fe42d789cc32a7375fad0528413ce1d570618b37e783edcf7" -> "sha256:c94ee074a1f0fee28e696cfb3f5aecbec99d38d7f1af4a8ce667db7b00f6f8b4" [label=""];
  "sha256:c94ee074a1f0fee28e696cfb3f5aecbec99d38d7f1af4a8ce667db7b00f6f8b4" -> "sha256:0e135bebb5ac737a2971ba1dd9eaa2c094d0e928e4d8588b054a51cd6ffe3a6b" [label=""];
  "sha256:0e135bebb5ac737a2971ba1dd9eaa2c094d0e928e4d8588b054a51cd6ffe3a6b" -> "sha256:ab5ddc00e86244054ae3c2e3531b12eebcb9498ca9def8b546982c926ee4a5a3" [label=""];
}

