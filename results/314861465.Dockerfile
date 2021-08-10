[app/sources/314861465.Dockerfile]
digraph {
  "sha256:67bef7c781ae91b2c4986b6a5c39c565e10f35c48e87973a7162a1220b39b569" [label="docker-image://docker.io/vitess/bootstrap:mysql56@sha256:88bbed99e23c4a019fd31197b0624accf3c3f90eb4d17385d72a5c3bc3c8a956" shape="ellipse"];
  "sha256:4136308282bed734c8ea86255f69f0b737eeb370af7ff86cfaa836a366a43ae6" [label="local://context" shape="ellipse"];
  "sha256:ed326f640bbdcbdd38cb9a688e70f9ab8fca98f262a8a14d9a5bfc59d1538b2d" [label="copy{src=/, dest=/vt/src/vitess.io/vitess}" shape="note"];
  "sha256:8ad141f69c7843bfd87868e2e3574ef35e2c9f6a3902d385d9316c008bb478dc" [label="/bin/sh -c chown -R vitess:vitess /vt" shape="box"];
  "sha256:f76483787019d17dc6a9c3de7e9a6322a3de7f3df9aa07aacfc5d898c42ce6b8" [label="/bin/sh -c make build" shape="box"];
  "sha256:e5440909d6085b4282dfb6e69b2881c039c5626b463067452d22b55d970ffe79" [label="sha256:e5440909d6085b4282dfb6e69b2881c039c5626b463067452d22b55d970ffe79" shape="plaintext"];
  "sha256:67bef7c781ae91b2c4986b6a5c39c565e10f35c48e87973a7162a1220b39b569" -> "sha256:ed326f640bbdcbdd38cb9a688e70f9ab8fca98f262a8a14d9a5bfc59d1538b2d" [label=""];
  "sha256:4136308282bed734c8ea86255f69f0b737eeb370af7ff86cfaa836a366a43ae6" -> "sha256:ed326f640bbdcbdd38cb9a688e70f9ab8fca98f262a8a14d9a5bfc59d1538b2d" [label=""];
  "sha256:ed326f640bbdcbdd38cb9a688e70f9ab8fca98f262a8a14d9a5bfc59d1538b2d" -> "sha256:8ad141f69c7843bfd87868e2e3574ef35e2c9f6a3902d385d9316c008bb478dc" [label=""];
  "sha256:8ad141f69c7843bfd87868e2e3574ef35e2c9f6a3902d385d9316c008bb478dc" -> "sha256:f76483787019d17dc6a9c3de7e9a6322a3de7f3df9aa07aacfc5d898c42ce6b8" [label=""];
  "sha256:f76483787019d17dc6a9c3de7e9a6322a3de7f3df9aa07aacfc5d898c42ce6b8" -> "sha256:e5440909d6085b4282dfb6e69b2881c039c5626b463067452d22b55d970ffe79" [label=""];
}

