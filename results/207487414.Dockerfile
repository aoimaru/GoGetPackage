[app/sources/207487414.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:f273fd96c5cdc3cb6b3ff5b289a5cb71a35395940410c6a09acd6d18596b4fb3" [label="/bin/sh -c gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4" shape="box"];
  "sha256:eb386d1c9cb018842cc53146be0044e014942957e06e7bd320500e514853e1ad" [label="/bin/sh -c arch=\"$(dpkg --print-architecture)\" \t&& set -x \t&& curl -o /usr/local/bin/gosu -fSL \"https://github.com/tianon/gosu/releases/download/1.3/gosu-$arch\" \t&& curl -o /usr/local/bin/gosu.asc -fSL \"https://github.com/tianon/gosu/releases/download/1.3/gosu-$arch.asc\" \t&& gpg --verify /usr/local/bin/gosu.asc \t&& rm /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu" shape="box"];
  "sha256:c3906198b523077956506f4a192a8b090e3e83d83151a2d865c0e0532db47c5d" [label="/bin/sh -c apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4" shape="box"];
  "sha256:ebf897b54abeabc0126867538f07e7d87d69881fd835b9c8619c276ab8f3402b" [label="/bin/sh -c wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/${ELASTICSEARCH_VERSION}/elasticsearch-${ELASTICSEARCH_VERSION}.deb" shape="box"];
  "sha256:1f0f1554c1c45cf38cac9fed75f2d302052ebbd47f5e104fb9c78851c6934065" [label="/bin/sh -c dpkg -i elasticsearch-${ELASTICSEARCH_VERSION}.deb" shape="box"];
  "sha256:55ed37d35f35507f7e2e69acc7a31e782e4c435073e2b684c3b6e74a047431ca" [label="/bin/sh -c set -ex \t&& for path in \t\t/usr/share/elasticsearch/data \t\t/usr/share/elasticsearch/logs \t\t/usr/share/elasticsearch/config \t\t/usr/share/elasticsearch/config/scripts \t; do \t\tmkdir -p \"$path\"; \t\tchown -R elasticsearch:elasticsearch \"$path\"; \tdone" shape="box"];
  "sha256:41653220116ad2a7cc3aa67b798e4c2a42169519be2fb59738a9b1dcc98ae7ac" [label="local://context" shape="ellipse"];
  "sha256:e75d008d4e5713f4e96280cd88bac893bf82563d1a07cb31dc9913e13bf4518b" [label="copy{src=/config, dest=/usr/share/elasticsearch/config}" shape="note"];
  "sha256:77b309681b6e4045aeda226ab29ab330b98f8a9f017e5e37e4f810b6aeaa67e6" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:bb83f0aca77d98d3615c0d68573f649327f9a8ac5ef06f50b6f14ba01e3d23be" [label="sha256:bb83f0aca77d98d3615c0d68573f649327f9a8ac5ef06f50b6f14ba01e3d23be" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:f273fd96c5cdc3cb6b3ff5b289a5cb71a35395940410c6a09acd6d18596b4fb3" [label=""];
  "sha256:f273fd96c5cdc3cb6b3ff5b289a5cb71a35395940410c6a09acd6d18596b4fb3" -> "sha256:eb386d1c9cb018842cc53146be0044e014942957e06e7bd320500e514853e1ad" [label=""];
  "sha256:eb386d1c9cb018842cc53146be0044e014942957e06e7bd320500e514853e1ad" -> "sha256:c3906198b523077956506f4a192a8b090e3e83d83151a2d865c0e0532db47c5d" [label=""];
  "sha256:c3906198b523077956506f4a192a8b090e3e83d83151a2d865c0e0532db47c5d" -> "sha256:ebf897b54abeabc0126867538f07e7d87d69881fd835b9c8619c276ab8f3402b" [label=""];
  "sha256:ebf897b54abeabc0126867538f07e7d87d69881fd835b9c8619c276ab8f3402b" -> "sha256:1f0f1554c1c45cf38cac9fed75f2d302052ebbd47f5e104fb9c78851c6934065" [label=""];
  "sha256:1f0f1554c1c45cf38cac9fed75f2d302052ebbd47f5e104fb9c78851c6934065" -> "sha256:55ed37d35f35507f7e2e69acc7a31e782e4c435073e2b684c3b6e74a047431ca" [label=""];
  "sha256:55ed37d35f35507f7e2e69acc7a31e782e4c435073e2b684c3b6e74a047431ca" -> "sha256:e75d008d4e5713f4e96280cd88bac893bf82563d1a07cb31dc9913e13bf4518b" [label=""];
  "sha256:41653220116ad2a7cc3aa67b798e4c2a42169519be2fb59738a9b1dcc98ae7ac" -> "sha256:e75d008d4e5713f4e96280cd88bac893bf82563d1a07cb31dc9913e13bf4518b" [label=""];
  "sha256:e75d008d4e5713f4e96280cd88bac893bf82563d1a07cb31dc9913e13bf4518b" -> "sha256:77b309681b6e4045aeda226ab29ab330b98f8a9f017e5e37e4f810b6aeaa67e6" [label=""];
  "sha256:41653220116ad2a7cc3aa67b798e4c2a42169519be2fb59738a9b1dcc98ae7ac" -> "sha256:77b309681b6e4045aeda226ab29ab330b98f8a9f017e5e37e4f810b6aeaa67e6" [label=""];
  "sha256:77b309681b6e4045aeda226ab29ab330b98f8a9f017e5e37e4f810b6aeaa67e6" -> "sha256:bb83f0aca77d98d3615c0d68573f649327f9a8ac5ef06f50b6f14ba01e3d23be" [label=""];
}

