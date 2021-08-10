[app/sources/477480558.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:944d1473f7ec08127ab1541172ff1fbf0b4f8648e5645a420cc053cdfb50347a" [label="/bin/sh -c apk update && apk add git" shape="box"];
  "sha256:507e5e9b761a987e4809768135b66c07026ccaec73ec70abc3404dcd1572d17a" [label="/bin/sh -c mkdir -p /src/github.com/gammons/" shape="box"];
  "sha256:61d1ee9c53ee434e01cbe1672aac23f832ffce22ea05c1ed1f5bef8e491b5705" [label="/bin/sh -c go-wrapper download github.com/gammons/todolist" shape="box"];
  "sha256:40f87fcec52d5137e6b4f8387a8fc62010b1808b266202cc2ab091bded76fe1f" [label="/bin/sh -c go-wrapper install github.com/gammons/todolist" shape="box"];
  "sha256:3112b7357049cff6d40b7d7d1b3cb2a3618d1efaa4c5e5ef111908e573121fcb" [label="/bin/sh -c ln -s /.todos.json $HOME/.todos.json" shape="box"];
  "sha256:b77381e4c9c7e20aded65fc181c0c0fb422f639ba1202885a1e99e7bf2d9cb23" [label="sha256:b77381e4c9c7e20aded65fc181c0c0fb422f639ba1202885a1e99e7bf2d9cb23" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:944d1473f7ec08127ab1541172ff1fbf0b4f8648e5645a420cc053cdfb50347a" [label=""];
  "sha256:944d1473f7ec08127ab1541172ff1fbf0b4f8648e5645a420cc053cdfb50347a" -> "sha256:507e5e9b761a987e4809768135b66c07026ccaec73ec70abc3404dcd1572d17a" [label=""];
  "sha256:507e5e9b761a987e4809768135b66c07026ccaec73ec70abc3404dcd1572d17a" -> "sha256:61d1ee9c53ee434e01cbe1672aac23f832ffce22ea05c1ed1f5bef8e491b5705" [label=""];
  "sha256:61d1ee9c53ee434e01cbe1672aac23f832ffce22ea05c1ed1f5bef8e491b5705" -> "sha256:40f87fcec52d5137e6b4f8387a8fc62010b1808b266202cc2ab091bded76fe1f" [label=""];
  "sha256:40f87fcec52d5137e6b4f8387a8fc62010b1808b266202cc2ab091bded76fe1f" -> "sha256:3112b7357049cff6d40b7d7d1b3cb2a3618d1efaa4c5e5ef111908e573121fcb" [label=""];
  "sha256:3112b7357049cff6d40b7d7d1b3cb2a3618d1efaa4c5e5ef111908e573121fcb" -> "sha256:b77381e4c9c7e20aded65fc181c0c0fb422f639ba1202885a1e99e7bf2d9cb23" [label=""];
}

