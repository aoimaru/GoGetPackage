[app/sources/315920242.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:d37b270690b4546eb447a49c60ff4647b5e291a3da071ef64d6ab5b5ba7222a9" [label="/bin/sh -c apk add --no-cache \tca-certificates" shape="box"];
  "sha256:c3074fe69cf963207c515348ee45b7afe4309f597e296dd8fc33f90c225dc339" [label="mkdir{path=/root}" shape="note"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:2d74862f96c3391500062e433618182ff0e2ad348c6b86dc1ed51b573d1c785d" [label="/bin/sh -c git config --global url.\"https://github.com/\".insteadOf \"git@github.com:\"" shape="box"];
  "sha256:d4ce0983ad5e2621054f41bda412f1ee19a40540832211107d62abec624003fe" [label="/bin/sh -c go get github.com/kubicorn/kubicorn/..." shape="box"];
  "sha256:91ac400b1accb3145c235f9f3000b6e811efba964fde715217c82bd3bd51995f" [label="mkdir{path=/go/src/github.com/kubicorn/kubicorn}" shape="note"];
  "sha256:3df212f36b8f93f76a190c7dcadadb0ba1afba7fa89c3281e3996ad3377c0431" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux  make docker-build-linux-amd64" shape="box"];
  "sha256:88e642506704adb22dd86337d65683777fcbf7fa12febd6f8cd1cd5ba40bcb05" [label="copy{src=/go/src/github.com/kubicorn/kubicorn, dest=/root/}" shape="note"];
  "sha256:555260579d1d37a28fde19dc2a096163bf398dcc15ce562a5f9616ca26050525" [label="/bin/sh -c echo \"Image build complete.\"" shape="box"];
  "sha256:e497f190ba0a0f598d3e1054b57dd8651dc54dd1d034c4a866037fa643af70e9" [label="sha256:e497f190ba0a0f598d3e1054b57dd8651dc54dd1d034c4a866037fa643af70e9" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:d37b270690b4546eb447a49c60ff4647b5e291a3da071ef64d6ab5b5ba7222a9" [label=""];
  "sha256:d37b270690b4546eb447a49c60ff4647b5e291a3da071ef64d6ab5b5ba7222a9" -> "sha256:c3074fe69cf963207c515348ee45b7afe4309f597e296dd8fc33f90c225dc339" [label=""];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:2d74862f96c3391500062e433618182ff0e2ad348c6b86dc1ed51b573d1c785d" [label=""];
  "sha256:2d74862f96c3391500062e433618182ff0e2ad348c6b86dc1ed51b573d1c785d" -> "sha256:d4ce0983ad5e2621054f41bda412f1ee19a40540832211107d62abec624003fe" [label=""];
  "sha256:d4ce0983ad5e2621054f41bda412f1ee19a40540832211107d62abec624003fe" -> "sha256:91ac400b1accb3145c235f9f3000b6e811efba964fde715217c82bd3bd51995f" [label=""];
  "sha256:91ac400b1accb3145c235f9f3000b6e811efba964fde715217c82bd3bd51995f" -> "sha256:3df212f36b8f93f76a190c7dcadadb0ba1afba7fa89c3281e3996ad3377c0431" [label=""];
  "sha256:c3074fe69cf963207c515348ee45b7afe4309f597e296dd8fc33f90c225dc339" -> "sha256:88e642506704adb22dd86337d65683777fcbf7fa12febd6f8cd1cd5ba40bcb05" [label=""];
  "sha256:3df212f36b8f93f76a190c7dcadadb0ba1afba7fa89c3281e3996ad3377c0431" -> "sha256:88e642506704adb22dd86337d65683777fcbf7fa12febd6f8cd1cd5ba40bcb05" [label=""];
  "sha256:88e642506704adb22dd86337d65683777fcbf7fa12febd6f8cd1cd5ba40bcb05" -> "sha256:555260579d1d37a28fde19dc2a096163bf398dcc15ce562a5f9616ca26050525" [label=""];
  "sha256:555260579d1d37a28fde19dc2a096163bf398dcc15ce562a5f9616ca26050525" -> "sha256:e497f190ba0a0f598d3e1054b57dd8651dc54dd1d034c4a866037fa643af70e9" [label=""];
}

