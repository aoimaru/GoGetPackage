[app/sources/174528731.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:f273fd96c5cdc3cb6b3ff5b289a5cb71a35395940410c6a09acd6d18596b4fb3" [label="/bin/sh -c gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4" shape="box"];
  "sha256:eb386d1c9cb018842cc53146be0044e014942957e06e7bd320500e514853e1ad" [label="/bin/sh -c arch=\"$(dpkg --print-architecture)\" \t&& set -x \t&& curl -o /usr/local/bin/gosu -fSL \"https://github.com/tianon/gosu/releases/download/1.3/gosu-$arch\" \t&& curl -o /usr/local/bin/gosu.asc -fSL \"https://github.com/tianon/gosu/releases/download/1.3/gosu-$arch.asc\" \t&& gpg --verify /usr/local/bin/gosu.asc \t&& rm /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu" shape="box"];
  "sha256:c3906198b523077956506f4a192a8b090e3e83d83151a2d865c0e0532db47c5d" [label="/bin/sh -c apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4" shape="box"];
  "sha256:ebf897b54abeabc0126867538f07e7d87d69881fd835b9c8619c276ab8f3402b" [label="/bin/sh -c wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/${ELASTICSEARCH_VERSION}/elasticsearch-${ELASTICSEARCH_VERSION}.deb" shape="box"];
  "sha256:1f0f1554c1c45cf38cac9fed75f2d302052ebbd47f5e104fb9c78851c6934065" [label="/bin/sh -c dpkg -i elasticsearch-${ELASTICSEARCH_VERSION}.deb" shape="box"];
  "sha256:55ed37d35f35507f7e2e69acc7a31e782e4c435073e2b684c3b6e74a047431ca" [label="/bin/sh -c set -ex \t&& for path in \t\t/usr/share/elasticsearch/data \t\t/usr/share/elasticsearch/logs \t\t/usr/share/elasticsearch/config \t\t/usr/share/elasticsearch/config/scripts \t; do \t\tmkdir -p \"$path\"; \t\tchown -R elasticsearch:elasticsearch \"$path\"; \tdone" shape="box"];
  "sha256:ad9d6e798b55591b7e6269d588e439651c3d40db5568be2bf41a2cba100791a4" [label="local://context" shape="ellipse"];
  "sha256:f109c805d760df371cf01ee820fc8bd9a560df2683d2e4c9f2c257869a6bec79" [label="copy{src=/config, dest=/usr/share/elasticsearch/config}" shape="note"];
  "sha256:57bd95076b75a0cf5d05dee510e7fce6dcf9ba1c73529437e000f09a2025d008" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:2470f99a3645b3c55776b76ae90db7f191feb2f8cd02ff3e018dd22e1055ae5d" [label="sha256:2470f99a3645b3c55776b76ae90db7f191feb2f8cd02ff3e018dd22e1055ae5d" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:f273fd96c5cdc3cb6b3ff5b289a5cb71a35395940410c6a09acd6d18596b4fb3" [label=""];
  "sha256:f273fd96c5cdc3cb6b3ff5b289a5cb71a35395940410c6a09acd6d18596b4fb3" -> "sha256:eb386d1c9cb018842cc53146be0044e014942957e06e7bd320500e514853e1ad" [label=""];
  "sha256:eb386d1c9cb018842cc53146be0044e014942957e06e7bd320500e514853e1ad" -> "sha256:c3906198b523077956506f4a192a8b090e3e83d83151a2d865c0e0532db47c5d" [label=""];
  "sha256:c3906198b523077956506f4a192a8b090e3e83d83151a2d865c0e0532db47c5d" -> "sha256:ebf897b54abeabc0126867538f07e7d87d69881fd835b9c8619c276ab8f3402b" [label=""];
  "sha256:ebf897b54abeabc0126867538f07e7d87d69881fd835b9c8619c276ab8f3402b" -> "sha256:1f0f1554c1c45cf38cac9fed75f2d302052ebbd47f5e104fb9c78851c6934065" [label=""];
  "sha256:1f0f1554c1c45cf38cac9fed75f2d302052ebbd47f5e104fb9c78851c6934065" -> "sha256:55ed37d35f35507f7e2e69acc7a31e782e4c435073e2b684c3b6e74a047431ca" [label=""];
  "sha256:55ed37d35f35507f7e2e69acc7a31e782e4c435073e2b684c3b6e74a047431ca" -> "sha256:f109c805d760df371cf01ee820fc8bd9a560df2683d2e4c9f2c257869a6bec79" [label=""];
  "sha256:ad9d6e798b55591b7e6269d588e439651c3d40db5568be2bf41a2cba100791a4" -> "sha256:f109c805d760df371cf01ee820fc8bd9a560df2683d2e4c9f2c257869a6bec79" [label=""];
  "sha256:f109c805d760df371cf01ee820fc8bd9a560df2683d2e4c9f2c257869a6bec79" -> "sha256:57bd95076b75a0cf5d05dee510e7fce6dcf9ba1c73529437e000f09a2025d008" [label=""];
  "sha256:ad9d6e798b55591b7e6269d588e439651c3d40db5568be2bf41a2cba100791a4" -> "sha256:57bd95076b75a0cf5d05dee510e7fce6dcf9ba1c73529437e000f09a2025d008" [label=""];
  "sha256:57bd95076b75a0cf5d05dee510e7fce6dcf9ba1c73529437e000f09a2025d008" -> "sha256:2470f99a3645b3c55776b76ae90db7f191feb2f8cd02ff3e018dd22e1055ae5d" [label=""];
}

