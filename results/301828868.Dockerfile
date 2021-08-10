[app/sources/301828868.Dockerfile]
digraph {
  "sha256:6bc57c2c760d2925db1071e5d869736101f9680b31e3a1035bd9ec988292474a" [label="docker-image://docker.io/pveber/bistro-base:stretch" shape="ellipse"];
  "sha256:070b6f31fa32991d002d525f114e83b6a08cc89de97255a17577cca4cb119648" [label="/bin/sh -c wget http://packages.seqan.de/mason/mason-0.1.2-Linux-x86_64.tar.bz2 &&     tar xvfj mason-0.1.2-Linux-x86_64.tar.bz2 &&     cp mason-0.1.2-Linux-x86_64/bin/mason /usr/bin &&     rm -rf mason-0.1.2-Linux-x86_64*" shape="box"];
  "sha256:e128991c69ca8ca127dcc83dcede0cdaa919fcbc1506b57391db935f249e131c" [label="sha256:e128991c69ca8ca127dcc83dcede0cdaa919fcbc1506b57391db935f249e131c" shape="plaintext"];
  "sha256:6bc57c2c760d2925db1071e5d869736101f9680b31e3a1035bd9ec988292474a" -> "sha256:070b6f31fa32991d002d525f114e83b6a08cc89de97255a17577cca4cb119648" [label=""];
  "sha256:070b6f31fa32991d002d525f114e83b6a08cc89de97255a17577cca4cb119648" -> "sha256:e128991c69ca8ca127dcc83dcede0cdaa919fcbc1506b57391db935f249e131c" [label=""];
}

