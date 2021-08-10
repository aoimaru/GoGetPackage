[app/sources/252769445.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:2f5450cbcb118bde4a3abb42705bca5a27bdf3e031851a2b4334434c132eaa82" [label="/bin/sh -c go get github.com/constabulary/gb/..." shape="box"];
  "sha256:516b0222a1bcb1d3f86f7f16dcf3fd77386f6b39705fa3f477e81f0a5b8fbcd1" [label="/bin/sh -c mkdir $APP_HOME" shape="box"];
  "sha256:bab52533a1e30b19d25050d5cfedc302b95be9ab328eaa5fb2f773d645c323e8" [label="mkdir{path=/proxy}" shape="note"];
  "sha256:7bd391c6837a1d31d4359b4b9818e7ff4c1258eee8c6e924debde5c6858980c4" [label="local://context" shape="ellipse"];
  "sha256:0c107859ae14cb1430a492f94e1561aba0d5b36f192c4eb744c2cddb111b36ad" [label="copy{src=/, dest=/proxy}" shape="note"];
  "sha256:bcee26e20c9d7992508d9aa0d034d3ceec836579b2bda9a2d9e85687ae01949d" [label="/bin/sh -c gb build all" shape="box"];
  "sha256:e70cba6db31006ff8917eb804445ad6d0f8f8eef8dcb9fc7fd3c965d85283c05" [label="sha256:e70cba6db31006ff8917eb804445ad6d0f8f8eef8dcb9fc7fd3c965d85283c05" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:2f5450cbcb118bde4a3abb42705bca5a27bdf3e031851a2b4334434c132eaa82" [label=""];
  "sha256:2f5450cbcb118bde4a3abb42705bca5a27bdf3e031851a2b4334434c132eaa82" -> "sha256:516b0222a1bcb1d3f86f7f16dcf3fd77386f6b39705fa3f477e81f0a5b8fbcd1" [label=""];
  "sha256:516b0222a1bcb1d3f86f7f16dcf3fd77386f6b39705fa3f477e81f0a5b8fbcd1" -> "sha256:bab52533a1e30b19d25050d5cfedc302b95be9ab328eaa5fb2f773d645c323e8" [label=""];
  "sha256:bab52533a1e30b19d25050d5cfedc302b95be9ab328eaa5fb2f773d645c323e8" -> "sha256:0c107859ae14cb1430a492f94e1561aba0d5b36f192c4eb744c2cddb111b36ad" [label=""];
  "sha256:7bd391c6837a1d31d4359b4b9818e7ff4c1258eee8c6e924debde5c6858980c4" -> "sha256:0c107859ae14cb1430a492f94e1561aba0d5b36f192c4eb744c2cddb111b36ad" [label=""];
  "sha256:0c107859ae14cb1430a492f94e1561aba0d5b36f192c4eb744c2cddb111b36ad" -> "sha256:bcee26e20c9d7992508d9aa0d034d3ceec836579b2bda9a2d9e85687ae01949d" [label=""];
  "sha256:bcee26e20c9d7992508d9aa0d034d3ceec836579b2bda9a2d9e85687ae01949d" -> "sha256:e70cba6db31006ff8917eb804445ad6d0f8f8eef8dcb9fc7fd3c965d85283c05" [label=""];
}

