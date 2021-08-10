[app/sources/236401132.Dockerfile]
digraph {
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" [label="docker-image://docker.io/library/debian:jessie-slim" shape="ellipse"];
  "sha256:b74e6490c8c31fa1e7f8778826958ab91cd997b1706c5b0f70fb043214e7f79a" [label="/bin/sh -c set -ex     &&         apt-get update && apt-get install -y             build-essential             libcurl4-openssl-dev             git             cmake             libssl-dev             valgrind             libglib2.0-dev" shape="box"];
  "sha256:99514acd0d6ccb73f743f9212065320da489107fc97d0c30c8279086d8e4ec97" [label="sha256:99514acd0d6ccb73f743f9212065320da489107fc97d0c30c8279086d8e4ec97" shape="plaintext"];
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" -> "sha256:b74e6490c8c31fa1e7f8778826958ab91cd997b1706c5b0f70fb043214e7f79a" [label=""];
  "sha256:b74e6490c8c31fa1e7f8778826958ab91cd997b1706c5b0f70fb043214e7f79a" -> "sha256:99514acd0d6ccb73f743f9212065320da489107fc97d0c30c8279086d8e4ec97" [label=""];
}

