[app/sources/252790008.Dockerfile]
digraph {
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" [label="docker-image://docker.io/library/ruby:latest" shape="ellipse"];
  "sha256:24222867e203c4ad54cface7e2ce3ad670090b46060175a057db76c2d4fabb72" [label="/bin/sh -c gem install rest_shifter -v 0.0.28" shape="box"];
  "sha256:171a76ae1edb2d5e969dd8f160a7fc9726e8e0fb8be244734afb4d2d2b4c9e76" [label="sha256:171a76ae1edb2d5e969dd8f160a7fc9726e8e0fb8be244734afb4d2d2b4c9e76" shape="plaintext"];
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" -> "sha256:24222867e203c4ad54cface7e2ce3ad670090b46060175a057db76c2d4fabb72" [label=""];
  "sha256:24222867e203c4ad54cface7e2ce3ad670090b46060175a057db76c2d4fabb72" -> "sha256:171a76ae1edb2d5e969dd8f160a7fc9726e8e0fb8be244734afb4d2d2b4c9e76" [label=""];
}

