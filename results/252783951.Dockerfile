[app/sources/252783951.Dockerfile]
digraph {
  "sha256:56d7b7654f5d953a5c12b7ae94f929085ccc788789644433d8c65b051068ff33" [label="docker-image://docker.io/bioconductor/devel_protmetcore2:latest" shape="ellipse"];
  "sha256:d5347fe88e4bfa13f324eaf362340b0618012cdfe72d0a0c10a0ff5df79b95d7" [label="local://context" shape="ellipse"];
  "sha256:c211234edaa5b6683c7f450089a2a84dfdf6306554e2626dc942a2690bd1b492" [label="copy{src=/install.R, dest=/tmp/}" shape="note"];
  "sha256:d98d8301bb59b68bd6607578029166eb693640f5d8e71f25cf85f6f417b14350" [label="http://master.bioconductor.org/todays-date" shape="ellipse"];
  "sha256:f1ae26ad755d1e1e415d9f0f36d77cbdcb46655d76bcdecae0288bfb05e322e1" [label="copy{src=/todays-date, dest=/tmp/}" shape="note"];
  "sha256:8e69899cc5ab22b927c6ffba6c7aa3212f2d5ddc9a13dfdc5146b6a9fc13d886" [label="/bin/sh -c R -f /tmp/install.R" shape="box"];
  "sha256:8754e19c50dc14b63504919a11a013c46c6817153abbcf444cbc0aed8973f425" [label="sha256:8754e19c50dc14b63504919a11a013c46c6817153abbcf444cbc0aed8973f425" shape="plaintext"];
  "sha256:56d7b7654f5d953a5c12b7ae94f929085ccc788789644433d8c65b051068ff33" -> "sha256:c211234edaa5b6683c7f450089a2a84dfdf6306554e2626dc942a2690bd1b492" [label=""];
  "sha256:d5347fe88e4bfa13f324eaf362340b0618012cdfe72d0a0c10a0ff5df79b95d7" -> "sha256:c211234edaa5b6683c7f450089a2a84dfdf6306554e2626dc942a2690bd1b492" [label=""];
  "sha256:c211234edaa5b6683c7f450089a2a84dfdf6306554e2626dc942a2690bd1b492" -> "sha256:f1ae26ad755d1e1e415d9f0f36d77cbdcb46655d76bcdecae0288bfb05e322e1" [label=""];
  "sha256:d98d8301bb59b68bd6607578029166eb693640f5d8e71f25cf85f6f417b14350" -> "sha256:f1ae26ad755d1e1e415d9f0f36d77cbdcb46655d76bcdecae0288bfb05e322e1" [label=""];
  "sha256:f1ae26ad755d1e1e415d9f0f36d77cbdcb46655d76bcdecae0288bfb05e322e1" -> "sha256:8e69899cc5ab22b927c6ffba6c7aa3212f2d5ddc9a13dfdc5146b6a9fc13d886" [label=""];
  "sha256:8e69899cc5ab22b927c6ffba6c7aa3212f2d5ddc9a13dfdc5146b6a9fc13d886" -> "sha256:8754e19c50dc14b63504919a11a013c46c6817153abbcf444cbc0aed8973f425" [label=""];
}

