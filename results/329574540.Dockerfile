[app/sources/329574540.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:88b08d457b07f145e162979900a5fd5de7e73353b91296db77fd93cb9546426c" [label="/bin/sh -c yum -y install wget \t&& cd /etc/yum.repos.d/         && wget http://rpms.adiscon.com/v8-stable/rsyslog.repo" shape="box"];
  "sha256:f474057bd175165206d25bc62c092b67349801add6d4617ea6a0d886361a7c46" [label="/bin/sh -c yum -y install rsyslog \t   rsyslog-elasticsearch \t   rsyslog-imptcp \t   rsyslog-imrelp \t   rsyslog-mmjsonparse \t   rsyslog-omrelp \t   rsyslog-omstdout \t&& rm /etc/rsyslog.d/listen.conf" shape="box"];
  "sha256:fd75e6b11457884b074081593ae8db1de5dc492b2cfc1ba8b9e4f8ab11e00894" [label="local://context" shape="ellipse"];
  "sha256:a9de5439aab5ceab4bdac8c63a2cb8a690ff71fc5c244f340359e9519aafd6c7" [label="copy{src=/rsyslog.conf, dest=/etc/rsyslog.conf}" shape="note"];
  "sha256:46da3f33ac17d7aab53af4d9692d5568d5f8e125bad0f48fe7f3d33a727d1d11" [label="sha256:46da3f33ac17d7aab53af4d9692d5568d5f8e125bad0f48fe7f3d33a727d1d11" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:88b08d457b07f145e162979900a5fd5de7e73353b91296db77fd93cb9546426c" [label=""];
  "sha256:88b08d457b07f145e162979900a5fd5de7e73353b91296db77fd93cb9546426c" -> "sha256:f474057bd175165206d25bc62c092b67349801add6d4617ea6a0d886361a7c46" [label=""];
  "sha256:f474057bd175165206d25bc62c092b67349801add6d4617ea6a0d886361a7c46" -> "sha256:a9de5439aab5ceab4bdac8c63a2cb8a690ff71fc5c244f340359e9519aafd6c7" [label=""];
  "sha256:fd75e6b11457884b074081593ae8db1de5dc492b2cfc1ba8b9e4f8ab11e00894" -> "sha256:a9de5439aab5ceab4bdac8c63a2cb8a690ff71fc5c244f340359e9519aafd6c7" [label=""];
  "sha256:a9de5439aab5ceab4bdac8c63a2cb8a690ff71fc5c244f340359e9519aafd6c7" -> "sha256:46da3f33ac17d7aab53af4d9692d5568d5f8e125bad0f48fe7f3d33a727d1d11" [label=""];
}

