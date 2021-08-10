[app/sources/345366510.Dockerfile]
digraph {
  "sha256:499754c62341b477b6a9e4a7103bc90c60d35b299c3442999f79cf92f0aa9d84" [label="docker-image://docker.io/balenalib/imx7-var-som-debian:buster-build" shape="ellipse"];
  "sha256:b80a5a34790c173f1016f6d2f077558a48d61e82fa234dbfe2a340ff85c44390" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:7d3229474d539938dbdcb04b43e663b0dd916e30a91e59056d48ca388a8f32f0" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ede83ffee66717bdbbe0d174368d874959951af11a3c215c0566dc207a9ef58e" [label="mkdir{path=/go}" shape="note"];
  "sha256:814256b035d20fcdcb090ff0213b6b6b537da7c2949c5ec4860707771663b67d" [label="sha256:814256b035d20fcdcb090ff0213b6b6b537da7c2949c5ec4860707771663b67d" shape="plaintext"];
  "sha256:499754c62341b477b6a9e4a7103bc90c60d35b299c3442999f79cf92f0aa9d84" -> "sha256:b80a5a34790c173f1016f6d2f077558a48d61e82fa234dbfe2a340ff85c44390" [label=""];
  "sha256:b80a5a34790c173f1016f6d2f077558a48d61e82fa234dbfe2a340ff85c44390" -> "sha256:7d3229474d539938dbdcb04b43e663b0dd916e30a91e59056d48ca388a8f32f0" [label=""];
  "sha256:7d3229474d539938dbdcb04b43e663b0dd916e30a91e59056d48ca388a8f32f0" -> "sha256:ede83ffee66717bdbbe0d174368d874959951af11a3c215c0566dc207a9ef58e" [label=""];
  "sha256:ede83ffee66717bdbbe0d174368d874959951af11a3c215c0566dc207a9ef58e" -> "sha256:814256b035d20fcdcb090ff0213b6b6b537da7c2949c5ec4860707771663b67d" [label=""];
}

