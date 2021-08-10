[app/sources/395873337.Dockerfile]
digraph {
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" [label="docker-image://docker.io/library/mysql:5.7" shape="ellipse"];
  "sha256:94efef55f7f25b9cb8b72c95ca007f7485b380b78aba78ea7d0a95d3d35788b1" [label="local://context" shape="ellipse"];
  "sha256:e4cbff0b98375bb838f420cb049c7f69b01a83601eb61e0b350e2bd4e6cfdaab" [label="copy{src=/Docker/mysql/conf.d/my.cnf, dest=/etc/mysql/conf.d/my.cnf}" shape="note"];
  "sha256:dac17b568d831ce99bd386dd11a38b3dc8bf5d3382b36fd53d7672bac828a8f6" [label="sha256:dac17b568d831ce99bd386dd11a38b3dc8bf5d3382b36fd53d7672bac828a8f6" shape="plaintext"];
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" -> "sha256:e4cbff0b98375bb838f420cb049c7f69b01a83601eb61e0b350e2bd4e6cfdaab" [label=""];
  "sha256:94efef55f7f25b9cb8b72c95ca007f7485b380b78aba78ea7d0a95d3d35788b1" -> "sha256:e4cbff0b98375bb838f420cb049c7f69b01a83601eb61e0b350e2bd4e6cfdaab" [label=""];
  "sha256:e4cbff0b98375bb838f420cb049c7f69b01a83601eb61e0b350e2bd4e6cfdaab" -> "sha256:dac17b568d831ce99bd386dd11a38b3dc8bf5d3382b36fd53d7672bac828a8f6" [label=""];
}

