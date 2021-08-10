[app/sources/354029304.Dockerfile]
digraph {
  "sha256:b199801b84ebfb7e5d6991ce715f5b012ff02edb9c76d01db19720a94cf4b200" [label="docker-image://docker.io/iron/base:latest" shape="ellipse"];
  "sha256:62a843e79abc1798ebac876efbe209984001c491749bcd5730ae350e96af5a3a" [label="/bin/sh -c apk add --no-cache python" shape="box"];
  "sha256:f512cf9601efb3469780117681b6253542255d2e8e417e7d8b115f2590711c15" [label="sha256:f512cf9601efb3469780117681b6253542255d2e8e417e7d8b115f2590711c15" shape="plaintext"];
  "sha256:b199801b84ebfb7e5d6991ce715f5b012ff02edb9c76d01db19720a94cf4b200" -> "sha256:62a843e79abc1798ebac876efbe209984001c491749bcd5730ae350e96af5a3a" [label=""];
  "sha256:62a843e79abc1798ebac876efbe209984001c491749bcd5730ae350e96af5a3a" -> "sha256:f512cf9601efb3469780117681b6253542255d2e8e417e7d8b115f2590711c15" [label=""];
}

