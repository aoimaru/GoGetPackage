[app/sources/352700450.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:3d7950b144be05f9d0bd59186b8a18d06ac547cf7b3618a0265f9e98dec7ea3b" [label="local://context" shape="ellipse"];
  "sha256:4a65351d2b6f06ef3c145ea6e725ebff9d8762d145398e6b764b6d105b2a4ce8" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:72b8d913fbab79cd3faf690f11137a8d39224cc022eabb65938bd5e3f0268fdd" [label="sha256:72b8d913fbab79cd3faf690f11137a8d39224cc022eabb65938bd5e3f0268fdd" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:4a65351d2b6f06ef3c145ea6e725ebff9d8762d145398e6b764b6d105b2a4ce8" [label=""];
  "sha256:3d7950b144be05f9d0bd59186b8a18d06ac547cf7b3618a0265f9e98dec7ea3b" -> "sha256:4a65351d2b6f06ef3c145ea6e725ebff9d8762d145398e6b764b6d105b2a4ce8" [label=""];
  "sha256:4a65351d2b6f06ef3c145ea6e725ebff9d8762d145398e6b764b6d105b2a4ce8" -> "sha256:72b8d913fbab79cd3faf690f11137a8d39224cc022eabb65938bd5e3f0268fdd" [label=""];
}

