[app/sources/358598526.Dockerfile]
digraph {
  "sha256:593aa99738f2f7f6647b6d64fea4f7385c141258dc2612684b5c088bb9a19afb" [label="docker-image://docker.io/spotify/kafka:latest" shape="ellipse"];
  "sha256:8c73332393fe03369df1745a274e6598b4f68122d294906842b733928ca2d5f7" [label="local://context" shape="ellipse"];
  "sha256:78b88e6e3fe56b54c9e8a916a4c457f337034e0d3a821ffc5f1288725c57ba6e" [label="copy{src=/bin/initialize-entrypoint.sh, dest=/initialize-entrypoint.sh}" shape="note"];
  "sha256:d70eecaa4685a32691613431f409bbfbd76f898e299041d79c6710a856f4bfdf" [label="/bin/sh -c chmod +x /initialize-entrypoint.sh" shape="box"];
  "sha256:f29bd6059113cc51fcce7393041da09adea77280bd75b0017fec2a22d6ce9cf0" [label="copy{src=/supervisor/kafka-init.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:01946100bffcec41f56910c470b42d392e9075f7effde3c0a8b4ba161c4d3b97" [label="sha256:01946100bffcec41f56910c470b42d392e9075f7effde3c0a8b4ba161c4d3b97" shape="plaintext"];
  "sha256:593aa99738f2f7f6647b6d64fea4f7385c141258dc2612684b5c088bb9a19afb" -> "sha256:78b88e6e3fe56b54c9e8a916a4c457f337034e0d3a821ffc5f1288725c57ba6e" [label=""];
  "sha256:8c73332393fe03369df1745a274e6598b4f68122d294906842b733928ca2d5f7" -> "sha256:78b88e6e3fe56b54c9e8a916a4c457f337034e0d3a821ffc5f1288725c57ba6e" [label=""];
  "sha256:78b88e6e3fe56b54c9e8a916a4c457f337034e0d3a821ffc5f1288725c57ba6e" -> "sha256:d70eecaa4685a32691613431f409bbfbd76f898e299041d79c6710a856f4bfdf" [label=""];
  "sha256:d70eecaa4685a32691613431f409bbfbd76f898e299041d79c6710a856f4bfdf" -> "sha256:f29bd6059113cc51fcce7393041da09adea77280bd75b0017fec2a22d6ce9cf0" [label=""];
  "sha256:8c73332393fe03369df1745a274e6598b4f68122d294906842b733928ca2d5f7" -> "sha256:f29bd6059113cc51fcce7393041da09adea77280bd75b0017fec2a22d6ce9cf0" [label=""];
  "sha256:f29bd6059113cc51fcce7393041da09adea77280bd75b0017fec2a22d6ce9cf0" -> "sha256:01946100bffcec41f56910c470b42d392e9075f7effde3c0a8b4ba161c4d3b97" [label=""];
}

