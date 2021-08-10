[app/sources/197590947.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:93a5895db14110b73625ccb3a2a46a7a6e8ea8603fdedf12cf67ce4f9c6c1c20" [label="/bin/sh -c apt-get update -y && apt-get install python git -y" shape="box"];
  "sha256:02a9d295e254174439aee936260cc1b2b58822bcad6652330d51c0cf3bb095b0" [label="local://context" shape="ellipse"];
  "sha256:71bff857a6107411fa2484b97574b6fee5a2dc0f72f0a23ede080656fdf22a47" [label="copy{src=/install_pkg.sh, dest=/}" shape="note"];
  "sha256:e82f2987a7d1da6d808985fcdc500e84d15115b99a5747a5c7e1489af00d77f3" [label="sha256:e82f2987a7d1da6d808985fcdc500e84d15115b99a5747a5c7e1489af00d77f3" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:93a5895db14110b73625ccb3a2a46a7a6e8ea8603fdedf12cf67ce4f9c6c1c20" [label=""];
  "sha256:93a5895db14110b73625ccb3a2a46a7a6e8ea8603fdedf12cf67ce4f9c6c1c20" -> "sha256:71bff857a6107411fa2484b97574b6fee5a2dc0f72f0a23ede080656fdf22a47" [label=""];
  "sha256:02a9d295e254174439aee936260cc1b2b58822bcad6652330d51c0cf3bb095b0" -> "sha256:71bff857a6107411fa2484b97574b6fee5a2dc0f72f0a23ede080656fdf22a47" [label=""];
  "sha256:71bff857a6107411fa2484b97574b6fee5a2dc0f72f0a23ede080656fdf22a47" -> "sha256:e82f2987a7d1da6d808985fcdc500e84d15115b99a5747a5c7e1489af00d77f3" [label=""];
}

