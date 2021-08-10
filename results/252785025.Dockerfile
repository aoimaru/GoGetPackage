[app/sources/252785025.Dockerfile]
digraph {
  "sha256:415a5fd13231dabd9ddc3c077ed7018c5e1c3c5730e5a3deea6dae2aecb9e216" [label="docker-image://docker.io/torusware/speedus-ubuntu:latest" shape="ellipse"];
  "sha256:6032db21fedf1558b886db82dec250654d18b261ed9a5aab2edb13a7a8abb2a2" [label="/bin/sh -c apt-get -y update && apt-get upgrade -y && apt-get install -y wget curl" shape="box"];
  "sha256:7e8b45f0ee032a36850fe2456cd8887839682d1e7a7fba83df80559c29991f4d" [label="sha256:7e8b45f0ee032a36850fe2456cd8887839682d1e7a7fba83df80559c29991f4d" shape="plaintext"];
  "sha256:415a5fd13231dabd9ddc3c077ed7018c5e1c3c5730e5a3deea6dae2aecb9e216" -> "sha256:6032db21fedf1558b886db82dec250654d18b261ed9a5aab2edb13a7a8abb2a2" [label=""];
  "sha256:6032db21fedf1558b886db82dec250654d18b261ed9a5aab2edb13a7a8abb2a2" -> "sha256:7e8b45f0ee032a36850fe2456cd8887839682d1e7a7fba83df80559c29991f4d" [label=""];
}

