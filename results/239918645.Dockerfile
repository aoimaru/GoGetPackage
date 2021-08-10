[app/sources/239918645.Dockerfile]
digraph {
  "sha256:2ab116027a0bdf78df1414f504eb8d0255c9fe48f92f51e05022dd9f0cfd4060" [label="docker-image://docker.io/microsoft/aspnetcore:1.1" shape="ellipse"];
  "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" [label="mkdir{path=/app}" shape="note"];
  "sha256:5485b7e2e277e9b9b98ff99d2bdf5cceb47409c98b4c1d9d6bd671fca953f31e" [label="local://context" shape="ellipse"];
  "sha256:15adf39ba2587a2787b470f5a48ca4c2342e6ed2d1f1ea09852d1bc5e1a197af" [label="copy{src=/obj/Docker/publish, dest=/app/}" shape="note"];
  "sha256:8efc377dc9f562432c741fb2ef771b3279d5a07386af4b8efd49abbeb7edd729" [label="sha256:8efc377dc9f562432c741fb2ef771b3279d5a07386af4b8efd49abbeb7edd729" shape="plaintext"];
  "sha256:2ab116027a0bdf78df1414f504eb8d0255c9fe48f92f51e05022dd9f0cfd4060" -> "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" [label=""];
  "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" -> "sha256:15adf39ba2587a2787b470f5a48ca4c2342e6ed2d1f1ea09852d1bc5e1a197af" [label=""];
  "sha256:5485b7e2e277e9b9b98ff99d2bdf5cceb47409c98b4c1d9d6bd671fca953f31e" -> "sha256:15adf39ba2587a2787b470f5a48ca4c2342e6ed2d1f1ea09852d1bc5e1a197af" [label=""];
  "sha256:15adf39ba2587a2787b470f5a48ca4c2342e6ed2d1f1ea09852d1bc5e1a197af" -> "sha256:8efc377dc9f562432c741fb2ef771b3279d5a07386af4b8efd49abbeb7edd729" [label=""];
}

