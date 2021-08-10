[app/sources/263379258.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:34e5d77e9376a70ff4d3f32b4955ae050aa7f5a26c9d998559c3e68397501168" [label="/bin/sh -c echo \"deb [arch=amd64] http://ubuntu.openvidu.io/6.10.0 xenial kms6\" | tee /etc/apt/sources.list.d/kurento.list \t&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5AFA7A83 \t&& apt-get update \t&& apt-get -y install kurento-media-server \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:076a47ea45a97f53dfda113e110ffba32e359f7a2b647d0649c109745cb1f596" [label="local://context" shape="ellipse"];
  "sha256:94a9de4c61dbe1759a70f78d60f9926c2826475c3084e5f870d8c52b90f17a1d" [label="copy{src=/kms.sh, dest=/kms.sh}" shape="note"];
  "sha256:7bdb00b9cafa3e0be98aaab7d4361a8a42ef410c7bf7299d5e7dda06487ba452" [label="/bin/sh -c apt-get update && apt-get install -y openjdk-8-jdk && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d3c02e9194d20ef0b1a19df1d8efa679ff66c0cc944202bea9d1a25f93b3f1aa" [label="/bin/sh -c apt-get update && apt-get install -y supervisor && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fc3054e2c42c06aa1b6c411230c0cbcf41a53b6ebbe9276764d6f024d664a8cb" [label="/bin/sh -c mkdir -p /var/log/supervisor" shape="box"];
  "sha256:d247e751523260b195077302fa6c47a205fa87ea142040ba27897a71d97b1587" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:adadf643aa0f3fe5cf5ed013dc3ccaddf94e4386ecc77a3022ce72e9fff2179e" [label="copy{src=/openvidu-server.jar, dest=/openvidu-server.jar}" shape="note"];
  "sha256:004613a77ebab0b2facc2d849d68fcf1d637aa503453c17f520b1adf6bb6850b" [label="copy{src=/openvidu-js-java.jar, dest=/app.jar}" shape="note"];
  "sha256:c58a91519b2c02d235059bdfd62e47b0bf848689bb2b6b54aafd513376ee0b40" [label="/bin/sh -c sh -c 'touch /openvidu-server.jar'" shape="box"];
  "sha256:f2c739d9a75b9cfa7451c6fcc32c2d1c2dadc047a7a0e04cfe10d34ff05b56fb" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:c34afd03f8e006bef239f5cb42afcdfa5f13a3646454431f378b346ef7e3e1e9" [label="sha256:c34afd03f8e006bef239f5cb42afcdfa5f13a3646454431f378b346ef7e3e1e9" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:34e5d77e9376a70ff4d3f32b4955ae050aa7f5a26c9d998559c3e68397501168" [label=""];
  "sha256:34e5d77e9376a70ff4d3f32b4955ae050aa7f5a26c9d998559c3e68397501168" -> "sha256:94a9de4c61dbe1759a70f78d60f9926c2826475c3084e5f870d8c52b90f17a1d" [label=""];
  "sha256:076a47ea45a97f53dfda113e110ffba32e359f7a2b647d0649c109745cb1f596" -> "sha256:94a9de4c61dbe1759a70f78d60f9926c2826475c3084e5f870d8c52b90f17a1d" [label=""];
  "sha256:94a9de4c61dbe1759a70f78d60f9926c2826475c3084e5f870d8c52b90f17a1d" -> "sha256:7bdb00b9cafa3e0be98aaab7d4361a8a42ef410c7bf7299d5e7dda06487ba452" [label=""];
  "sha256:7bdb00b9cafa3e0be98aaab7d4361a8a42ef410c7bf7299d5e7dda06487ba452" -> "sha256:d3c02e9194d20ef0b1a19df1d8efa679ff66c0cc944202bea9d1a25f93b3f1aa" [label=""];
  "sha256:d3c02e9194d20ef0b1a19df1d8efa679ff66c0cc944202bea9d1a25f93b3f1aa" -> "sha256:fc3054e2c42c06aa1b6c411230c0cbcf41a53b6ebbe9276764d6f024d664a8cb" [label=""];
  "sha256:fc3054e2c42c06aa1b6c411230c0cbcf41a53b6ebbe9276764d6f024d664a8cb" -> "sha256:d247e751523260b195077302fa6c47a205fa87ea142040ba27897a71d97b1587" [label=""];
  "sha256:076a47ea45a97f53dfda113e110ffba32e359f7a2b647d0649c109745cb1f596" -> "sha256:d247e751523260b195077302fa6c47a205fa87ea142040ba27897a71d97b1587" [label=""];
  "sha256:d247e751523260b195077302fa6c47a205fa87ea142040ba27897a71d97b1587" -> "sha256:adadf643aa0f3fe5cf5ed013dc3ccaddf94e4386ecc77a3022ce72e9fff2179e" [label=""];
  "sha256:076a47ea45a97f53dfda113e110ffba32e359f7a2b647d0649c109745cb1f596" -> "sha256:adadf643aa0f3fe5cf5ed013dc3ccaddf94e4386ecc77a3022ce72e9fff2179e" [label=""];
  "sha256:adadf643aa0f3fe5cf5ed013dc3ccaddf94e4386ecc77a3022ce72e9fff2179e" -> "sha256:004613a77ebab0b2facc2d849d68fcf1d637aa503453c17f520b1adf6bb6850b" [label=""];
  "sha256:076a47ea45a97f53dfda113e110ffba32e359f7a2b647d0649c109745cb1f596" -> "sha256:004613a77ebab0b2facc2d849d68fcf1d637aa503453c17f520b1adf6bb6850b" [label=""];
  "sha256:004613a77ebab0b2facc2d849d68fcf1d637aa503453c17f520b1adf6bb6850b" -> "sha256:c58a91519b2c02d235059bdfd62e47b0bf848689bb2b6b54aafd513376ee0b40" [label=""];
  "sha256:c58a91519b2c02d235059bdfd62e47b0bf848689bb2b6b54aafd513376ee0b40" -> "sha256:f2c739d9a75b9cfa7451c6fcc32c2d1c2dadc047a7a0e04cfe10d34ff05b56fb" [label=""];
  "sha256:f2c739d9a75b9cfa7451c6fcc32c2d1c2dadc047a7a0e04cfe10d34ff05b56fb" -> "sha256:c34afd03f8e006bef239f5cb42afcdfa5f13a3646454431f378b346ef7e3e1e9" [label=""];
}

