[app/sources/252773626.Dockerfile]
digraph {
  "sha256:12bd236f3ba7ed87631b52ed58b51dc99a23d97eed4442044167d8d58763fe71" [label="docker-image://docker.io/pritunl/archlinux:latest" shape="ellipse"];
  "sha256:fe7f9ab1d4e0be3c6c2054b7b40c03e270d5ba96021c84725eebd78a1199d813" [label="/bin/sh -c pacman -S --noconfirm python-virtualenvwrapper" shape="box"];
  "sha256:c2552b38f0769cc4582b45848ddbccf88c6ab7a001e60f0e6f70af42801b5b1b" [label="sha256:c2552b38f0769cc4582b45848ddbccf88c6ab7a001e60f0e6f70af42801b5b1b" shape="plaintext"];
  "sha256:12bd236f3ba7ed87631b52ed58b51dc99a23d97eed4442044167d8d58763fe71" -> "sha256:fe7f9ab1d4e0be3c6c2054b7b40c03e270d5ba96021c84725eebd78a1199d813" [label=""];
  "sha256:fe7f9ab1d4e0be3c6c2054b7b40c03e270d5ba96021c84725eebd78a1199d813" -> "sha256:c2552b38f0769cc4582b45848ddbccf88c6ab7a001e60f0e6f70af42801b5b1b" [label=""];
}

