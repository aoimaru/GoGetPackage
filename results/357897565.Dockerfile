[app/sources/357897565.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f48293535f428eef2a101d6f1a03fe9ee57ab41669191afaf152be0f24bb9226" [label="/bin/sh -c apt-get update && apt-get install -y   curl   libevent-core-2.0-5   libevent-extra-2.0-5   libevent-openssl-2.0-5   libevent-pthreads-2.0-5   libhiredis0.10   libmysqlclient18   libpq5   telnet   wget" shape="box"];
  "sha256:9d9278e7bcbfc2658179d34ffe0b2369afb4b45c5247b631ab460005b2647c1b" [label="/bin/sh -c wget http://turnserver.open-sys.org/downloads/v4.4.2.2/turnserver-4.4.2.2-debian-wheezy-ubuntu-mint-x86-64bits.tar.gz   && tar xzf turnserver-4.4.2.2-debian-wheezy-ubuntu-mint-x86-64bits.tar.gz   && dpkg -i coturn_4.4.2.2-1_amd64.deb" shape="box"];
  "sha256:2eb0f713cf4c529351d9fb359025cdea9e2bf4cdd606567c57f5647fad57300e" [label="local://context" shape="ellipse"];
  "sha256:42745a8c2a758605982a7595f05e43339641d16d1c3b1e1511216e546eec038b" [label="copy{src=/turnserver.sh, dest=/turnserver.sh}" shape="note"];
  "sha256:f358e6ef375fd3e13dd515703f09c443d6affc52e95a225115e876767107d308" [label="sha256:f358e6ef375fd3e13dd515703f09c443d6affc52e95a225115e876767107d308" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:f48293535f428eef2a101d6f1a03fe9ee57ab41669191afaf152be0f24bb9226" [label=""];
  "sha256:f48293535f428eef2a101d6f1a03fe9ee57ab41669191afaf152be0f24bb9226" -> "sha256:9d9278e7bcbfc2658179d34ffe0b2369afb4b45c5247b631ab460005b2647c1b" [label=""];
  "sha256:9d9278e7bcbfc2658179d34ffe0b2369afb4b45c5247b631ab460005b2647c1b" -> "sha256:42745a8c2a758605982a7595f05e43339641d16d1c3b1e1511216e546eec038b" [label=""];
  "sha256:2eb0f713cf4c529351d9fb359025cdea9e2bf4cdd606567c57f5647fad57300e" -> "sha256:42745a8c2a758605982a7595f05e43339641d16d1c3b1e1511216e546eec038b" [label=""];
  "sha256:42745a8c2a758605982a7595f05e43339641d16d1c3b1e1511216e546eec038b" -> "sha256:f358e6ef375fd3e13dd515703f09c443d6affc52e95a225115e876767107d308" [label=""];
}

