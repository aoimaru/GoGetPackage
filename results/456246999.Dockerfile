[app/sources/456246999.Dockerfile]
digraph {
  "sha256:bc235470cafe269046bd9cbfd5983c5279923605b894ef1b6c09d369a3827840" [label="local://context" shape="ellipse"];
  "sha256:2ab116027a0bdf78df1414f504eb8d0255c9fe48f92f51e05022dd9f0cfd4060" [label="docker-image://docker.io/microsoft/aspnetcore:1.1" shape="ellipse"];
  "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" [label="mkdir{path=/app}" shape="note"];
  "sha256:e0403da9947163f7bce4e400ed9416a415f2f801a872776c9139af1c6d9ba8ad" [label="copy{src=/obj/Docker/publish, dest=/app/}" shape="note"];
  "sha256:9ca51eb9996a6699ecefd44b439cdc7923ef822086daa34fc0eef22ccc220613" [label="sha256:9ca51eb9996a6699ecefd44b439cdc7923ef822086daa34fc0eef22ccc220613" shape="plaintext"];
  "sha256:2ab116027a0bdf78df1414f504eb8d0255c9fe48f92f51e05022dd9f0cfd4060" -> "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" [label=""];
  "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" -> "sha256:e0403da9947163f7bce4e400ed9416a415f2f801a872776c9139af1c6d9ba8ad" [label=""];
  "sha256:bc235470cafe269046bd9cbfd5983c5279923605b894ef1b6c09d369a3827840" -> "sha256:e0403da9947163f7bce4e400ed9416a415f2f801a872776c9139af1c6d9ba8ad" [label=""];
  "sha256:e0403da9947163f7bce4e400ed9416a415f2f801a872776c9139af1c6d9ba8ad" -> "sha256:9ca51eb9996a6699ecefd44b439cdc7923ef822086daa34fc0eef22ccc220613" [label=""];
}

