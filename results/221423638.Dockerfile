[app/sources/221423638.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:30366618c6caed9e09ae3fbd8f00538928dd7cf3051bb80a7d4fbe40c78a011b" [label="local://context" shape="ellipse"];
  "sha256:870cda4de37886cca0443bf8b2d009c9c416822631ec752851260587d8d69ec3" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:887fe363569a8ec743e91f6e80445627f77074851e37e45c7060ba2a43b596b4" [label="sha256:887fe363569a8ec743e91f6e80445627f77074851e37e45c7060ba2a43b596b4" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:870cda4de37886cca0443bf8b2d009c9c416822631ec752851260587d8d69ec3" [label=""];
  "sha256:30366618c6caed9e09ae3fbd8f00538928dd7cf3051bb80a7d4fbe40c78a011b" -> "sha256:870cda4de37886cca0443bf8b2d009c9c416822631ec752851260587d8d69ec3" [label=""];
  "sha256:870cda4de37886cca0443bf8b2d009c9c416822631ec752851260587d8d69ec3" -> "sha256:887fe363569a8ec743e91f6e80445627f77074851e37e45c7060ba2a43b596b4" [label=""];
}
