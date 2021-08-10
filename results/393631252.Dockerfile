[app/sources/393631252.Dockerfile]
digraph {
  "sha256:0437a6c3f447cb2b3d0205fd1e2cb377e725b9912054b3d6bc9c3216ada88125" [label="docker-image://docker.io/solum/guestagent:latest" shape="ellipse"];
  "sha256:651f4e58368cc213b272e86267431bf6c0c0c70bdf4804881badbe0315cdd569" [label="local://context" shape="ellipse"];
  "sha256:9a93cf9b73413fa5932f5e57a31150382e5b2b4f6498e6fa18dd3a79a8fbc697" [label="copy{src=/diskimage-builder/elements/jenkins/install.d/02-install-jenkins, dest=/tmp/install-jenkins.sh}" shape="note"];
  "sha256:19f6583ebeab3ad6e6cebace816e32249b8f30734ebe07cc304109437668a6ad" [label="/bin/sh -c /tmp/install-jenkins.sh" shape="box"];
  "sha256:7eced97f5c95e649704470a512653a1165ca2877d3582e2202518e09e3db091c" [label="sha256:7eced97f5c95e649704470a512653a1165ca2877d3582e2202518e09e3db091c" shape="plaintext"];
  "sha256:0437a6c3f447cb2b3d0205fd1e2cb377e725b9912054b3d6bc9c3216ada88125" -> "sha256:9a93cf9b73413fa5932f5e57a31150382e5b2b4f6498e6fa18dd3a79a8fbc697" [label=""];
  "sha256:651f4e58368cc213b272e86267431bf6c0c0c70bdf4804881badbe0315cdd569" -> "sha256:9a93cf9b73413fa5932f5e57a31150382e5b2b4f6498e6fa18dd3a79a8fbc697" [label=""];
  "sha256:9a93cf9b73413fa5932f5e57a31150382e5b2b4f6498e6fa18dd3a79a8fbc697" -> "sha256:19f6583ebeab3ad6e6cebace816e32249b8f30734ebe07cc304109437668a6ad" [label=""];
  "sha256:19f6583ebeab3ad6e6cebace816e32249b8f30734ebe07cc304109437668a6ad" -> "sha256:7eced97f5c95e649704470a512653a1165ca2877d3582e2202518e09e3db091c" [label=""];
}

