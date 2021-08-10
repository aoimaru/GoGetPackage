[app/sources/345356570.Dockerfile]
digraph {
  "sha256:957796987ce53a1553fe299cc0515b694cec4c011fd8a38e9433a4bfbb2dfa9f" [label="docker-image://docker.io/balenalib/amd64-alpine:3.7-run" shape="ellipse"];
  "sha256:9770d519fd0a6ece852ad5b3131a13f154361a7b560c0502607c64a998f249f7" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:4fbe753a819d21ff6dc036dca1d814be1fa4b523b27461c98cf412f4bc53a839" [label="sha256:4fbe753a819d21ff6dc036dca1d814be1fa4b523b27461c98cf412f4bc53a839" shape="plaintext"];
  "sha256:957796987ce53a1553fe299cc0515b694cec4c011fd8a38e9433a4bfbb2dfa9f" -> "sha256:9770d519fd0a6ece852ad5b3131a13f154361a7b560c0502607c64a998f249f7" [label=""];
  "sha256:9770d519fd0a6ece852ad5b3131a13f154361a7b560c0502607c64a998f249f7" -> "sha256:4fbe753a819d21ff6dc036dca1d814be1fa4b523b27461c98cf412f4bc53a839" [label=""];
}

