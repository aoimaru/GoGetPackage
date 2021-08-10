[app/sources/345356058.Dockerfile]
digraph {
  "sha256:b890d3a6c6af6828c055e39083cd5ba7145c678e0313b48ba51b27ff40274cc0" [label="docker-image://docker.io/balenalib/armv7hf-alpine:edge-run" shape="ellipse"];
  "sha256:f8ca64113aebde93cd3637f04307dd0144eb56013c16ca70d9059b6a34f3d3d4" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:bdaf1df60f599c9097d6c20dc6f8bf20caa4511ec36a7ede45cc522bfd0dcb95" [label="sha256:bdaf1df60f599c9097d6c20dc6f8bf20caa4511ec36a7ede45cc522bfd0dcb95" shape="plaintext"];
  "sha256:b890d3a6c6af6828c055e39083cd5ba7145c678e0313b48ba51b27ff40274cc0" -> "sha256:f8ca64113aebde93cd3637f04307dd0144eb56013c16ca70d9059b6a34f3d3d4" [label=""];
  "sha256:f8ca64113aebde93cd3637f04307dd0144eb56013c16ca70d9059b6a34f3d3d4" -> "sha256:bdaf1df60f599c9097d6c20dc6f8bf20caa4511ec36a7ede45cc522bfd0dcb95" [label=""];
}

