[app/sources/274849868.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:c897d92f494a892a209257e50353f6d334b517efa14cf7000c4913904db794de" [label="/bin/sh -c rpm --import \"http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF\"" shape="box"];
  "sha256:34fd9c424f352fb499ea2ef7a960eb7322396b5237ec864c7f43d8a2128eff58" [label="/bin/sh -c yum-config-manager --add-repo http://download.mono-project.com/repo/centos/" shape="box"];
  "sha256:dc8e83a91803f26341cef2ccb4cb6681937897cef54f93d8a8e9f4474aed5076" [label="/bin/sh -c yum install -y mono" shape="box"];
  "sha256:17edeaf1773acc6b7135d187bb6c5b8012d23970eb41975129c541ef243f8800" [label="/bin/sh -c yum install -y unzip" shape="box"];
  "sha256:4bdbf186b3743d61567167dbb12b9b569bf92a4f83a41c4ab38439a0fb0b89d2" [label="/bin/sh -c yum install -y nuget --nogpgcheck" shape="box"];
  "sha256:ab791152736505acac0abcef14c7eaf6e50b5fcd8f340ad2a233ee0baba9c8b1" [label="/bin/sh -c cp /usr/lib64/libMonoPosixHelper.so /usr/lib/" shape="box"];
  "sha256:2444286b6f8e972ab8e14c89e634681f04994641cfc7f3acfff196872c2b180b" [label="sha256:2444286b6f8e972ab8e14c89e634681f04994641cfc7f3acfff196872c2b180b" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:c897d92f494a892a209257e50353f6d334b517efa14cf7000c4913904db794de" [label=""];
  "sha256:c897d92f494a892a209257e50353f6d334b517efa14cf7000c4913904db794de" -> "sha256:34fd9c424f352fb499ea2ef7a960eb7322396b5237ec864c7f43d8a2128eff58" [label=""];
  "sha256:34fd9c424f352fb499ea2ef7a960eb7322396b5237ec864c7f43d8a2128eff58" -> "sha256:dc8e83a91803f26341cef2ccb4cb6681937897cef54f93d8a8e9f4474aed5076" [label=""];
  "sha256:dc8e83a91803f26341cef2ccb4cb6681937897cef54f93d8a8e9f4474aed5076" -> "sha256:17edeaf1773acc6b7135d187bb6c5b8012d23970eb41975129c541ef243f8800" [label=""];
  "sha256:17edeaf1773acc6b7135d187bb6c5b8012d23970eb41975129c541ef243f8800" -> "sha256:4bdbf186b3743d61567167dbb12b9b569bf92a4f83a41c4ab38439a0fb0b89d2" [label=""];
  "sha256:4bdbf186b3743d61567167dbb12b9b569bf92a4f83a41c4ab38439a0fb0b89d2" -> "sha256:ab791152736505acac0abcef14c7eaf6e50b5fcd8f340ad2a233ee0baba9c8b1" [label=""];
  "sha256:ab791152736505acac0abcef14c7eaf6e50b5fcd8f340ad2a233ee0baba9c8b1" -> "sha256:2444286b6f8e972ab8e14c89e634681f04994641cfc7f3acfff196872c2b180b" [label=""];
}

