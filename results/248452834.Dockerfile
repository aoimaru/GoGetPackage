[app/sources/248452834.Dockerfile]
digraph {
  "sha256:ed88f2bd490ab618a32037930890348a131e9e7f0d3b7fb5b3cf474bd40e4191" [label="local://context" shape="ellipse"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:102e66075b081decf1e1f5753bb3b385ab11953c2885a912383e201ff882ad62" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:e48a8007d98b7836e63d73ee49545cad22fc4daf57831029687a931d93e5bdb3" [label="mkdir{path=/src}" shape="note"];
  "sha256:39a4a19bc283eb70c61d893e6998509926e9a7ea5cbc3f13b704a17e4c20f208" [label="/bin/sh -c go install ." shape="box"];
  "sha256:5738204c95e053d56ec495de4b890d6cb87f5c00cc1f66892231b93990d04162" [label="sha256:5738204c95e053d56ec495de4b890d6cb87f5c00cc1f66892231b93990d04162" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:102e66075b081decf1e1f5753bb3b385ab11953c2885a912383e201ff882ad62" [label=""];
  "sha256:ed88f2bd490ab618a32037930890348a131e9e7f0d3b7fb5b3cf474bd40e4191" -> "sha256:102e66075b081decf1e1f5753bb3b385ab11953c2885a912383e201ff882ad62" [label=""];
  "sha256:102e66075b081decf1e1f5753bb3b385ab11953c2885a912383e201ff882ad62" -> "sha256:e48a8007d98b7836e63d73ee49545cad22fc4daf57831029687a931d93e5bdb3" [label=""];
  "sha256:e48a8007d98b7836e63d73ee49545cad22fc4daf57831029687a931d93e5bdb3" -> "sha256:39a4a19bc283eb70c61d893e6998509926e9a7ea5cbc3f13b704a17e4c20f208" [label=""];
  "sha256:39a4a19bc283eb70c61d893e6998509926e9a7ea5cbc3f13b704a17e4c20f208" -> "sha256:5738204c95e053d56ec495de4b890d6cb87f5c00cc1f66892231b93990d04162" [label=""];
}
