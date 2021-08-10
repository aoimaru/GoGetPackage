[app/sources/232588866.Dockerfile]
digraph {
  "sha256:2ab116027a0bdf78df1414f504eb8d0255c9fe48f92f51e05022dd9f0cfd4060" [label="docker-image://docker.io/microsoft/aspnetcore:1.1" shape="ellipse"];
  "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" [label="mkdir{path=/app}" shape="note"];
  "sha256:fdf3c46c49305fa9457c3042b6f83af02a49384b2eab08f8a5e25d9639e2df1e" [label="local://context" shape="ellipse"];
  "sha256:02823aa80650f6e888ca338daeeaae98d8e19caca90a02035b9105ea67517ba3" [label="copy{src=/obj/Docker/publish, dest=/app/}" shape="note"];
  "sha256:2c20f420a1ffbf6daa565ce5bdb9d3072f581f2e6661ec673070fb0dd6ca6a97" [label="sha256:2c20f420a1ffbf6daa565ce5bdb9d3072f581f2e6661ec673070fb0dd6ca6a97" shape="plaintext"];
  "sha256:2ab116027a0bdf78df1414f504eb8d0255c9fe48f92f51e05022dd9f0cfd4060" -> "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" [label=""];
  "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" -> "sha256:02823aa80650f6e888ca338daeeaae98d8e19caca90a02035b9105ea67517ba3" [label=""];
  "sha256:fdf3c46c49305fa9457c3042b6f83af02a49384b2eab08f8a5e25d9639e2df1e" -> "sha256:02823aa80650f6e888ca338daeeaae98d8e19caca90a02035b9105ea67517ba3" [label=""];
  "sha256:02823aa80650f6e888ca338daeeaae98d8e19caca90a02035b9105ea67517ba3" -> "sha256:2c20f420a1ffbf6daa565ce5bdb9d3072f581f2e6661ec673070fb0dd6ca6a97" [label=""];
}

