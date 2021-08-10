[app/sources/471387366.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:42f1444443b71a9bc50bd0a62ec436a9010fdad536884dc8ac81c1c1043be709" [label="local://context" shape="ellipse"];
  "sha256:3f0914f3c4e245b3aef731bc66779d04863cb6c149b21ddf4269d917542926fb" [label="copy{src=/bin/driver, dest=/usr/local/bin/},copy{src=/deployer, dest=/usr/local/bin/}" shape="note"];
  "sha256:4289a9ff846bac2389c69104c2438a218cfd658b4db0e1b1fb2cf005ec85d49b" [label="sha256:4289a9ff846bac2389c69104c2438a218cfd658b4db0e1b1fb2cf005ec85d49b" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:3f0914f3c4e245b3aef731bc66779d04863cb6c149b21ddf4269d917542926fb" [label=""];
  "sha256:42f1444443b71a9bc50bd0a62ec436a9010fdad536884dc8ac81c1c1043be709" -> "sha256:3f0914f3c4e245b3aef731bc66779d04863cb6c149b21ddf4269d917542926fb" [label=""];
  "sha256:3f0914f3c4e245b3aef731bc66779d04863cb6c149b21ddf4269d917542926fb" -> "sha256:4289a9ff846bac2389c69104c2438a218cfd658b4db0e1b1fb2cf005ec85d49b" [label=""];
}

