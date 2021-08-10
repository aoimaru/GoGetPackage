[app/sources/349475908.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:01a324a4920049014912c5c64f51f9695ae2dd0fc8f8be40b3d9fdccc8b68605" [label="/bin/sh -c apk add --update   --repository http://dl-3.alpinelinux.org/alpine/edge/testing   vips-tools   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:761f62f36f0517d11dad23d3e8c4096444a645ad1ba392a060d4c48b6d7bfe56" [label="sha256:761f62f36f0517d11dad23d3e8c4096444a645ad1ba392a060d4c48b6d7bfe56" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:01a324a4920049014912c5c64f51f9695ae2dd0fc8f8be40b3d9fdccc8b68605" [label=""];
  "sha256:01a324a4920049014912c5c64f51f9695ae2dd0fc8f8be40b3d9fdccc8b68605" -> "sha256:761f62f36f0517d11dad23d3e8c4096444a645ad1ba392a060d4c48b6d7bfe56" [label=""];
}

