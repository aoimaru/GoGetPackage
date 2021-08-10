[app/sources/336877890.Dockerfile]
digraph {
  "sha256:28b01ba58a74b5fd13a0c95031d4c22c07082981df3719c0b2df2c2e8cf78c7a" [label="local://context" shape="ellipse"];
  "sha256:ca3f5e7d9849e5f746c382d39345bda6d6e27d1393a2dee5c89af3371b99d315" [label="docker-image://docker.io/evilbeaver/oscript-web:dev" shape="ellipse"];
  "sha256:5b8ba937429e525a353f915b9d9354298b3d3a7cd21fdd57eba040604d3f596b" [label="docker-image://docker.io/a4neg/1c-centos7-docker:latest" shape="ellipse"];
  "sha256:1ad9c973bb3fe9f4f5cff285754110e4254d68d0acdcfb6a622d2b5b7fec8488" [label="copy{src=/opt/1C/v8.3/x86_64, dest=/opt/1C/v8.3/x86_64}" shape="note"];
  "sha256:dd382fab64177d276a99c1af50491a339d131b0522380225b2097a3d24259fbd" [label="copy{src=/src, dest=/app}" shape="note"];
  "sha256:0f7170bc9bdc2c6ba6e1e20a7a28ca272426498ab58fede9adb2d960c34f2d42" [label="sha256:0f7170bc9bdc2c6ba6e1e20a7a28ca272426498ab58fede9adb2d960c34f2d42" shape="plaintext"];
  "sha256:ca3f5e7d9849e5f746c382d39345bda6d6e27d1393a2dee5c89af3371b99d315" -> "sha256:1ad9c973bb3fe9f4f5cff285754110e4254d68d0acdcfb6a622d2b5b7fec8488" [label=""];
  "sha256:5b8ba937429e525a353f915b9d9354298b3d3a7cd21fdd57eba040604d3f596b" -> "sha256:1ad9c973bb3fe9f4f5cff285754110e4254d68d0acdcfb6a622d2b5b7fec8488" [label=""];
  "sha256:1ad9c973bb3fe9f4f5cff285754110e4254d68d0acdcfb6a622d2b5b7fec8488" -> "sha256:dd382fab64177d276a99c1af50491a339d131b0522380225b2097a3d24259fbd" [label=""];
  "sha256:28b01ba58a74b5fd13a0c95031d4c22c07082981df3719c0b2df2c2e8cf78c7a" -> "sha256:dd382fab64177d276a99c1af50491a339d131b0522380225b2097a3d24259fbd" [label=""];
  "sha256:dd382fab64177d276a99c1af50491a339d131b0522380225b2097a3d24259fbd" -> "sha256:0f7170bc9bdc2c6ba6e1e20a7a28ca272426498ab58fede9adb2d960c34f2d42" [label=""];
}

