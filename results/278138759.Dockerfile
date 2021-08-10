[app/sources/278138759.Dockerfile]
digraph {
  "sha256:f86fa8aa6fd964a94217c5c33f6306d4d9e48e2885119b2bc338852146c3d676" [label="docker-image://docker.io/library/alpine:3.9@sha256:414e0518bb9228d35e4cd5165567fb91d26c6a214e9c95899e1e056fcd349011" shape="ellipse"];
  "sha256:4f9fe6a7955bae7306a9685905352740581d02c29b74692b3dc8179e90b628fb" [label="/bin/sh -c apk upgrade --no-cache" shape="box"];
  "sha256:8b080c80ca94bedefcf73a7020339a5cfc9519dffc605abda52d109c11655712" [label="/bin/sh -c apk add --no-cache php php-fpm bash fcgi" shape="box"];
  "sha256:bcd47cfec35326507ff389dc640aabe0e6aba2311b3bb6adbc7c3ccba25a1061" [label="local://context" shape="ellipse"];
  "sha256:61bd8ad3c3ebe531be36a4b6bbc1ec78aa4e986e5fe4033e1b3f742424bdf463" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:13f29362b26e45e624e7f50103655e0fc09bf1e282dacf40104219ec89876ce3" [label="sha256:13f29362b26e45e624e7f50103655e0fc09bf1e282dacf40104219ec89876ce3" shape="plaintext"];
  "sha256:f86fa8aa6fd964a94217c5c33f6306d4d9e48e2885119b2bc338852146c3d676" -> "sha256:4f9fe6a7955bae7306a9685905352740581d02c29b74692b3dc8179e90b628fb" [label=""];
  "sha256:4f9fe6a7955bae7306a9685905352740581d02c29b74692b3dc8179e90b628fb" -> "sha256:8b080c80ca94bedefcf73a7020339a5cfc9519dffc605abda52d109c11655712" [label=""];
  "sha256:8b080c80ca94bedefcf73a7020339a5cfc9519dffc605abda52d109c11655712" -> "sha256:61bd8ad3c3ebe531be36a4b6bbc1ec78aa4e986e5fe4033e1b3f742424bdf463" [label=""];
  "sha256:bcd47cfec35326507ff389dc640aabe0e6aba2311b3bb6adbc7c3ccba25a1061" -> "sha256:61bd8ad3c3ebe531be36a4b6bbc1ec78aa4e986e5fe4033e1b3f742424bdf463" [label=""];
  "sha256:61bd8ad3c3ebe531be36a4b6bbc1ec78aa4e986e5fe4033e1b3f742424bdf463" -> "sha256:13f29362b26e45e624e7f50103655e0fc09bf1e282dacf40104219ec89876ce3" [label=""];
}

