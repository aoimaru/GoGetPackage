[app/sources/252785874.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:2baa098ffb959b4a7e0c5850af67937777f615d11239c1716dc6b8a7fa7310dd" [label="local://context" shape="ellipse"];
  "sha256:df241441e053e33042758eeadce2d9f168f63135c6fc5d404d0f766d2f7ccb65" [label="copy{src=/mongodb.repo, dest=/etc/yum.repos.d/}" shape="note"];
  "sha256:efa3635eaa8ada79c5731e9d10291cc8dd5463d4b547939336d1246b722a6d29" [label="/bin/sh -c yum update && yum install -y mongodb-org && chkconfig mongod on && mkdir -p /data/db" shape="box"];
  "sha256:bf6921fa112e51f6f6d1cc14fbf3ac357e9761de4f29db261caea56c03e2b4e3" [label="sha256:bf6921fa112e51f6f6d1cc14fbf3ac357e9761de4f29db261caea56c03e2b4e3" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:df241441e053e33042758eeadce2d9f168f63135c6fc5d404d0f766d2f7ccb65" [label=""];
  "sha256:2baa098ffb959b4a7e0c5850af67937777f615d11239c1716dc6b8a7fa7310dd" -> "sha256:df241441e053e33042758eeadce2d9f168f63135c6fc5d404d0f766d2f7ccb65" [label=""];
  "sha256:df241441e053e33042758eeadce2d9f168f63135c6fc5d404d0f766d2f7ccb65" -> "sha256:efa3635eaa8ada79c5731e9d10291cc8dd5463d4b547939336d1246b722a6d29" [label=""];
  "sha256:efa3635eaa8ada79c5731e9d10291cc8dd5463d4b547939336d1246b722a6d29" -> "sha256:bf6921fa112e51f6f6d1cc14fbf3ac357e9761de4f29db261caea56c03e2b4e3" [label=""];
}

