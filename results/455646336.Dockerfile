[app/sources/455646336.Dockerfile]
digraph {
  "sha256:2ab116027a0bdf78df1414f504eb8d0255c9fe48f92f51e05022dd9f0cfd4060" [label="docker-image://docker.io/microsoft/aspnetcore:1.1" shape="ellipse"];
  "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" [label="mkdir{path=/app}" shape="note"];
  "sha256:fc36b340845d2b29d42ddb971ae87d0f54b54a1626bedce929e80304586d5a66" [label="local://context" shape="ellipse"];
  "sha256:471efecbf4b7f0516574cf5e9e2d27bf1e92253e48d540294f78e7c68ecc2b16" [label="copy{src=/obj/Docker/publish, dest=/app/}" shape="note"];
  "sha256:f73f86f0f67e07ec72bcc9e45f63a50a0c3ccb9afa6f0079b1011b8da673a989" [label="sha256:f73f86f0f67e07ec72bcc9e45f63a50a0c3ccb9afa6f0079b1011b8da673a989" shape="plaintext"];
  "sha256:2ab116027a0bdf78df1414f504eb8d0255c9fe48f92f51e05022dd9f0cfd4060" -> "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" [label=""];
  "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" -> "sha256:471efecbf4b7f0516574cf5e9e2d27bf1e92253e48d540294f78e7c68ecc2b16" [label=""];
  "sha256:fc36b340845d2b29d42ddb971ae87d0f54b54a1626bedce929e80304586d5a66" -> "sha256:471efecbf4b7f0516574cf5e9e2d27bf1e92253e48d540294f78e7c68ecc2b16" [label=""];
  "sha256:471efecbf4b7f0516574cf5e9e2d27bf1e92253e48d540294f78e7c68ecc2b16" -> "sha256:f73f86f0f67e07ec72bcc9e45f63a50a0c3ccb9afa6f0079b1011b8da673a989" [label=""];
}

