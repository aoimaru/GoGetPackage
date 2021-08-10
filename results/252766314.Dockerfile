[app/sources/252766314.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:b0e3d81bc0f2a9ec54c9789919721b7b21a1e7c4775fef70cb577cbf5a09fa44" [label="local://context" shape="ellipse"];
  "sha256:93c0293b6b2672bedd7ff22ea64ecf24162b9304936af8791d2158349aeb33b5" [label="copy{src=/, dest=/go/src/github.com/abhiyerra/sarpa}" shape="note"];
  "sha256:2487cd4c9b3d1061b750607bff1c66c9de39ebfbffc02182f97c6d9e5aac7cd5" [label="/bin/sh -c cd /go/src/github.com/abhiyerra/sarpa && go get ./..." shape="box"];
  "sha256:72d0670cfde11984593bdc921c1c7ea4480f9238bc5f074b39a071c0dfedb6a5" [label="/bin/sh -c go install github.com/abhiyerra/sarpa" shape="box"];
  "sha256:47588c4c57184989595cf58ecaf3d8ccddfd08eaf863dc425c1ac714430d2dd6" [label="mkdir{path=/go/src/github.com/abhiyerra/sarpa}" shape="note"];
  "sha256:c438f84f69d14b7a9b4ee974415cbbedf6ed9b56311938e948c36b95a2bbef99" [label="sha256:c438f84f69d14b7a9b4ee974415cbbedf6ed9b56311938e948c36b95a2bbef99" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:93c0293b6b2672bedd7ff22ea64ecf24162b9304936af8791d2158349aeb33b5" [label=""];
  "sha256:b0e3d81bc0f2a9ec54c9789919721b7b21a1e7c4775fef70cb577cbf5a09fa44" -> "sha256:93c0293b6b2672bedd7ff22ea64ecf24162b9304936af8791d2158349aeb33b5" [label=""];
  "sha256:93c0293b6b2672bedd7ff22ea64ecf24162b9304936af8791d2158349aeb33b5" -> "sha256:2487cd4c9b3d1061b750607bff1c66c9de39ebfbffc02182f97c6d9e5aac7cd5" [label=""];
  "sha256:2487cd4c9b3d1061b750607bff1c66c9de39ebfbffc02182f97c6d9e5aac7cd5" -> "sha256:72d0670cfde11984593bdc921c1c7ea4480f9238bc5f074b39a071c0dfedb6a5" [label=""];
  "sha256:72d0670cfde11984593bdc921c1c7ea4480f9238bc5f074b39a071c0dfedb6a5" -> "sha256:47588c4c57184989595cf58ecaf3d8ccddfd08eaf863dc425c1ac714430d2dd6" [label=""];
  "sha256:47588c4c57184989595cf58ecaf3d8ccddfd08eaf863dc425c1ac714430d2dd6" -> "sha256:c438f84f69d14b7a9b4ee974415cbbedf6ed9b56311938e948c36b95a2bbef99" [label=""];
}

