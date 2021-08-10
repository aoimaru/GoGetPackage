[app/sources/282479089.Dockerfile]
digraph {
  "sha256:7d9c6b7c85a35e1fe4048633074237b0bc2aaf34ecf1804de1e1b93f660e57d1" [label="docker-image://docker.io/azul/zulu-openjdk:8" shape="ellipse"];
  "sha256:2609e0540daa5989281b50b5240a1fd64a843bbfd5782b8fcb6bdfb5f4eb687e" [label="local://context" shape="ellipse"];
  "sha256:a02bd045f8d4e4ac777f80049beb991af99357df774313b2a3aab466bcaa0f5d" [label="copy{src=/target, dest=/usr/share/nb.jar}" shape="note"];
  "sha256:f04a67a395eed66ecaa0c4fa4e46221361c6d6689ba3e25a1316895de1e25c5e" [label="sha256:f04a67a395eed66ecaa0c4fa4e46221361c6d6689ba3e25a1316895de1e25c5e" shape="plaintext"];
  "sha256:7d9c6b7c85a35e1fe4048633074237b0bc2aaf34ecf1804de1e1b93f660e57d1" -> "sha256:a02bd045f8d4e4ac777f80049beb991af99357df774313b2a3aab466bcaa0f5d" [label=""];
  "sha256:2609e0540daa5989281b50b5240a1fd64a843bbfd5782b8fcb6bdfb5f4eb687e" -> "sha256:a02bd045f8d4e4ac777f80049beb991af99357df774313b2a3aab466bcaa0f5d" [label=""];
  "sha256:a02bd045f8d4e4ac777f80049beb991af99357df774313b2a3aab466bcaa0f5d" -> "sha256:f04a67a395eed66ecaa0c4fa4e46221361c6d6689ba3e25a1316895de1e25c5e" [label=""];
}

