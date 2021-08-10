[app/sources/252781935.Dockerfile]
digraph {
  "sha256:4e2590b8e8eb44e24512c5d73598a82f5003b7c8bfcce5a054b0e658a61494f4" [label="docker-image://docker.io/library/debian:latest@sha256:cc58a29c333ee594f7624d968123429b26916face46169304f07580644dde6b2" shape="ellipse"];
  "sha256:3121ffcfbb74d349ea54d6b9ee4310e7244d529cac30a074f9a431fb56487830" [label="local://context" shape="ellipse"];
  "sha256:7e7b66664d396e2b858149b441a6e0b5df774013a72700b879d5148e537ff5da" [label="copy{src=/--from=0, dest=/usr/local/bin},copy{src=/usr/src/myapp/target/release/schani_auth, dest=/usr/local/bin}" shape="note"];
  "sha256:b10eb8a7dcbbf91403178fcdef16f523d884c770173e35b5e5b08f7c28b7255a" [label="sha256:b10eb8a7dcbbf91403178fcdef16f523d884c770173e35b5e5b08f7c28b7255a" shape="plaintext"];
  "sha256:4e2590b8e8eb44e24512c5d73598a82f5003b7c8bfcce5a054b0e658a61494f4" -> "sha256:7e7b66664d396e2b858149b441a6e0b5df774013a72700b879d5148e537ff5da" [label=""];
  "sha256:3121ffcfbb74d349ea54d6b9ee4310e7244d529cac30a074f9a431fb56487830" -> "sha256:7e7b66664d396e2b858149b441a6e0b5df774013a72700b879d5148e537ff5da" [label=""];
  "sha256:7e7b66664d396e2b858149b441a6e0b5df774013a72700b879d5148e537ff5da" -> "sha256:b10eb8a7dcbbf91403178fcdef16f523d884c770173e35b5e5b08f7c28b7255a" [label=""];
}

