[app/sources/214157136.Dockerfile]
digraph {
  "sha256:7393b615efbe8831aa970d38a670b02c3531f01c7006f18c12d4e56833997c9c" [label="local://context" shape="ellipse"];
  "sha256:f86fa8aa6fd964a94217c5c33f6306d4d9e48e2885119b2bc338852146c3d676" [label="docker-image://docker.io/library/alpine:3.9@sha256:414e0518bb9228d35e4cd5165567fb91d26c6a214e9c95899e1e056fcd349011" shape="ellipse"];
  "sha256:ddf858e7f92e6bf9158621c6e9cdd21d3c8553bc1f40913b8c24cbb752886b29" [label="/bin/sh -c apk add --no-cache --virtual sl_plus_deps syslinux=${APP_VERSION} &&     cp -r /usr/share/syslinux /tftpboot &&     find /tftpboot -type f -exec chmod 0444 {} + &&     apk del sl_plus_deps" shape="box"];
  "sha256:44351ffb4d03d14515023a5b2e111174fc60e358e4c2319b00f0de9deb58fe8d" [label="copy{src=/pxelinux.cfg, dest=/tftpboot/pxelinux.cfg/}" shape="note"];
  "sha256:d9ce1a4da444543a0b48e11cb1801039ff2c1dcac19b11b79b11979f3bb873b5" [label="copy{src=/mapfile, dest=/tftpboot/}" shape="note"];
  "sha256:bdfa7e4b5ad6c0ef0957c52c07e785c4a6b605de34d014d710dc8b00323bad0e" [label="/bin/sh -c apk add --no-cache tftp-hpa" shape="box"];
  "sha256:9cad94dcf2be56368fcdc4fbd91f9ffa83d381f75b5d925b27de495bc75d0db8" [label="/bin/sh -c adduser -D tftp" shape="box"];
  "sha256:e6a04069a754f424a1c771338a9dabde4653d17c3146b145a35d86e54cea916b" [label="copy{src=/start, dest=/usr/sbin/start}" shape="note"];
  "sha256:aa9e90b50d485ea23956fd63de4f0ede8216a320eb4e2b159cccd93eabd32aa0" [label="sha256:aa9e90b50d485ea23956fd63de4f0ede8216a320eb4e2b159cccd93eabd32aa0" shape="plaintext"];
  "sha256:f86fa8aa6fd964a94217c5c33f6306d4d9e48e2885119b2bc338852146c3d676" -> "sha256:ddf858e7f92e6bf9158621c6e9cdd21d3c8553bc1f40913b8c24cbb752886b29" [label=""];
  "sha256:ddf858e7f92e6bf9158621c6e9cdd21d3c8553bc1f40913b8c24cbb752886b29" -> "sha256:44351ffb4d03d14515023a5b2e111174fc60e358e4c2319b00f0de9deb58fe8d" [label=""];
  "sha256:7393b615efbe8831aa970d38a670b02c3531f01c7006f18c12d4e56833997c9c" -> "sha256:44351ffb4d03d14515023a5b2e111174fc60e358e4c2319b00f0de9deb58fe8d" [label=""];
  "sha256:44351ffb4d03d14515023a5b2e111174fc60e358e4c2319b00f0de9deb58fe8d" -> "sha256:d9ce1a4da444543a0b48e11cb1801039ff2c1dcac19b11b79b11979f3bb873b5" [label=""];
  "sha256:7393b615efbe8831aa970d38a670b02c3531f01c7006f18c12d4e56833997c9c" -> "sha256:d9ce1a4da444543a0b48e11cb1801039ff2c1dcac19b11b79b11979f3bb873b5" [label=""];
  "sha256:d9ce1a4da444543a0b48e11cb1801039ff2c1dcac19b11b79b11979f3bb873b5" -> "sha256:bdfa7e4b5ad6c0ef0957c52c07e785c4a6b605de34d014d710dc8b00323bad0e" [label=""];
  "sha256:bdfa7e4b5ad6c0ef0957c52c07e785c4a6b605de34d014d710dc8b00323bad0e" -> "sha256:9cad94dcf2be56368fcdc4fbd91f9ffa83d381f75b5d925b27de495bc75d0db8" [label=""];
  "sha256:9cad94dcf2be56368fcdc4fbd91f9ffa83d381f75b5d925b27de495bc75d0db8" -> "sha256:e6a04069a754f424a1c771338a9dabde4653d17c3146b145a35d86e54cea916b" [label=""];
  "sha256:7393b615efbe8831aa970d38a670b02c3531f01c7006f18c12d4e56833997c9c" -> "sha256:e6a04069a754f424a1c771338a9dabde4653d17c3146b145a35d86e54cea916b" [label=""];
  "sha256:e6a04069a754f424a1c771338a9dabde4653d17c3146b145a35d86e54cea916b" -> "sha256:aa9e90b50d485ea23956fd63de4f0ede8216a320eb4e2b159cccd93eabd32aa0" [label=""];
}

