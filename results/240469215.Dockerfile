[app/sources/240469215.Dockerfile]
digraph {
  "sha256:8082ed75c8da482b07ed62f9f3bb25497981172b02623b349d65b7e3b922e444" [label="docker-image://docker.io/bigtruedata/scala:2.11.8" shape="ellipse"];
  "sha256:810f9e2a58136e5cabc7bbbbb7088688fd649a5943fc68eb696633b2c309e53e" [label="/bin/sh -c wget -O- \"https://github.com/sbt/sbt/releases/download/v0.13.16/sbt-0.13.16.tgz\"     |  tar xzf - -C /usr/local --strip-components=1     && sbt exit" shape="box"];
  "sha256:3f79a598aff5f306d8bbb553e4b93027eea9f4ace46bd85a8cfd0354ddf012bb" [label="mkdir{path=/app}" shape="note"];
  "sha256:409a41091ebd2772f6c9261c6ae51755f8211c6aafdc0b6ed19248a1451ea902" [label="sha256:409a41091ebd2772f6c9261c6ae51755f8211c6aafdc0b6ed19248a1451ea902" shape="plaintext"];
  "sha256:8082ed75c8da482b07ed62f9f3bb25497981172b02623b349d65b7e3b922e444" -> "sha256:810f9e2a58136e5cabc7bbbbb7088688fd649a5943fc68eb696633b2c309e53e" [label=""];
  "sha256:810f9e2a58136e5cabc7bbbbb7088688fd649a5943fc68eb696633b2c309e53e" -> "sha256:3f79a598aff5f306d8bbb553e4b93027eea9f4ace46bd85a8cfd0354ddf012bb" [label=""];
  "sha256:3f79a598aff5f306d8bbb553e4b93027eea9f4ace46bd85a8cfd0354ddf012bb" -> "sha256:409a41091ebd2772f6c9261c6ae51755f8211c6aafdc0b6ed19248a1451ea902" [label=""];
}

