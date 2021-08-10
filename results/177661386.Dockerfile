[app/sources/177661386.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:599b4988edb6860d10858868b8563aa63cf7daf20147afc058293e35aa15ffcc" [label="local://context" shape="ellipse"];
  "sha256:83a5ab40e2a2494772cf088f56263e97c0a8e2f3d1db7aa1966aae877f8e8d04" [label="copy{src=/authproxy.cfg, dest=/opt/duoauthproxy/conf/}" shape="note"];
  "sha256:1470d84e5856551402538ba81e15fbe3d33bde3dc85fde51dcc897236c2d45c3" [label="copy{src=/ca-bundle.crt, dest=/opt/duoauthproxy/conf/}" shape="note"];
  "sha256:9ac6e721f5fd5d88ce943ca54fcd0c2005c060dfc13e1f754db5a2e5fa85d9af" [label="sha256:9ac6e721f5fd5d88ce943ca54fcd0c2005c060dfc13e1f754db5a2e5fa85d9af" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:83a5ab40e2a2494772cf088f56263e97c0a8e2f3d1db7aa1966aae877f8e8d04" [label=""];
  "sha256:599b4988edb6860d10858868b8563aa63cf7daf20147afc058293e35aa15ffcc" -> "sha256:83a5ab40e2a2494772cf088f56263e97c0a8e2f3d1db7aa1966aae877f8e8d04" [label=""];
  "sha256:83a5ab40e2a2494772cf088f56263e97c0a8e2f3d1db7aa1966aae877f8e8d04" -> "sha256:1470d84e5856551402538ba81e15fbe3d33bde3dc85fde51dcc897236c2d45c3" [label=""];
  "sha256:599b4988edb6860d10858868b8563aa63cf7daf20147afc058293e35aa15ffcc" -> "sha256:1470d84e5856551402538ba81e15fbe3d33bde3dc85fde51dcc897236c2d45c3" [label=""];
  "sha256:1470d84e5856551402538ba81e15fbe3d33bde3dc85fde51dcc897236c2d45c3" -> "sha256:9ac6e721f5fd5d88ce943ca54fcd0c2005c060dfc13e1f754db5a2e5fa85d9af" [label=""];
}

