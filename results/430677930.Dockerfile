[app/sources/430677930.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:f5b05bb32abd2d6f430e1cbb4268d162c27c4995e92a2c2f84dd060f59a721f3" [label="/bin/sh -c mkdir project_tuttle mkdir project_tuttle/tuttle && apt-get update && apt-get install -y python python-pip python-virtualenv dh-virtualenv debhelper" shape="box"];
  "sha256:e2673d0f3f2596556e322296a3e0068ce2300360a245b893fe7e04c43e3b549b" [label="local://context" shape="ellipse"];
  "sha256:36441602fc7270248d875fd6ddd193090470e54037d5c38940e41593e88a0a89" [label="copy{src=/tuttle, dest=/project_tuttle/tuttle/tuttle/}" shape="note"];
  "sha256:456e169579c1dff33210eef9eeaed2342411e1cc79dc14d445ec0ee972260833" [label="copy{src=/bin, dest=/project_tuttle/tuttle/bin/}" shape="note"];
  "sha256:663627e424738114f70eb5aa12f8ffafc351a2e44facf4060ab4f4e3cba9ba3e" [label="copy{src=/debian, dest=/project_tuttle/tuttle/debian/}" shape="note"];
  "sha256:f101cdc9fefc0cd65d70aef6dc7ebcb1ff46492934c60f92e861c0519bff91c9" [label="copy{src=/setup.py, dest=/project_tuttle/tuttle/},copy{src=/requirements.txt, dest=/project_tuttle/tuttle/}" shape="note"];
  "sha256:a338e68e7d4eb476a2fd7aaf101931e210f45361171db78067b695b2d5f8179d" [label="mkdir{path=/project_tuttle/tuttle}" shape="note"];
  "sha256:ad5bda49effee556ac6a6cbcd770ecd22a7f07162f84ab4e39e9f25e3d793945" [label="/bin/sh -c virtualenv env_tuttle && . env_tuttle/bin/activate && pip install -r requirements.txt" shape="box"];
  "sha256:2fe98c9e7ed1be2f8d500f1c420008a34c9b2a8040ec6728b4c6e995a428dd43" [label="sha256:2fe98c9e7ed1be2f8d500f1c420008a34c9b2a8040ec6728b4c6e995a428dd43" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:f5b05bb32abd2d6f430e1cbb4268d162c27c4995e92a2c2f84dd060f59a721f3" [label=""];
  "sha256:f5b05bb32abd2d6f430e1cbb4268d162c27c4995e92a2c2f84dd060f59a721f3" -> "sha256:36441602fc7270248d875fd6ddd193090470e54037d5c38940e41593e88a0a89" [label=""];
  "sha256:e2673d0f3f2596556e322296a3e0068ce2300360a245b893fe7e04c43e3b549b" -> "sha256:36441602fc7270248d875fd6ddd193090470e54037d5c38940e41593e88a0a89" [label=""];
  "sha256:36441602fc7270248d875fd6ddd193090470e54037d5c38940e41593e88a0a89" -> "sha256:456e169579c1dff33210eef9eeaed2342411e1cc79dc14d445ec0ee972260833" [label=""];
  "sha256:e2673d0f3f2596556e322296a3e0068ce2300360a245b893fe7e04c43e3b549b" -> "sha256:456e169579c1dff33210eef9eeaed2342411e1cc79dc14d445ec0ee972260833" [label=""];
  "sha256:456e169579c1dff33210eef9eeaed2342411e1cc79dc14d445ec0ee972260833" -> "sha256:663627e424738114f70eb5aa12f8ffafc351a2e44facf4060ab4f4e3cba9ba3e" [label=""];
  "sha256:e2673d0f3f2596556e322296a3e0068ce2300360a245b893fe7e04c43e3b549b" -> "sha256:663627e424738114f70eb5aa12f8ffafc351a2e44facf4060ab4f4e3cba9ba3e" [label=""];
  "sha256:663627e424738114f70eb5aa12f8ffafc351a2e44facf4060ab4f4e3cba9ba3e" -> "sha256:f101cdc9fefc0cd65d70aef6dc7ebcb1ff46492934c60f92e861c0519bff91c9" [label=""];
  "sha256:e2673d0f3f2596556e322296a3e0068ce2300360a245b893fe7e04c43e3b549b" -> "sha256:f101cdc9fefc0cd65d70aef6dc7ebcb1ff46492934c60f92e861c0519bff91c9" [label=""];
  "sha256:f101cdc9fefc0cd65d70aef6dc7ebcb1ff46492934c60f92e861c0519bff91c9" -> "sha256:a338e68e7d4eb476a2fd7aaf101931e210f45361171db78067b695b2d5f8179d" [label=""];
  "sha256:a338e68e7d4eb476a2fd7aaf101931e210f45361171db78067b695b2d5f8179d" -> "sha256:ad5bda49effee556ac6a6cbcd770ecd22a7f07162f84ab4e39e9f25e3d793945" [label=""];
  "sha256:ad5bda49effee556ac6a6cbcd770ecd22a7f07162f84ab4e39e9f25e3d793945" -> "sha256:2fe98c9e7ed1be2f8d500f1c420008a34c9b2a8040ec6728b4c6e995a428dd43" [label=""];
}

