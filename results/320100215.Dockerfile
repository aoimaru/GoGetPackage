[app/sources/320100215.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:4fd687c00a6a7ff24821dbe4743bb8d227333d5af4ab71a2f68a04317d5bcf65" [label="/bin/sh -c apk --no-cache add \tfile \tlibpng" shape="box"];
  "sha256:a9b9b84a2592d3e332dbf40f01ac8b4851025f545b0eae538a757b623d52d0fd" [label="/bin/sh -c set -x \t&& apk add --no-cache --virtual .build-deps \t\tautoconf \t\tautomake \t\tbuild-base \t\tlibpng-dev \t\tnasm \t&& npm install --global imagemin-cli \t&& apk del .build-deps" shape="box"];
  "sha256:51c54bb6bcf38ab5ab354be770176269165cb224ffcc5c04e036c9edf190e47f" [label="sha256:51c54bb6bcf38ab5ab354be770176269165cb224ffcc5c04e036c9edf190e47f" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:4fd687c00a6a7ff24821dbe4743bb8d227333d5af4ab71a2f68a04317d5bcf65" [label=""];
  "sha256:4fd687c00a6a7ff24821dbe4743bb8d227333d5af4ab71a2f68a04317d5bcf65" -> "sha256:a9b9b84a2592d3e332dbf40f01ac8b4851025f545b0eae538a757b623d52d0fd" [label=""];
  "sha256:a9b9b84a2592d3e332dbf40f01ac8b4851025f545b0eae538a757b623d52d0fd" -> "sha256:51c54bb6bcf38ab5ab354be770176269165cb224ffcc5c04e036c9edf190e47f" [label=""];
}

