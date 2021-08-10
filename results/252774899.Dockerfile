[app/sources/252774899.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:ff3d642c531c3c73f8b4a8508422ebc8ebbca9a471959fc71d85d2468283a4c8" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:33f3b89fbc278ed29ad9414d8657cd3f7b641060c0bc41e2aa0d87441a8d2c4c" [label="/bin/sh -c apt-get install -y beanstalkd=1.10-3" shape="box"];
  "sha256:925c4cbbb780ac0fc38c5bfa4cf7ed97d722496e65bfef5f1c357018a2d79a6a" [label="sha256:925c4cbbb780ac0fc38c5bfa4cf7ed97d722496e65bfef5f1c357018a2d79a6a" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:ff3d642c531c3c73f8b4a8508422ebc8ebbca9a471959fc71d85d2468283a4c8" [label=""];
  "sha256:ff3d642c531c3c73f8b4a8508422ebc8ebbca9a471959fc71d85d2468283a4c8" -> "sha256:33f3b89fbc278ed29ad9414d8657cd3f7b641060c0bc41e2aa0d87441a8d2c4c" [label=""];
  "sha256:33f3b89fbc278ed29ad9414d8657cd3f7b641060c0bc41e2aa0d87441a8d2c4c" -> "sha256:925c4cbbb780ac0fc38c5bfa4cf7ed97d722496e65bfef5f1c357018a2d79a6a" [label=""];
}

