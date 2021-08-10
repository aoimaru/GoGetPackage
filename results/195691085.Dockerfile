[app/sources/195691085.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:627a9c4af988e7e5f238ced5e47e5743edbe19a4b34f303859f1893b407aa831" [label="/bin/sh -c set -x &&     mkdir -p /var/tmp &&     wget -qO /var/tmp/logstash.deb $DEB_URL &&     apt-get update -y &&     apt-get install -y logrotate git &&     dpkg -i /var/tmp/logstash.deb &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f80f56587e71a9ea78a98d3911fa90de6afc0e25bf16fed004264a5cf7a874c9" [label="/bin/sh -c plugin install logstash-input-beats" shape="box"];
  "sha256:4cafdf80faab66060a8fe79db560722ce181300a68aad613c92d3032f008b87e" [label="local://context" shape="ellipse"];
  "sha256:af1c9bae4c65db5baf85ae88f5e2ea46834b5ea61d5a15aaeb15713393822601" [label="copy{src=/logstash.conf.1.5.tmpl, dest=/logstash.conf.1.5.tmpl}" shape="note"];
  "sha256:9aac2fb7762fe819878bccb4e3d1e9b28e885329d7602c3cbd1c79cfb057e4ad" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:5a52bb63280bb584d4069da6533200fecc034858af917858de4e9f00b5a5b699" [label="copy{src=/pki, dest=/etc/pki}" shape="note"];
  "sha256:ae0914f8d47beb223d60f9a561523b3201bee7e8f1f4aec2db82864ea1017959" [label="sha256:ae0914f8d47beb223d60f9a561523b3201bee7e8f1f4aec2db82864ea1017959" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:627a9c4af988e7e5f238ced5e47e5743edbe19a4b34f303859f1893b407aa831" [label=""];
  "sha256:627a9c4af988e7e5f238ced5e47e5743edbe19a4b34f303859f1893b407aa831" -> "sha256:f80f56587e71a9ea78a98d3911fa90de6afc0e25bf16fed004264a5cf7a874c9" [label=""];
  "sha256:f80f56587e71a9ea78a98d3911fa90de6afc0e25bf16fed004264a5cf7a874c9" -> "sha256:af1c9bae4c65db5baf85ae88f5e2ea46834b5ea61d5a15aaeb15713393822601" [label=""];
  "sha256:4cafdf80faab66060a8fe79db560722ce181300a68aad613c92d3032f008b87e" -> "sha256:af1c9bae4c65db5baf85ae88f5e2ea46834b5ea61d5a15aaeb15713393822601" [label=""];
  "sha256:af1c9bae4c65db5baf85ae88f5e2ea46834b5ea61d5a15aaeb15713393822601" -> "sha256:9aac2fb7762fe819878bccb4e3d1e9b28e885329d7602c3cbd1c79cfb057e4ad" [label=""];
  "sha256:4cafdf80faab66060a8fe79db560722ce181300a68aad613c92d3032f008b87e" -> "sha256:9aac2fb7762fe819878bccb4e3d1e9b28e885329d7602c3cbd1c79cfb057e4ad" [label=""];
  "sha256:9aac2fb7762fe819878bccb4e3d1e9b28e885329d7602c3cbd1c79cfb057e4ad" -> "sha256:5a52bb63280bb584d4069da6533200fecc034858af917858de4e9f00b5a5b699" [label=""];
  "sha256:4cafdf80faab66060a8fe79db560722ce181300a68aad613c92d3032f008b87e" -> "sha256:5a52bb63280bb584d4069da6533200fecc034858af917858de4e9f00b5a5b699" [label=""];
  "sha256:5a52bb63280bb584d4069da6533200fecc034858af917858de4e9f00b5a5b699" -> "sha256:ae0914f8d47beb223d60f9a561523b3201bee7e8f1f4aec2db82864ea1017959" [label=""];
}

