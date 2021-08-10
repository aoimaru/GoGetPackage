[app/sources/279728908.Dockerfile]
digraph {
  "sha256:4a6a6c7e8948e741b79f7388827a5bc62bcc9c860ece4c5de25a4a14d7aad7f4" [label="docker-image://docker.io/zcalusic/debian-stretch:latest" shape="ellipse"];
  "sha256:39d785021ad3328e7328657ae18f9b51dbc01a7b97e74a64cebd49de82b47015" [label="/bin/sh -c apt-key adv --recv-keys --keyserver hkp://ipv4.pool.sks-keyservers.net D88E42B4     && echo \"deb https://packages.elastic.co/curator/5/debian9 stable main\" > /etc/apt/sources.list.d/curator.list     && apt-get update     && apt-get install -y --no-install-recommends        elasticsearch-curator     && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/curator.list" shape="box"];
  "sha256:48569f437fc5519c3da0930bd9a4835347660ac114c6e67266b5c8fe384f93d6" [label="sha256:48569f437fc5519c3da0930bd9a4835347660ac114c6e67266b5c8fe384f93d6" shape="plaintext"];
  "sha256:4a6a6c7e8948e741b79f7388827a5bc62bcc9c860ece4c5de25a4a14d7aad7f4" -> "sha256:39d785021ad3328e7328657ae18f9b51dbc01a7b97e74a64cebd49de82b47015" [label=""];
  "sha256:39d785021ad3328e7328657ae18f9b51dbc01a7b97e74a64cebd49de82b47015" -> "sha256:48569f437fc5519c3da0930bd9a4835347660ac114c6e67266b5c8fe384f93d6" [label=""];
}

