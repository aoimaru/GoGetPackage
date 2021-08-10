[app/sources/168195610.Dockerfile]
digraph {
  "sha256:02c3f473aca8a5915cbe7002d2e745bb6d36c0e30a71314737f7523bc8229f10" [label="docker-image://docker.io/xuwang/elasticsearch:latest" shape="ellipse"];
  "sha256:4c1ff6b3ed3f9eb53379f3201876e87df2fa845e0d94275384cd01fb68d017e1" [label="local://context" shape="ellipse"];
  "sha256:34a84a2cf1053741c19f36f5b9de10d6261e97d0c799617da8549389301be549" [label="copy{src=/logstash.repo, dest=/etc/yum.repos.d/}" shape="note"];
  "sha256:021fb463c2b1de38814a85c4eb848a92444b0b1bb2c3ac7c27847d376aa88077" [label="/bin/sh -c yum install -y logstash && mkdir -p /var/lib/logstash" shape="box"];
  "sha256:f5fc3ab7f293afc13f3d36ae4287833a3ce31e045db6be80913f4e2c74ae8b75" [label="copy{src=/config, dest=/var/lib/logstash/config}" shape="note"];
  "sha256:4afb8a7e36e03af0a59a29ec1105495e51d6f9beb9a69f14bea27bd7aef4d354" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:480794f6caef8c5ee83a8843b6f822beebcd0b80ec5328b6621f9c77ef6e1c86" [label="sha256:480794f6caef8c5ee83a8843b6f822beebcd0b80ec5328b6621f9c77ef6e1c86" shape="plaintext"];
  "sha256:02c3f473aca8a5915cbe7002d2e745bb6d36c0e30a71314737f7523bc8229f10" -> "sha256:34a84a2cf1053741c19f36f5b9de10d6261e97d0c799617da8549389301be549" [label=""];
  "sha256:4c1ff6b3ed3f9eb53379f3201876e87df2fa845e0d94275384cd01fb68d017e1" -> "sha256:34a84a2cf1053741c19f36f5b9de10d6261e97d0c799617da8549389301be549" [label=""];
  "sha256:34a84a2cf1053741c19f36f5b9de10d6261e97d0c799617da8549389301be549" -> "sha256:021fb463c2b1de38814a85c4eb848a92444b0b1bb2c3ac7c27847d376aa88077" [label=""];
  "sha256:021fb463c2b1de38814a85c4eb848a92444b0b1bb2c3ac7c27847d376aa88077" -> "sha256:f5fc3ab7f293afc13f3d36ae4287833a3ce31e045db6be80913f4e2c74ae8b75" [label=""];
  "sha256:4c1ff6b3ed3f9eb53379f3201876e87df2fa845e0d94275384cd01fb68d017e1" -> "sha256:f5fc3ab7f293afc13f3d36ae4287833a3ce31e045db6be80913f4e2c74ae8b75" [label=""];
  "sha256:f5fc3ab7f293afc13f3d36ae4287833a3ce31e045db6be80913f4e2c74ae8b75" -> "sha256:4afb8a7e36e03af0a59a29ec1105495e51d6f9beb9a69f14bea27bd7aef4d354" [label=""];
  "sha256:4c1ff6b3ed3f9eb53379f3201876e87df2fa845e0d94275384cd01fb68d017e1" -> "sha256:4afb8a7e36e03af0a59a29ec1105495e51d6f9beb9a69f14bea27bd7aef4d354" [label=""];
  "sha256:4afb8a7e36e03af0a59a29ec1105495e51d6f9beb9a69f14bea27bd7aef4d354" -> "sha256:480794f6caef8c5ee83a8843b6f822beebcd0b80ec5328b6621f9c77ef6e1c86" [label=""];
}

