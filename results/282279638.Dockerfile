[app/sources/282279638.Dockerfile]
digraph {
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:aa63c249cab0c5f13ddeabdb1c3aa15351ce122237785539c800f742abf5e5db" [label="/bin/sh -c wget -O- \"http://downloads.lightbend.com/scala/2.11.9/scala-2.11.9.tgz\"     | tar xzf - -C /usr/local --strip-components=1" shape="box"];
  "sha256:49056969c484c1752e18475f6e1c46869fcb3ea4ecd3deffe7e412b8180bf0a3" [label="mkdir{path=/app}" shape="note"];
  "sha256:2652c876b7c2a30aab1645d3a948ac8d5a9c5983c5c2590d9f3557c413e0fdc2" [label="sha256:2652c876b7c2a30aab1645d3a948ac8d5a9c5983c5c2590d9f3557c413e0fdc2" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:aa63c249cab0c5f13ddeabdb1c3aa15351ce122237785539c800f742abf5e5db" [label=""];
  "sha256:aa63c249cab0c5f13ddeabdb1c3aa15351ce122237785539c800f742abf5e5db" -> "sha256:49056969c484c1752e18475f6e1c46869fcb3ea4ecd3deffe7e412b8180bf0a3" [label=""];
  "sha256:49056969c484c1752e18475f6e1c46869fcb3ea4ecd3deffe7e412b8180bf0a3" -> "sha256:2652c876b7c2a30aab1645d3a948ac8d5a9c5983c5c2590d9f3557c413e0fdc2" [label=""];
}

