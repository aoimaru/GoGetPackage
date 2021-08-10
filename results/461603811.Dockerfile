[app/sources/461603811.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:8b5944087bea72c9a7cf80d56804b24e810a3acc9cdddb7155e1e83a7a0d11d0" [label="mkdir{path=/app}" shape="note"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:8ac5b88771d52dac42079ab364fc958bbe94c7c72f628e6a3855b193dc4d8970" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:a8bb4f24e4942188076a930b4304b884cfc04bd289745eba93904a6f8421db25" [label="mkdir{path=/go/src/github.com/disintegration/bebop}" shape="note"];
  "sha256:4eb552b067519d53e1031bf2b6adb541c0c9e04b85bda322f8277c71cc612163" [label="local://context" shape="ellipse"];
  "sha256:71ea646e4bfa86a5b388760da4b61259d4748cee9e0381d671fb18a8d7dff02d" [label="copy{src=/, dest=/go/src/github.com/disintegration/bebop/}" shape="note"];
  "sha256:1cbe1a130c442b7c78d78eb3a77674c1d332ad13c5f63487d7379316d3443283" [label="/bin/sh -c go generate ./static" shape="box"];
  "sha256:cbc932a4fc5808fe564acb15c24348ef6800a3ff98b1bd3ba301197ca77f805b" [label="/bin/sh -c CGO_ENABLED=0 go install ./cmd/bebop" shape="box"];
  "sha256:cc0f8c1a102ef16f4c5a4c763ff2221e6cbf28bc80f068dcd49536d1868e8487" [label="copy{src=/go/bin/bebop, dest=/app/bebop}" shape="note"];
  "sha256:578758c5d3dd9d306f95e201923c8ea1ed1a9e79fdf8add581aec63fc5b0081f" [label="copy{src=/etc/ssl/certs, dest=/etc/ssl/certs}" shape="note"];
  "sha256:cabed450507231d0164d0cd11ab4dba52618fdff17d1e689edb886293704f82f" [label="sha256:cabed450507231d0164d0cd11ab4dba52618fdff17d1e689edb886293704f82f" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:8b5944087bea72c9a7cf80d56804b24e810a3acc9cdddb7155e1e83a7a0d11d0" [label=""];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:8ac5b88771d52dac42079ab364fc958bbe94c7c72f628e6a3855b193dc4d8970" [label=""];
  "sha256:8ac5b88771d52dac42079ab364fc958bbe94c7c72f628e6a3855b193dc4d8970" -> "sha256:a8bb4f24e4942188076a930b4304b884cfc04bd289745eba93904a6f8421db25" [label=""];
  "sha256:a8bb4f24e4942188076a930b4304b884cfc04bd289745eba93904a6f8421db25" -> "sha256:71ea646e4bfa86a5b388760da4b61259d4748cee9e0381d671fb18a8d7dff02d" [label=""];
  "sha256:4eb552b067519d53e1031bf2b6adb541c0c9e04b85bda322f8277c71cc612163" -> "sha256:71ea646e4bfa86a5b388760da4b61259d4748cee9e0381d671fb18a8d7dff02d" [label=""];
  "sha256:71ea646e4bfa86a5b388760da4b61259d4748cee9e0381d671fb18a8d7dff02d" -> "sha256:1cbe1a130c442b7c78d78eb3a77674c1d332ad13c5f63487d7379316d3443283" [label=""];
  "sha256:1cbe1a130c442b7c78d78eb3a77674c1d332ad13c5f63487d7379316d3443283" -> "sha256:cbc932a4fc5808fe564acb15c24348ef6800a3ff98b1bd3ba301197ca77f805b" [label=""];
  "sha256:8b5944087bea72c9a7cf80d56804b24e810a3acc9cdddb7155e1e83a7a0d11d0" -> "sha256:cc0f8c1a102ef16f4c5a4c763ff2221e6cbf28bc80f068dcd49536d1868e8487" [label=""];
  "sha256:cbc932a4fc5808fe564acb15c24348ef6800a3ff98b1bd3ba301197ca77f805b" -> "sha256:cc0f8c1a102ef16f4c5a4c763ff2221e6cbf28bc80f068dcd49536d1868e8487" [label=""];
  "sha256:cc0f8c1a102ef16f4c5a4c763ff2221e6cbf28bc80f068dcd49536d1868e8487" -> "sha256:578758c5d3dd9d306f95e201923c8ea1ed1a9e79fdf8add581aec63fc5b0081f" [label=""];
  "sha256:cbc932a4fc5808fe564acb15c24348ef6800a3ff98b1bd3ba301197ca77f805b" -> "sha256:578758c5d3dd9d306f95e201923c8ea1ed1a9e79fdf8add581aec63fc5b0081f" [label=""];
  "sha256:578758c5d3dd9d306f95e201923c8ea1ed1a9e79fdf8add581aec63fc5b0081f" -> "sha256:cabed450507231d0164d0cd11ab4dba52618fdff17d1e689edb886293704f82f" [label=""];
}

