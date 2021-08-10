[app/sources/252774556.Dockerfile]
digraph {
  "sha256:01edf9a3ce98793a826dadb20b7c31a8374e6536388b704c946a7c9e8792f4c4" [label="docker-image://docker.io/barkingiguana/rvm:latest" shape="ellipse"];
  "sha256:b8a6ea1eae426a9c9a6b8a4709ee0528250ab666adbe938eb2b5616cb84c46b9" [label="local://context" shape="ellipse"];
  "sha256:b570f55854027e31faf1eaac7f7e3d7c7b997d38b74c1668fea4f03a918617ec" [label="copy{src=/start-app.sh, dest=/usr/sbin/start-app}" shape="note"];
  "sha256:62618bec4288039922e88be2f4f9cd18b08673fd4f99f267d89ea7a4fa104283" [label="/bin/sh -c chmod +x /usr/sbin/start-app" shape="box"];
  "sha256:47048c19d44703982babd3207f8f3c78c396cfc31c9306a10c08b69b3a092e95" [label="/bin/sh -c mkdir -p /u/app" shape="box"];
  "sha256:19bfc7dd24c2ff5a7441f7e88ac0460096295e53f9c7949d89c34ce6919a1c4b" [label="mkdir{path=/u/app}" shape="note"];
  "sha256:2b84efaa70a0ed7bb12c50ced0bd92e3b5c491e073c1cfb92f6dd996644bde74" [label="sha256:2b84efaa70a0ed7bb12c50ced0bd92e3b5c491e073c1cfb92f6dd996644bde74" shape="plaintext"];
  "sha256:01edf9a3ce98793a826dadb20b7c31a8374e6536388b704c946a7c9e8792f4c4" -> "sha256:b570f55854027e31faf1eaac7f7e3d7c7b997d38b74c1668fea4f03a918617ec" [label=""];
  "sha256:b8a6ea1eae426a9c9a6b8a4709ee0528250ab666adbe938eb2b5616cb84c46b9" -> "sha256:b570f55854027e31faf1eaac7f7e3d7c7b997d38b74c1668fea4f03a918617ec" [label=""];
  "sha256:b570f55854027e31faf1eaac7f7e3d7c7b997d38b74c1668fea4f03a918617ec" -> "sha256:62618bec4288039922e88be2f4f9cd18b08673fd4f99f267d89ea7a4fa104283" [label=""];
  "sha256:62618bec4288039922e88be2f4f9cd18b08673fd4f99f267d89ea7a4fa104283" -> "sha256:47048c19d44703982babd3207f8f3c78c396cfc31c9306a10c08b69b3a092e95" [label=""];
  "sha256:47048c19d44703982babd3207f8f3c78c396cfc31c9306a10c08b69b3a092e95" -> "sha256:19bfc7dd24c2ff5a7441f7e88ac0460096295e53f9c7949d89c34ce6919a1c4b" [label=""];
  "sha256:19bfc7dd24c2ff5a7441f7e88ac0460096295e53f9c7949d89c34ce6919a1c4b" -> "sha256:2b84efaa70a0ed7bb12c50ced0bd92e3b5c491e073c1cfb92f6dd996644bde74" [label=""];
}

