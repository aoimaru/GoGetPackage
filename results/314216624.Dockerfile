[app/sources/314216624.Dockerfile]
digraph {
  "sha256:9eadc9b2afe5e8ea6a183be608e078f177725cb26a39f0473a9d05ed974955e6" [label="docker-image://docker.io/arm32v7/node:9" shape="ellipse"];
  "sha256:b788c8c91db0e704c1a4238bb89f39ef8552804c394ef5d6f2054f10a6413259" [label="/bin/sh -c apt-get update &&     apt-get -y install curl &&     apt-get -y install python build-essential" shape="box"];
  "sha256:f56c111c3a27fa3048e107b824a7995ef95df3007c0e93d82fb10bf3aee2be1d" [label="/bin/sh -c npm install -g nodemon" shape="box"];
  "sha256:65b9b84fca9045f275d7e0e888354ca93374d47dce97cf6e2046e1b090264240" [label="mkdir{path=/usr/src/fullcyclereact/src/api}" shape="note"];
  "sha256:bd8036b0809c34b4fced93d7c9525e6aa835554f230dfe159f4873ca716e5ba5" [label="local://context" shape="ellipse"];
  "sha256:ec3406deb0c16d03eafac9a6437eb92de88736f46dca41381ba59085f2ac59ae" [label="copy{src=/package*.json, dest=/usr/src/fullcyclereact/src/api/}" shape="note"];
  "sha256:606d0d849b80bd017b23ca670668d73e24986d853a1466c920c9c9bb7cc024bb" [label="/bin/sh -c npm install" shape="box"];
  "sha256:f6206c7b7ce6b24862e3cb5cc0289f5addf1b657abfe81a8d9737c3652f4fe0e" [label="copy{src=/, dest=/usr/src/fullcyclereact/src/api/}" shape="note"];
  "sha256:bf55fa5e3ac4f764d984c477ce952cd4ea685a37064c467642b7d1ac0b76054e" [label="sha256:bf55fa5e3ac4f764d984c477ce952cd4ea685a37064c467642b7d1ac0b76054e" shape="plaintext"];
  "sha256:9eadc9b2afe5e8ea6a183be608e078f177725cb26a39f0473a9d05ed974955e6" -> "sha256:b788c8c91db0e704c1a4238bb89f39ef8552804c394ef5d6f2054f10a6413259" [label=""];
  "sha256:b788c8c91db0e704c1a4238bb89f39ef8552804c394ef5d6f2054f10a6413259" -> "sha256:f56c111c3a27fa3048e107b824a7995ef95df3007c0e93d82fb10bf3aee2be1d" [label=""];
  "sha256:f56c111c3a27fa3048e107b824a7995ef95df3007c0e93d82fb10bf3aee2be1d" -> "sha256:65b9b84fca9045f275d7e0e888354ca93374d47dce97cf6e2046e1b090264240" [label=""];
  "sha256:65b9b84fca9045f275d7e0e888354ca93374d47dce97cf6e2046e1b090264240" -> "sha256:ec3406deb0c16d03eafac9a6437eb92de88736f46dca41381ba59085f2ac59ae" [label=""];
  "sha256:bd8036b0809c34b4fced93d7c9525e6aa835554f230dfe159f4873ca716e5ba5" -> "sha256:ec3406deb0c16d03eafac9a6437eb92de88736f46dca41381ba59085f2ac59ae" [label=""];
  "sha256:ec3406deb0c16d03eafac9a6437eb92de88736f46dca41381ba59085f2ac59ae" -> "sha256:606d0d849b80bd017b23ca670668d73e24986d853a1466c920c9c9bb7cc024bb" [label=""];
  "sha256:606d0d849b80bd017b23ca670668d73e24986d853a1466c920c9c9bb7cc024bb" -> "sha256:f6206c7b7ce6b24862e3cb5cc0289f5addf1b657abfe81a8d9737c3652f4fe0e" [label=""];
  "sha256:bd8036b0809c34b4fced93d7c9525e6aa835554f230dfe159f4873ca716e5ba5" -> "sha256:f6206c7b7ce6b24862e3cb5cc0289f5addf1b657abfe81a8d9737c3652f4fe0e" [label=""];
  "sha256:f6206c7b7ce6b24862e3cb5cc0289f5addf1b657abfe81a8d9737c3652f4fe0e" -> "sha256:bf55fa5e3ac4f764d984c477ce952cd4ea685a37064c467642b7d1ac0b76054e" [label=""];
}

