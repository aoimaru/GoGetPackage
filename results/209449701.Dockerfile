[app/sources/209449701.Dockerfile]
digraph {
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" [label="docker-image://docker.io/library/debian:8" shape="ellipse"];
  "sha256:0f2966095d5d9bed19a4b81225d2bec7b4ec38ebf8d84de8722d220234a09d46" [label="/bin/sh -c apt-get update && apt-get install wget python -y" shape="box"];
  "sha256:459ee23b2bf4d8e99c0a27e31084f3f0d81dca5ce2a3f00d7e365895b2a0237c" [label="/bin/sh -c wget http://downloads.mesosphere.io/master/debian/8/mesos_0.24.1-0.2.35.debian81_amd64.deb -O /tmp/mesos.deb" shape="box"];
  "sha256:128080252091eb9956de26240969561c8a9cf547aca32436ffcd7fd134745fbf" [label="/bin/sh -c dpkg -i /tmp/mesos.deb || true" shape="box"];
  "sha256:db465c27383b427d01d3487a378ea10c4d359e8676a984e4f7d5606b2a5493e1" [label="/bin/sh -c apt-get install -f -y" shape="box"];
  "sha256:8d76fe3816b9b4c14460e5153ae36a8be9adf9e56258964c39656b481304a78a" [label="sha256:8d76fe3816b9b4c14460e5153ae36a8be9adf9e56258964c39656b481304a78a" shape="plaintext"];
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" -> "sha256:0f2966095d5d9bed19a4b81225d2bec7b4ec38ebf8d84de8722d220234a09d46" [label=""];
  "sha256:0f2966095d5d9bed19a4b81225d2bec7b4ec38ebf8d84de8722d220234a09d46" -> "sha256:459ee23b2bf4d8e99c0a27e31084f3f0d81dca5ce2a3f00d7e365895b2a0237c" [label=""];
  "sha256:459ee23b2bf4d8e99c0a27e31084f3f0d81dca5ce2a3f00d7e365895b2a0237c" -> "sha256:128080252091eb9956de26240969561c8a9cf547aca32436ffcd7fd134745fbf" [label=""];
  "sha256:128080252091eb9956de26240969561c8a9cf547aca32436ffcd7fd134745fbf" -> "sha256:db465c27383b427d01d3487a378ea10c4d359e8676a984e4f7d5606b2a5493e1" [label=""];
  "sha256:db465c27383b427d01d3487a378ea10c4d359e8676a984e4f7d5606b2a5493e1" -> "sha256:8d76fe3816b9b4c14460e5153ae36a8be9adf9e56258964c39656b481304a78a" [label=""];
}

