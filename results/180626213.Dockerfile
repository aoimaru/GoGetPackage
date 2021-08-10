[app/sources/180626213.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:b37080df2d6766153fd47efc2cd2dfe80e498ab74a8289513c5a4ef4d6312374" [label="local://context" shape="ellipse"];
  "sha256:ef0c688485292dcab82a62e6f6eade7484d7a67fd6f7d55b8df78bf6cf521aaf" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:47bc43585e2a2a99e219763e372d5283a534ae11a8ebd3a1993fde6118c40956" [label="sha256:47bc43585e2a2a99e219763e372d5283a534ae11a8ebd3a1993fde6118c40956" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:ef0c688485292dcab82a62e6f6eade7484d7a67fd6f7d55b8df78bf6cf521aaf" [label=""];
  "sha256:b37080df2d6766153fd47efc2cd2dfe80e498ab74a8289513c5a4ef4d6312374" -> "sha256:ef0c688485292dcab82a62e6f6eade7484d7a67fd6f7d55b8df78bf6cf521aaf" [label=""];
  "sha256:ef0c688485292dcab82a62e6f6eade7484d7a67fd6f7d55b8df78bf6cf521aaf" -> "sha256:47bc43585e2a2a99e219763e372d5283a534ae11a8ebd3a1993fde6118c40956" [label=""];
}

