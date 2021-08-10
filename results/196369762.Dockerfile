[app/sources/196369762.Dockerfile]
digraph {
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:d3808e94b40a6562d022482dfed2490ae9eba3445234362de994ac6e0dd342f4" [label="local://context" shape="ellipse"];
  "sha256:57b0b0492d6a7098461c9dc48f48a02667422c7de7a91f438840cb4ebf0bbaa6" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:4242be14b8d746bbe9846d443419b179fd11b1b265869ee09469896a25c3168a" [label="/bin/sh -c chmod a+x /run.sh" shape="box"];
  "sha256:aa1b836875dc229e8af0a374758f72e7f1d3ae1eeccd229a752df52c3021777d" [label="sha256:aa1b836875dc229e8af0a374758f72e7f1d3ae1eeccd229a752df52c3021777d" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:57b0b0492d6a7098461c9dc48f48a02667422c7de7a91f438840cb4ebf0bbaa6" [label=""];
  "sha256:d3808e94b40a6562d022482dfed2490ae9eba3445234362de994ac6e0dd342f4" -> "sha256:57b0b0492d6a7098461c9dc48f48a02667422c7de7a91f438840cb4ebf0bbaa6" [label=""];
  "sha256:57b0b0492d6a7098461c9dc48f48a02667422c7de7a91f438840cb4ebf0bbaa6" -> "sha256:4242be14b8d746bbe9846d443419b179fd11b1b265869ee09469896a25c3168a" [label=""];
  "sha256:4242be14b8d746bbe9846d443419b179fd11b1b265869ee09469896a25c3168a" -> "sha256:aa1b836875dc229e8af0a374758f72e7f1d3ae1eeccd229a752df52c3021777d" [label=""];
}

