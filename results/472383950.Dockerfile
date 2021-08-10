[app/sources/472383950.Dockerfile]
digraph {
  "sha256:03228aa65a4b5a575297d11636b228f67e213413810e4670111dec73762111cf" [label="docker-image://docker.io/rigetti/rpcq:latest" shape="ellipse"];
  "sha256:6a31203c04b4d60b2faed54eae540c7315fca9a5bdb6eb8e3b39280948347157" [label="local://context" shape="ellipse"];
  "sha256:aa229da3e21150d175c1dd8f7133929678ccea085674325f3e4fa7104ccbc573" [label="copy{src=/Makefile, dest=/src/quilc/Makefile}" shape="note"];
  "sha256:1604c0cf16d6cb69e15e0c67b9b5783c9fe9e220306ade150e0825b1949381f8" [label="mkdir{path=/src/quilc}" shape="note"];
  "sha256:7000a18bc92a7f78a9fd229a2c6de428fdaa2c64fbd3364c2f1a587c901f7977" [label="/bin/sh -c make dump-version-info install-test-deps" shape="box"];
  "sha256:e7b79155282a0ecae0e6cfaa1a75f409b624754ad7eb3ae23898daeed115e8cd" [label="copy{src=/, dest=/src/quilc}" shape="note"];
  "sha256:bba789458bd85f4be14e4a82f58db109c1eb6fcdd4364546b8e5ad648139b796" [label="mkdir{path=/src/quilc}" shape="note"];
  "sha256:f60ba9f414cfd7423281cb599d85d16fe850ae5d8bc64f95f07c345cc0f21a86" [label="/bin/sh -c git clean -fdx && make ${build_target}" shape="box"];
  "sha256:0bfebb23405bc85a4b4b186f52648ef4f21e4d4417ac9f8381236081df68a363" [label="sha256:0bfebb23405bc85a4b4b186f52648ef4f21e4d4417ac9f8381236081df68a363" shape="plaintext"];
  "sha256:03228aa65a4b5a575297d11636b228f67e213413810e4670111dec73762111cf" -> "sha256:aa229da3e21150d175c1dd8f7133929678ccea085674325f3e4fa7104ccbc573" [label=""];
  "sha256:6a31203c04b4d60b2faed54eae540c7315fca9a5bdb6eb8e3b39280948347157" -> "sha256:aa229da3e21150d175c1dd8f7133929678ccea085674325f3e4fa7104ccbc573" [label=""];
  "sha256:aa229da3e21150d175c1dd8f7133929678ccea085674325f3e4fa7104ccbc573" -> "sha256:1604c0cf16d6cb69e15e0c67b9b5783c9fe9e220306ade150e0825b1949381f8" [label=""];
  "sha256:1604c0cf16d6cb69e15e0c67b9b5783c9fe9e220306ade150e0825b1949381f8" -> "sha256:7000a18bc92a7f78a9fd229a2c6de428fdaa2c64fbd3364c2f1a587c901f7977" [label=""];
  "sha256:7000a18bc92a7f78a9fd229a2c6de428fdaa2c64fbd3364c2f1a587c901f7977" -> "sha256:e7b79155282a0ecae0e6cfaa1a75f409b624754ad7eb3ae23898daeed115e8cd" [label=""];
  "sha256:6a31203c04b4d60b2faed54eae540c7315fca9a5bdb6eb8e3b39280948347157" -> "sha256:e7b79155282a0ecae0e6cfaa1a75f409b624754ad7eb3ae23898daeed115e8cd" [label=""];
  "sha256:e7b79155282a0ecae0e6cfaa1a75f409b624754ad7eb3ae23898daeed115e8cd" -> "sha256:bba789458bd85f4be14e4a82f58db109c1eb6fcdd4364546b8e5ad648139b796" [label=""];
  "sha256:bba789458bd85f4be14e4a82f58db109c1eb6fcdd4364546b8e5ad648139b796" -> "sha256:f60ba9f414cfd7423281cb599d85d16fe850ae5d8bc64f95f07c345cc0f21a86" [label=""];
  "sha256:f60ba9f414cfd7423281cb599d85d16fe850ae5d8bc64f95f07c345cc0f21a86" -> "sha256:0bfebb23405bc85a4b4b186f52648ef4f21e4d4417ac9f8381236081df68a363" [label=""];
}

