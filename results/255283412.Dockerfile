[app/sources/255283412.Dockerfile]
digraph {
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" [label="docker-image://docker.io/gliderlabs/alpine:latest" shape="ellipse"];
  "sha256:03931959c0bd540c173dd4ae38c4559373ca91a8fa232a5a6fc1e6232fed4a38" [label="local://context" shape="ellipse"];
  "sha256:38357f51cae4258b5d1998a3dec11c34924281436acee90849ca8339e239c638" [label="copy{src=/proxy, dest=/}" shape="note"];
  "sha256:f342738a8fd4503368c468e7f98a4a8a5312a45ce003c3c12d82cd002c686bb2" [label="sha256:f342738a8fd4503368c468e7f98a4a8a5312a45ce003c3c12d82cd002c686bb2" shape="plaintext"];
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" -> "sha256:38357f51cae4258b5d1998a3dec11c34924281436acee90849ca8339e239c638" [label=""];
  "sha256:03931959c0bd540c173dd4ae38c4559373ca91a8fa232a5a6fc1e6232fed4a38" -> "sha256:38357f51cae4258b5d1998a3dec11c34924281436acee90849ca8339e239c638" [label=""];
  "sha256:38357f51cae4258b5d1998a3dec11c34924281436acee90849ca8339e239c638" -> "sha256:f342738a8fd4503368c468e7f98a4a8a5312a45ce003c3c12d82cd002c686bb2" [label=""];
}

