[app/sources/302828827.Dockerfile]
digraph {
  "sha256:2ab116027a0bdf78df1414f504eb8d0255c9fe48f92f51e05022dd9f0cfd4060" [label="docker-image://docker.io/microsoft/aspnetcore:1.1" shape="ellipse"];
  "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" [label="mkdir{path=/app}" shape="note"];
  "sha256:bd16bdcff7a1f2113bce37033ce1550dcf61263c88a39f79c301bd9c3dea5ad9" [label="local://context" shape="ellipse"];
  "sha256:dd6c57dff6ab4aea475666e8dfd4349ae4859dfcd292a15c3c9049af81359ca8" [label="copy{src=/obj/Docker/publish, dest=/app/}" shape="note"];
  "sha256:51cd4298531bfc19c6b1aad4c8010e23acd55141acf2e87b95821f5b94ff3a21" [label="sha256:51cd4298531bfc19c6b1aad4c8010e23acd55141acf2e87b95821f5b94ff3a21" shape="plaintext"];
  "sha256:2ab116027a0bdf78df1414f504eb8d0255c9fe48f92f51e05022dd9f0cfd4060" -> "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" [label=""];
  "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" -> "sha256:dd6c57dff6ab4aea475666e8dfd4349ae4859dfcd292a15c3c9049af81359ca8" [label=""];
  "sha256:bd16bdcff7a1f2113bce37033ce1550dcf61263c88a39f79c301bd9c3dea5ad9" -> "sha256:dd6c57dff6ab4aea475666e8dfd4349ae4859dfcd292a15c3c9049af81359ca8" [label=""];
  "sha256:dd6c57dff6ab4aea475666e8dfd4349ae4859dfcd292a15c3c9049af81359ca8" -> "sha256:51cd4298531bfc19c6b1aad4c8010e23acd55141acf2e87b95821f5b94ff3a21" [label=""];
}

