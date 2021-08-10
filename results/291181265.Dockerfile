[app/sources/291181265.Dockerfile]
digraph {
  "sha256:0dad56b6abb0e8ee0a702e51752b3a1d12fffffc2023e356251ba3fb766cfbb4" [label="docker-image://docker.io/circleci/mongo:4.1.8-xenial@sha256:e2bc42637b0fe5222b030af07c0794814edf04d2583c62fb68074da939628426" shape="ellipse"];
  "sha256:acf34fc6bbe097a502773884989dd2b80d8fa91b866036e799209cf8f2d53938" [label="/bin/sh -c sed -i '/exec \"$@\"/i mkdir \\/dev\\/shm\\/mongo' /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:0b864ca474a07430052b66ff8e484a2422ba07173518a02bd7ccbaeb885b4109" [label="sha256:0b864ca474a07430052b66ff8e484a2422ba07173518a02bd7ccbaeb885b4109" shape="plaintext"];
  "sha256:0dad56b6abb0e8ee0a702e51752b3a1d12fffffc2023e356251ba3fb766cfbb4" -> "sha256:acf34fc6bbe097a502773884989dd2b80d8fa91b866036e799209cf8f2d53938" [label=""];
  "sha256:acf34fc6bbe097a502773884989dd2b80d8fa91b866036e799209cf8f2d53938" -> "sha256:0b864ca474a07430052b66ff8e484a2422ba07173518a02bd7ccbaeb885b4109" [label=""];
}

