[app/sources/172863522.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:fb7b4694bf9a09b77ed544413075d30f3269091b2174b4b31a1527720fd2f5b3" [label="/bin/sh -c yes | apt-get update" shape="box"];
  "sha256:1fdcf70b373eaf00b1f7ee346b65d24bd3d61191feb96aa0b36ec60eac5b5cac" [label="/bin/sh -c yes | apt-get upgrade" shape="box"];
  "sha256:88b9c29cb87b8819ad25c1a806451d125937939a89085a1b1edd1a408d10b97c" [label="/bin/sh -c yes | apt-get install rake" shape="box"];
  "sha256:b013ee5dde1d25f21f93a83240c04f75cf33a2791e48ac63a1faf42ce717bd97" [label="/bin/sh -c mkdir -p /go/src/github.com/appcanary/agent" shape="box"];
  "sha256:0e68797e14ef5a588c4c3631c522391464446d848b46faa8bf572f09ca39f6ac" [label="/bin/sh -c mkdir -p /root/.ssh" shape="box"];
  "sha256:a121d40de7ade4acb036722425112351385ed7bc4f9ca49b09bfdf8b8611ad42" [label="/bin/sh -c touch /root/.ssh/known_hosts" shape="box"];
  "sha256:cecb9adeec7e66a6dd89595f5574e62ed87c28fe5be4b38c0c2b9d15ea1c3eee" [label="/bin/sh -c ssh-keyscan github.com >> /root/.ssh/known_hosts" shape="box"];
  "sha256:ee831d79bd4f28431452dea473e2e0ebe3a6e7f5c0c8dbd22cacddb54bca03c0" [label="local://context" shape="ellipse"];
  "sha256:d8b8ed14def92cd8bd56b2d2959b670a74b69628bfafaeadd151053f86df7e06" [label="copy{src=/, dest=/go/src/github.com/appcanary/agent}" shape="note"];
  "sha256:c7a76809766c41b2132da1f272a6c2911d328cb057307ca85376f0999a6423ec" [label="mkdir{path=/go/src/github.com/appcanary/agent}" shape="note"];
  "sha256:342f00dc67c8d2b68de69870e1e21159b2b668b060e7885df687a779d8c5408c" [label="/bin/sh -c go get -t -d -v ./..." shape="box"];
  "sha256:63522d99cd945db7d2e11c7558f03c9dccb2ce73c72f03bc4b87fe7461542421" [label="sha256:63522d99cd945db7d2e11c7558f03c9dccb2ce73c72f03bc4b87fe7461542421" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:fb7b4694bf9a09b77ed544413075d30f3269091b2174b4b31a1527720fd2f5b3" [label=""];
  "sha256:fb7b4694bf9a09b77ed544413075d30f3269091b2174b4b31a1527720fd2f5b3" -> "sha256:1fdcf70b373eaf00b1f7ee346b65d24bd3d61191feb96aa0b36ec60eac5b5cac" [label=""];
  "sha256:1fdcf70b373eaf00b1f7ee346b65d24bd3d61191feb96aa0b36ec60eac5b5cac" -> "sha256:88b9c29cb87b8819ad25c1a806451d125937939a89085a1b1edd1a408d10b97c" [label=""];
  "sha256:88b9c29cb87b8819ad25c1a806451d125937939a89085a1b1edd1a408d10b97c" -> "sha256:b013ee5dde1d25f21f93a83240c04f75cf33a2791e48ac63a1faf42ce717bd97" [label=""];
  "sha256:b013ee5dde1d25f21f93a83240c04f75cf33a2791e48ac63a1faf42ce717bd97" -> "sha256:0e68797e14ef5a588c4c3631c522391464446d848b46faa8bf572f09ca39f6ac" [label=""];
  "sha256:0e68797e14ef5a588c4c3631c522391464446d848b46faa8bf572f09ca39f6ac" -> "sha256:a121d40de7ade4acb036722425112351385ed7bc4f9ca49b09bfdf8b8611ad42" [label=""];
  "sha256:a121d40de7ade4acb036722425112351385ed7bc4f9ca49b09bfdf8b8611ad42" -> "sha256:cecb9adeec7e66a6dd89595f5574e62ed87c28fe5be4b38c0c2b9d15ea1c3eee" [label=""];
  "sha256:cecb9adeec7e66a6dd89595f5574e62ed87c28fe5be4b38c0c2b9d15ea1c3eee" -> "sha256:d8b8ed14def92cd8bd56b2d2959b670a74b69628bfafaeadd151053f86df7e06" [label=""];
  "sha256:ee831d79bd4f28431452dea473e2e0ebe3a6e7f5c0c8dbd22cacddb54bca03c0" -> "sha256:d8b8ed14def92cd8bd56b2d2959b670a74b69628bfafaeadd151053f86df7e06" [label=""];
  "sha256:d8b8ed14def92cd8bd56b2d2959b670a74b69628bfafaeadd151053f86df7e06" -> "sha256:c7a76809766c41b2132da1f272a6c2911d328cb057307ca85376f0999a6423ec" [label=""];
  "sha256:c7a76809766c41b2132da1f272a6c2911d328cb057307ca85376f0999a6423ec" -> "sha256:342f00dc67c8d2b68de69870e1e21159b2b668b060e7885df687a779d8c5408c" [label=""];
  "sha256:342f00dc67c8d2b68de69870e1e21159b2b668b060e7885df687a779d8c5408c" -> "sha256:63522d99cd945db7d2e11c7558f03c9dccb2ce73c72f03bc4b87fe7461542421" [label=""];
}

