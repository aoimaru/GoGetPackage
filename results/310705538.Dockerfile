[app/sources/310705538.Dockerfile]
digraph {
  "sha256:1f000be9cd939dbccaed659967f946c550f925a981c02c8c34025854e5822424" [label="local://context" shape="ellipse"];
  "sha256:f86fa8aa6fd964a94217c5c33f6306d4d9e48e2885119b2bc338852146c3d676" [label="docker-image://docker.io/library/alpine:3.9@sha256:414e0518bb9228d35e4cd5165567fb91d26c6a214e9c95899e1e056fcd349011" shape="ellipse"];
  "sha256:21122c2deffebd7998cbd18d498fe6e947e881350b9403cd8eba474921772c66" [label="/bin/sh -c apk upgrade --update --no-cache" shape="box"];
  "sha256:11f79893ecf93265d10dad6c07ac8b960928973f7fb24635ec75edb583942898" [label="/bin/sh -c apk add ca-certificates" shape="box"];
  "sha256:365f17b7f004451cb38ff08262ce02869014afefde800e3aa3b266e4a6c890e6" [label="copy{src=/build/_output/bin/dynatrace-oneagent-operator, dest=/usr/local/bin/dynatrace-oneagent-operator}" shape="note"];
  "sha256:6503c11c2c274ac2d2804c90e67335a1cebddb139d910e23dc0e674728ff322c" [label="sha256:6503c11c2c274ac2d2804c90e67335a1cebddb139d910e23dc0e674728ff322c" shape="plaintext"];
  "sha256:f86fa8aa6fd964a94217c5c33f6306d4d9e48e2885119b2bc338852146c3d676" -> "sha256:21122c2deffebd7998cbd18d498fe6e947e881350b9403cd8eba474921772c66" [label=""];
  "sha256:21122c2deffebd7998cbd18d498fe6e947e881350b9403cd8eba474921772c66" -> "sha256:11f79893ecf93265d10dad6c07ac8b960928973f7fb24635ec75edb583942898" [label=""];
  "sha256:11f79893ecf93265d10dad6c07ac8b960928973f7fb24635ec75edb583942898" -> "sha256:365f17b7f004451cb38ff08262ce02869014afefde800e3aa3b266e4a6c890e6" [label=""];
  "sha256:1f000be9cd939dbccaed659967f946c550f925a981c02c8c34025854e5822424" -> "sha256:365f17b7f004451cb38ff08262ce02869014afefde800e3aa3b266e4a6c890e6" [label=""];
  "sha256:365f17b7f004451cb38ff08262ce02869014afefde800e3aa3b266e4a6c890e6" -> "sha256:6503c11c2c274ac2d2804c90e67335a1cebddb139d910e23dc0e674728ff322c" [label=""];
}

