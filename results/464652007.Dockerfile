[app/sources/464652007.Dockerfile]
digraph {
  "sha256:6c46a9bfbc166f4c4eb2c24259f9cfccb826c6da85a555101cf39dd728d1ef16" [label="docker-image://docker.io/library/redis:3.2" shape="ellipse"];
  "sha256:bd7ec7350c2509a2bd78a88cedb21697f30e0da71d16679c0dabb0dac0a9fa01" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:23bde095193f355b8d0700146a1b35f020af0126133f602c5fcb3d1db2551ce7" [label="sha256:23bde095193f355b8d0700146a1b35f020af0126133f602c5fcb3d1db2551ce7" shape="plaintext"];
  "sha256:6c46a9bfbc166f4c4eb2c24259f9cfccb826c6da85a555101cf39dd728d1ef16" -> "sha256:bd7ec7350c2509a2bd78a88cedb21697f30e0da71d16679c0dabb0dac0a9fa01" [label=""];
  "sha256:bd7ec7350c2509a2bd78a88cedb21697f30e0da71d16679c0dabb0dac0a9fa01" -> "sha256:23bde095193f355b8d0700146a1b35f020af0126133f602c5fcb3d1db2551ce7" [label=""];
}

