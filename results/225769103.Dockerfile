[app/sources/225769103.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:41856d23f4379d9b2cc96b4527d745486ca3f4b84387752dc9dc24296cab44b5" [label="/bin/sh -c apt-get update && apt-get install -y \t\topenssh-server \t\tpython-simplejson \t\trsync \t\tsudo" shape="box"];
  "sha256:e49ddada426951b6b8877808669d03887854a42e44c8d7feea4dd4879d7c99d1" [label="/bin/sh -c mkdir /var/run/sshd \t&& echo 'root:root' |chpasswd \t&& sed -ri 's/^PermitRootLogin\\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config \t&& sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config" shape="box"];
  "sha256:5dc3fbff2aeb564d7454beee162e0eab93b3187e5c80f65f588119a48fc85f8b" [label="sha256:5dc3fbff2aeb564d7454beee162e0eab93b3187e5c80f65f588119a48fc85f8b" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:41856d23f4379d9b2cc96b4527d745486ca3f4b84387752dc9dc24296cab44b5" [label=""];
  "sha256:41856d23f4379d9b2cc96b4527d745486ca3f4b84387752dc9dc24296cab44b5" -> "sha256:e49ddada426951b6b8877808669d03887854a42e44c8d7feea4dd4879d7c99d1" [label=""];
  "sha256:e49ddada426951b6b8877808669d03887854a42e44c8d7feea4dd4879d7c99d1" -> "sha256:5dc3fbff2aeb564d7454beee162e0eab93b3187e5c80f65f588119a48fc85f8b" [label=""];
}

