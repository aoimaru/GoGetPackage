[app/sources/345358135.Dockerfile]
digraph {
  "sha256:da3624eb15ccdab3fe2bc3d006af9f159829c951dd04cc6dd423af8163156ee3" [label="docker-image://docker.io/balenalib/raspberrypi3-64-debian:stretch-build" shape="ellipse"];
  "sha256:54245813363d03a757b727cedcd1d0a592412c7dd281f04ef92dff43a7527e90" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:5baa8d1a64677a4c2511783c31cff9dd5352090f19ca8ca096398c458904c36e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:caa4ceb3c2ecf9155d664d6a4dd085b468ee83618a4c00ef015cd9e25f6bfcfe" [label="mkdir{path=/go}" shape="note"];
  "sha256:54d7def06ace37fa4938d0dfc9b94ae494ba476e9c1c2b6167135adb76587f2a" [label="sha256:54d7def06ace37fa4938d0dfc9b94ae494ba476e9c1c2b6167135adb76587f2a" shape="plaintext"];
  "sha256:da3624eb15ccdab3fe2bc3d006af9f159829c951dd04cc6dd423af8163156ee3" -> "sha256:54245813363d03a757b727cedcd1d0a592412c7dd281f04ef92dff43a7527e90" [label=""];
  "sha256:54245813363d03a757b727cedcd1d0a592412c7dd281f04ef92dff43a7527e90" -> "sha256:5baa8d1a64677a4c2511783c31cff9dd5352090f19ca8ca096398c458904c36e" [label=""];
  "sha256:5baa8d1a64677a4c2511783c31cff9dd5352090f19ca8ca096398c458904c36e" -> "sha256:caa4ceb3c2ecf9155d664d6a4dd085b468ee83618a4c00ef015cd9e25f6bfcfe" [label=""];
  "sha256:caa4ceb3c2ecf9155d664d6a4dd085b468ee83618a4c00ef015cd9e25f6bfcfe" -> "sha256:54d7def06ace37fa4938d0dfc9b94ae494ba476e9c1c2b6167135adb76587f2a" [label=""];
}

