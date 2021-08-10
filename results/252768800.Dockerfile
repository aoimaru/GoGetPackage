[app/sources/252768800.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:22b403596bd4a6a54b045cc6706d160511b896dd0b39d0a246c975e45a44e9ee" [label="/bin/sh -c apt -y update; apt -y install software-properties-common; add-apt-repository -y ppa:freeradius/stable" shape="box"];
  "sha256:764070b92d98cbab3d39962835f045f43b4fe0028fa37b69c96b9e37f946750c" [label="/bin/sh -c apt -y update; apt install -y freeradius=2.2.9-ppa1~xenial freeradius-mysql freeradius-postgresql freeradius-utils mysql-client-core-5.7 curl gettext-base" shape="box"];
  "sha256:64f29a837522ebaaa0606300fe2be8f85e8598a49dc6d68b7c6c668ef033e7a1" [label="local://context" shape="ellipse"];
  "sha256:b9fae677203ad38454db64726c8cef77cb2fac7c85b75801cb69601722cbd7f7" [label="copy{src=/freeradius, dest=/etc/freeradius/}" shape="note"];
  "sha256:4625916db41047645a0c9bffe2e669bdd54a8346c8fee0d58ad4dde34c827365" [label="sha256:4625916db41047645a0c9bffe2e669bdd54a8346c8fee0d58ad4dde34c827365" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:22b403596bd4a6a54b045cc6706d160511b896dd0b39d0a246c975e45a44e9ee" [label=""];
  "sha256:22b403596bd4a6a54b045cc6706d160511b896dd0b39d0a246c975e45a44e9ee" -> "sha256:764070b92d98cbab3d39962835f045f43b4fe0028fa37b69c96b9e37f946750c" [label=""];
  "sha256:764070b92d98cbab3d39962835f045f43b4fe0028fa37b69c96b9e37f946750c" -> "sha256:b9fae677203ad38454db64726c8cef77cb2fac7c85b75801cb69601722cbd7f7" [label=""];
  "sha256:64f29a837522ebaaa0606300fe2be8f85e8598a49dc6d68b7c6c668ef033e7a1" -> "sha256:b9fae677203ad38454db64726c8cef77cb2fac7c85b75801cb69601722cbd7f7" [label=""];
  "sha256:b9fae677203ad38454db64726c8cef77cb2fac7c85b75801cb69601722cbd7f7" -> "sha256:4625916db41047645a0c9bffe2e669bdd54a8346c8fee0d58ad4dde34c827365" [label=""];
}

