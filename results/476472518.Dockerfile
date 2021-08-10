[app/sources/476472518.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:f273fd96c5cdc3cb6b3ff5b289a5cb71a35395940410c6a09acd6d18596b4fb3" [label="/bin/sh -c gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4" shape="box"];
  "sha256:eb386d1c9cb018842cc53146be0044e014942957e06e7bd320500e514853e1ad" [label="/bin/sh -c arch=\"$(dpkg --print-architecture)\" \t&& set -x \t&& curl -o /usr/local/bin/gosu -fSL \"https://github.com/tianon/gosu/releases/download/1.3/gosu-$arch\" \t&& curl -o /usr/local/bin/gosu.asc -fSL \"https://github.com/tianon/gosu/releases/download/1.3/gosu-$arch.asc\" \t&& gpg --verify /usr/local/bin/gosu.asc \t&& rm /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu" shape="box"];
  "sha256:c3906198b523077956506f4a192a8b090e3e83d83151a2d865c0e0532db47c5d" [label="/bin/sh -c apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4" shape="box"];
  "sha256:6ce7ee52f8039e3af0a2924fcb5fbfa35bdccd55c081a0ce5af72824a0496b4e" [label="/bin/sh -c echo \"deb $ELASTICSEARCH_REPO_BASE stable main\" > /etc/apt/sources.list.d/elasticsearch.list" shape="box"];
  "sha256:b72c06a465e69d1af43307b1121e0efa96b40e2518611667bb1a86fcdbe59107" [label="/bin/sh -c set -x \t&& apt-get update \t&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a5d9799e00ae25e1ce07856691963a7a0a0f428a881a91645007215dc17510c1" [label="/bin/sh -c set -ex \t&& for path in \t\t/usr/share/elasticsearch/data \t\t/usr/share/elasticsearch/logs \t\t/usr/share/elasticsearch/config \t\t/usr/share/elasticsearch/config/scripts \t; do \t\tmkdir -p \"$path\"; \t\tchown -R elasticsearch:elasticsearch \"$path\"; \tdone" shape="box"];
  "sha256:7b113e3f8a5bb6a129b15f9ebc7af8c88662ded49145c9a81d34d063244599e6" [label="local://context" shape="ellipse"];
  "sha256:8f7c7b893e9a36d5bf646632a06e0f4151bc746d9cf406199f227d2c1ffd96cc" [label="copy{src=/config, dest=/usr/share/elasticsearch/config}" shape="note"];
  "sha256:2243c08cfc16e0297e65e0f5a18dfa7385877214c6d4a266f4197038bdb40477" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:94fe80d6c26a69002b11f0778b5b6f704efc59768a89b4dbdeae1b3cb859ec01" [label="/bin/sh -c rm -fR /etc/elasticsearch &&     ln -s $ES_HOME/config /etc/elasticsearch" shape="box"];
  "sha256:f96c42ca33b4f2d7047f6c82cb1df6cf032fe54043e35ba04b271ed5e6cd15d1" [label="copy{src=/docker-entrypoint-shield.sh, dest=/}" shape="note"];
  "sha256:1586f544d311ea736209bb3e8d001007e0c93354deeb184e50ccc7973c336a9a" [label="sha256:1586f544d311ea736209bb3e8d001007e0c93354deeb184e50ccc7973c336a9a" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:f273fd96c5cdc3cb6b3ff5b289a5cb71a35395940410c6a09acd6d18596b4fb3" [label=""];
  "sha256:f273fd96c5cdc3cb6b3ff5b289a5cb71a35395940410c6a09acd6d18596b4fb3" -> "sha256:eb386d1c9cb018842cc53146be0044e014942957e06e7bd320500e514853e1ad" [label=""];
  "sha256:eb386d1c9cb018842cc53146be0044e014942957e06e7bd320500e514853e1ad" -> "sha256:c3906198b523077956506f4a192a8b090e3e83d83151a2d865c0e0532db47c5d" [label=""];
  "sha256:c3906198b523077956506f4a192a8b090e3e83d83151a2d865c0e0532db47c5d" -> "sha256:6ce7ee52f8039e3af0a2924fcb5fbfa35bdccd55c081a0ce5af72824a0496b4e" [label=""];
  "sha256:6ce7ee52f8039e3af0a2924fcb5fbfa35bdccd55c081a0ce5af72824a0496b4e" -> "sha256:b72c06a465e69d1af43307b1121e0efa96b40e2518611667bb1a86fcdbe59107" [label=""];
  "sha256:b72c06a465e69d1af43307b1121e0efa96b40e2518611667bb1a86fcdbe59107" -> "sha256:a5d9799e00ae25e1ce07856691963a7a0a0f428a881a91645007215dc17510c1" [label=""];
  "sha256:a5d9799e00ae25e1ce07856691963a7a0a0f428a881a91645007215dc17510c1" -> "sha256:8f7c7b893e9a36d5bf646632a06e0f4151bc746d9cf406199f227d2c1ffd96cc" [label=""];
  "sha256:7b113e3f8a5bb6a129b15f9ebc7af8c88662ded49145c9a81d34d063244599e6" -> "sha256:8f7c7b893e9a36d5bf646632a06e0f4151bc746d9cf406199f227d2c1ffd96cc" [label=""];
  "sha256:8f7c7b893e9a36d5bf646632a06e0f4151bc746d9cf406199f227d2c1ffd96cc" -> "sha256:2243c08cfc16e0297e65e0f5a18dfa7385877214c6d4a266f4197038bdb40477" [label=""];
  "sha256:7b113e3f8a5bb6a129b15f9ebc7af8c88662ded49145c9a81d34d063244599e6" -> "sha256:2243c08cfc16e0297e65e0f5a18dfa7385877214c6d4a266f4197038bdb40477" [label=""];
  "sha256:2243c08cfc16e0297e65e0f5a18dfa7385877214c6d4a266f4197038bdb40477" -> "sha256:94fe80d6c26a69002b11f0778b5b6f704efc59768a89b4dbdeae1b3cb859ec01" [label=""];
  "sha256:94fe80d6c26a69002b11f0778b5b6f704efc59768a89b4dbdeae1b3cb859ec01" -> "sha256:f96c42ca33b4f2d7047f6c82cb1df6cf032fe54043e35ba04b271ed5e6cd15d1" [label=""];
  "sha256:7b113e3f8a5bb6a129b15f9ebc7af8c88662ded49145c9a81d34d063244599e6" -> "sha256:f96c42ca33b4f2d7047f6c82cb1df6cf032fe54043e35ba04b271ed5e6cd15d1" [label=""];
  "sha256:f96c42ca33b4f2d7047f6c82cb1df6cf032fe54043e35ba04b271ed5e6cd15d1" -> "sha256:1586f544d311ea736209bb3e8d001007e0c93354deeb184e50ccc7973c336a9a" [label=""];
}

