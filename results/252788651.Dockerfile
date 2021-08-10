[app/sources/252788651.Dockerfile]
digraph {
  "sha256:19d8845665f81d69697a3103866d3d8be1bd236bdb5470791178340c887e8dbf" [label="local://context" shape="ellipse"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ac80cde0022bb5dccce8468163b1a1019dfdd9f4d4c6cfcd960d1a159da207d3" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:35e1361d7533cb434affcecda72c622935669e078a3ed02aaedec6ae48c627a9" [label="/bin/sh -c npm install" shape="box"];
  "sha256:c24272c7ed51c3492847bcac204ef5d5fedd0e951318d26efba6e61a8fb993cf" [label="sha256:c24272c7ed51c3492847bcac204ef5d5fedd0e951318d26efba6e61a8fb993cf" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" [label=""];
  "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" -> "sha256:ac80cde0022bb5dccce8468163b1a1019dfdd9f4d4c6cfcd960d1a159da207d3" [label=""];
  "sha256:19d8845665f81d69697a3103866d3d8be1bd236bdb5470791178340c887e8dbf" -> "sha256:ac80cde0022bb5dccce8468163b1a1019dfdd9f4d4c6cfcd960d1a159da207d3" [label=""];
  "sha256:ac80cde0022bb5dccce8468163b1a1019dfdd9f4d4c6cfcd960d1a159da207d3" -> "sha256:35e1361d7533cb434affcecda72c622935669e078a3ed02aaedec6ae48c627a9" [label=""];
  "sha256:35e1361d7533cb434affcecda72c622935669e078a3ed02aaedec6ae48c627a9" -> "sha256:c24272c7ed51c3492847bcac204ef5d5fedd0e951318d26efba6e61a8fb993cf" [label=""];
}

