[app/sources/162754269.Dockerfile]
digraph {
  "sha256:66c88742907784a3b96335cfdae30183c2db7ba4ed50b076a4f77eba52101824" [label="docker-image://docker.io/centos/ruby-22-centos7:latest" shape="ellipse"];
  "sha256:686064b8d34f80d2cb701c32332b8f558ed75a919d60c9cf9c8e16fe2fa4e0cf" [label="local://context" shape="ellipse"];
  "sha256:3503eb19585181d4f88123aba2f3d5b38896177a7b5d2e6310a0439fdd9aade7" [label="copy{src=/, dest=/opt/app-root/src/}" shape="note"];
  "sha256:8535699bd31f961b2993e5237390ce649aaff5b905e2b857da12a50458192175" [label="/bin/sh -c scl enable rh-ruby22 \"bundle install\"" shape="box"];
  "sha256:373142aa801738edeae4418f70b9eb3a4aa733f0f52d3d763c4db8986136f89d" [label="sha256:373142aa801738edeae4418f70b9eb3a4aa733f0f52d3d763c4db8986136f89d" shape="plaintext"];
  "sha256:66c88742907784a3b96335cfdae30183c2db7ba4ed50b076a4f77eba52101824" -> "sha256:3503eb19585181d4f88123aba2f3d5b38896177a7b5d2e6310a0439fdd9aade7" [label=""];
  "sha256:686064b8d34f80d2cb701c32332b8f558ed75a919d60c9cf9c8e16fe2fa4e0cf" -> "sha256:3503eb19585181d4f88123aba2f3d5b38896177a7b5d2e6310a0439fdd9aade7" [label=""];
  "sha256:3503eb19585181d4f88123aba2f3d5b38896177a7b5d2e6310a0439fdd9aade7" -> "sha256:8535699bd31f961b2993e5237390ce649aaff5b905e2b857da12a50458192175" [label=""];
  "sha256:8535699bd31f961b2993e5237390ce649aaff5b905e2b857da12a50458192175" -> "sha256:373142aa801738edeae4418f70b9eb3a4aa733f0f52d3d763c4db8986136f89d" [label=""];
}

