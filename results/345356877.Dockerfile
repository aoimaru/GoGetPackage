[app/sources/345356877.Dockerfile]
digraph {
  "sha256:66f0d3f10472732ebc535e6ec46e62d195429865ba07f89b44ea4eee125c0f09" [label="docker-image://docker.io/balenalib/i386-alpine:3.7-build" shape="ellipse"];
  "sha256:10d92dad74cc599c64fe148b1918022d1a410df2cde4f63112a56f3c6f2b0c0c" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:3cd3d87bceaa2d2ee7d4bb29f24d51c139ac7ee4bdeed0cd4214ee1cdd0e9f64" [label="sha256:3cd3d87bceaa2d2ee7d4bb29f24d51c139ac7ee4bdeed0cd4214ee1cdd0e9f64" shape="plaintext"];
  "sha256:66f0d3f10472732ebc535e6ec46e62d195429865ba07f89b44ea4eee125c0f09" -> "sha256:10d92dad74cc599c64fe148b1918022d1a410df2cde4f63112a56f3c6f2b0c0c" [label=""];
  "sha256:10d92dad74cc599c64fe148b1918022d1a410df2cde4f63112a56f3c6f2b0c0c" -> "sha256:3cd3d87bceaa2d2ee7d4bb29f24d51c139ac7ee4bdeed0cd4214ee1cdd0e9f64" [label=""];
}

