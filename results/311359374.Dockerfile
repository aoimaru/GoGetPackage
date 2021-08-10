[app/sources/311359374.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:aba65977a2ab69a37e7ea873c296e6e5cacb433c2fa8fc632975f0f2ba053ff8" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:e4e3e26f1457e46b0622abd22977c31550816e6cc5a784d6919b4e8ef356de88" [label="local://context" shape="ellipse"];
  "sha256:9d54b2cef230ab57be5fb810df3cc4aec7a8e2026129a1d10730c4a0e3ced7bc" [label="copy{src=/dist/linux_amd64/tunnel-client, dest=/usr/local/bin/tunnel}" shape="note"];
  "sha256:7cd374dca70c876137e850719f61444c19ed6d8084a34d97bca85e3f0ac1d8b9" [label="sha256:7cd374dca70c876137e850719f61444c19ed6d8084a34d97bca85e3f0ac1d8b9" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:aba65977a2ab69a37e7ea873c296e6e5cacb433c2fa8fc632975f0f2ba053ff8" [label=""];
  "sha256:aba65977a2ab69a37e7ea873c296e6e5cacb433c2fa8fc632975f0f2ba053ff8" -> "sha256:9d54b2cef230ab57be5fb810df3cc4aec7a8e2026129a1d10730c4a0e3ced7bc" [label=""];
  "sha256:e4e3e26f1457e46b0622abd22977c31550816e6cc5a784d6919b4e8ef356de88" -> "sha256:9d54b2cef230ab57be5fb810df3cc4aec7a8e2026129a1d10730c4a0e3ced7bc" [label=""];
  "sha256:9d54b2cef230ab57be5fb810df3cc4aec7a8e2026129a1d10730c4a0e3ced7bc" -> "sha256:7cd374dca70c876137e850719f61444c19ed6d8084a34d97bca85e3f0ac1d8b9" [label=""];
}

