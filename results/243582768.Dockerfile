[app/sources/243582768.Dockerfile]
digraph {
  "sha256:8eafa7c42498dbf44c4e0710b9dda22726e42e8022f265fcb9098e13fbb7b4bc" [label="local://context" shape="ellipse"];
  "sha256:fea37bc28345c56416a88b5c0c5f5d0f4c38479f21e30d2c79829aa6a411b3f8" [label="docker-image://docker.io/feedthebeast/ftbbase:latest" shape="ellipse"];
  "sha256:c0e599d18adcc4d2f76034f70e7a902778c7ce0b27f40dd0036d605e0d42c011" [label="copy{src=/setup.sh, dest=/}" shape="note"];
  "sha256:d208a640e8703e4454d1b90da98b6a4a5c9c891006e2885bfa1f707daef533a6" [label="/bin/sh -c /bin/bash -ex setup.sh &&     rm setup.sh" shape="box"];
  "sha256:20bad5ed57b423f612fdbc964969ee330ea03cdcdec1dd3d89bb76bb77af9fbb" [label="sha256:20bad5ed57b423f612fdbc964969ee330ea03cdcdec1dd3d89bb76bb77af9fbb" shape="plaintext"];
  "sha256:fea37bc28345c56416a88b5c0c5f5d0f4c38479f21e30d2c79829aa6a411b3f8" -> "sha256:c0e599d18adcc4d2f76034f70e7a902778c7ce0b27f40dd0036d605e0d42c011" [label=""];
  "sha256:8eafa7c42498dbf44c4e0710b9dda22726e42e8022f265fcb9098e13fbb7b4bc" -> "sha256:c0e599d18adcc4d2f76034f70e7a902778c7ce0b27f40dd0036d605e0d42c011" [label=""];
  "sha256:c0e599d18adcc4d2f76034f70e7a902778c7ce0b27f40dd0036d605e0d42c011" -> "sha256:d208a640e8703e4454d1b90da98b6a4a5c9c891006e2885bfa1f707daef533a6" [label=""];
  "sha256:d208a640e8703e4454d1b90da98b6a4a5c9c891006e2885bfa1f707daef533a6" -> "sha256:20bad5ed57b423f612fdbc964969ee330ea03cdcdec1dd3d89bb76bb77af9fbb" [label=""];
}

