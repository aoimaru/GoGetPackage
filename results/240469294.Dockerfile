[app/sources/240469294.Dockerfile]
digraph {
  "sha256:bd89c6660d7982822a6b38c60b4259ff7c277d1fd9b871c96ca0f0bfeb7b941b" [label="docker-image://docker.io/bigtruedata/scala:2.11.3" shape="ellipse"];
  "sha256:90c7f1e5fa2ec31e86bbb2349ece6c5685f8891781eb8c41f48787ecd688b0bb" [label="/bin/sh -c wget -O- \"https://github.com/sbt/sbt/releases/download/v1.0.1/sbt-1.0.1.tgz\"     |  tar xzf - -C /usr/local --strip-components=1     && sbt exit" shape="box"];
  "sha256:055804e33150b7a334a0e0bb17b2962b896976f6bd5a662af6c0cd1c2d84c57f" [label="mkdir{path=/app}" shape="note"];
  "sha256:db5c12fd5d8a327d074c33a5429fd61fa9d84d23359f0741d8cd1b7fdedff499" [label="sha256:db5c12fd5d8a327d074c33a5429fd61fa9d84d23359f0741d8cd1b7fdedff499" shape="plaintext"];
  "sha256:bd89c6660d7982822a6b38c60b4259ff7c277d1fd9b871c96ca0f0bfeb7b941b" -> "sha256:90c7f1e5fa2ec31e86bbb2349ece6c5685f8891781eb8c41f48787ecd688b0bb" [label=""];
  "sha256:90c7f1e5fa2ec31e86bbb2349ece6c5685f8891781eb8c41f48787ecd688b0bb" -> "sha256:055804e33150b7a334a0e0bb17b2962b896976f6bd5a662af6c0cd1c2d84c57f" [label=""];
  "sha256:055804e33150b7a334a0e0bb17b2962b896976f6bd5a662af6c0cd1c2d84c57f" -> "sha256:db5c12fd5d8a327d074c33a5429fd61fa9d84d23359f0741d8cd1b7fdedff499" [label=""];
}

