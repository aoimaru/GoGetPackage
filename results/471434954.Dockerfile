[app/sources/471434954.Dockerfile]
digraph {
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:944247f9435d99e65a62e4196a686e13e7f891f82e5491996f28fdd01861f54a" [label="mkdir{path=/github/workspace}" shape="note"];
  "sha256:370f023fb2ce46e92cbffa8f24c34f3a264373f9f02b8623d62f76af81c3d638" [label="/bin/sh -c go get -u golang.org/x/lint/golint" shape="box"];
  "sha256:4957e52787a28979d90022b36546b979c91b1700539dc2abd7396a6168fc02c6" [label="sha256:4957e52787a28979d90022b36546b979c91b1700539dc2abd7396a6168fc02c6" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:944247f9435d99e65a62e4196a686e13e7f891f82e5491996f28fdd01861f54a" [label=""];
  "sha256:944247f9435d99e65a62e4196a686e13e7f891f82e5491996f28fdd01861f54a" -> "sha256:370f023fb2ce46e92cbffa8f24c34f3a264373f9f02b8623d62f76af81c3d638" [label=""];
  "sha256:370f023fb2ce46e92cbffa8f24c34f3a264373f9f02b8623d62f76af81c3d638" -> "sha256:4957e52787a28979d90022b36546b979c91b1700539dc2abd7396a6168fc02c6" [label=""];
}
