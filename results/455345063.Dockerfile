[app/sources/455345063.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:c075721b314553b3ef3854de936f54b688d6839f3feb7e9872438d88606ed88b" [label="/bin/sh -c apk --update add curl bash" shape="box"];
  "sha256:d051d03b8b8efab1cffda087c6b415ab11f244df88fc0af13fa9cae4937635b7" [label="local://context" shape="ellipse"];
  "sha256:645626ac90210961b711f6986f9dbe4a29e267d4763961722c86289be8afb694" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:c10a4fc1bbd2629a3972a53fc5c5a05a68004f4689184d32c7eb4b344bf1ca4d" [label="sha256:c10a4fc1bbd2629a3972a53fc5c5a05a68004f4689184d32c7eb4b344bf1ca4d" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:c075721b314553b3ef3854de936f54b688d6839f3feb7e9872438d88606ed88b" [label=""];
  "sha256:c075721b314553b3ef3854de936f54b688d6839f3feb7e9872438d88606ed88b" -> "sha256:645626ac90210961b711f6986f9dbe4a29e267d4763961722c86289be8afb694" [label=""];
  "sha256:d051d03b8b8efab1cffda087c6b415ab11f244df88fc0af13fa9cae4937635b7" -> "sha256:645626ac90210961b711f6986f9dbe4a29e267d4763961722c86289be8afb694" [label=""];
  "sha256:645626ac90210961b711f6986f9dbe4a29e267d4763961722c86289be8afb694" -> "sha256:c10a4fc1bbd2629a3972a53fc5c5a05a68004f4689184d32c7eb4b344bf1ca4d" [label=""];
}

