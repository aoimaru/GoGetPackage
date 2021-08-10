[app/sources/291989225.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:21842f7e97ecce172e30a968019f13bdeb71aaf7e851b38d389eb3bf0539aeac" [label="/bin/sh -c apk --no-cache add ca-certificates bash" shape="box"];
  "sha256:10f1948ac95d8d66b20ae2daee7f8f79648b72b87fbf01f3a1af5ec241c0817a" [label="mkdir{path=/app}" shape="note"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:1fd48a5cbc913da06824f61865d6f22585aa1e8f931c2cd35629386b7f72a1fc" [label="/bin/sh -c go get -d -v github.com/czerwonk/atlas_exporter" shape="box"];
  "sha256:1397d4b0ba03f15ab77041385f8f9ca197d70fb0fb3931f83a3301005868aec3" [label="mkdir{path=/go/src/github.com/czerwonk/atlas_exporter}" shape="note"];
  "sha256:32c9d44da763c240b941fc8a83442d00c954bed6762168a70a85ee400e3c17b6" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app ." shape="box"];
  "sha256:a7cc8db7ab8db3ae3613400d5e1124fb4641b6d2805c5adec1f6419c2fdddb64" [label="copy{src=/go/src/github.com/czerwonk/atlas_exporter/app, dest=/app/atlas_exporter}" shape="note"];
  "sha256:5bea77515136a010692f004432a6d56a7f91f92f14fd769b31a8b4b21f95e9f5" [label="local://context" shape="ellipse"];
  "sha256:f9f8c6d41de65f5b29fa58c9a22939e8af1d56d12a8e1e7b8b5a0f42e577c753" [label="copy{src=/entrypoint, dest=/entrypoint}" shape="note"];
  "sha256:da93e369b523b616a2ce06cbcecf156ae9947e3d2037f5b291a5aacac5d1e632" [label="/bin/sh -c chmod 0755 /entrypoint" shape="box"];
  "sha256:7bae79e98049aa6baac26defc0cd59b7a4ca35c71d8d6e5e3a5af338ac437e67" [label="sha256:7bae79e98049aa6baac26defc0cd59b7a4ca35c71d8d6e5e3a5af338ac437e67" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:21842f7e97ecce172e30a968019f13bdeb71aaf7e851b38d389eb3bf0539aeac" [label=""];
  "sha256:21842f7e97ecce172e30a968019f13bdeb71aaf7e851b38d389eb3bf0539aeac" -> "sha256:10f1948ac95d8d66b20ae2daee7f8f79648b72b87fbf01f3a1af5ec241c0817a" [label=""];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:1fd48a5cbc913da06824f61865d6f22585aa1e8f931c2cd35629386b7f72a1fc" [label=""];
  "sha256:1fd48a5cbc913da06824f61865d6f22585aa1e8f931c2cd35629386b7f72a1fc" -> "sha256:1397d4b0ba03f15ab77041385f8f9ca197d70fb0fb3931f83a3301005868aec3" [label=""];
  "sha256:1397d4b0ba03f15ab77041385f8f9ca197d70fb0fb3931f83a3301005868aec3" -> "sha256:32c9d44da763c240b941fc8a83442d00c954bed6762168a70a85ee400e3c17b6" [label=""];
  "sha256:10f1948ac95d8d66b20ae2daee7f8f79648b72b87fbf01f3a1af5ec241c0817a" -> "sha256:a7cc8db7ab8db3ae3613400d5e1124fb4641b6d2805c5adec1f6419c2fdddb64" [label=""];
  "sha256:32c9d44da763c240b941fc8a83442d00c954bed6762168a70a85ee400e3c17b6" -> "sha256:a7cc8db7ab8db3ae3613400d5e1124fb4641b6d2805c5adec1f6419c2fdddb64" [label=""];
  "sha256:a7cc8db7ab8db3ae3613400d5e1124fb4641b6d2805c5adec1f6419c2fdddb64" -> "sha256:f9f8c6d41de65f5b29fa58c9a22939e8af1d56d12a8e1e7b8b5a0f42e577c753" [label=""];
  "sha256:5bea77515136a010692f004432a6d56a7f91f92f14fd769b31a8b4b21f95e9f5" -> "sha256:f9f8c6d41de65f5b29fa58c9a22939e8af1d56d12a8e1e7b8b5a0f42e577c753" [label=""];
  "sha256:f9f8c6d41de65f5b29fa58c9a22939e8af1d56d12a8e1e7b8b5a0f42e577c753" -> "sha256:da93e369b523b616a2ce06cbcecf156ae9947e3d2037f5b291a5aacac5d1e632" [label=""];
  "sha256:da93e369b523b616a2ce06cbcecf156ae9947e3d2037f5b291a5aacac5d1e632" -> "sha256:7bae79e98049aa6baac26defc0cd59b7a4ca35c71d8d6e5e3a5af338ac437e67" [label=""];
}

