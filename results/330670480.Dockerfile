[app/sources/330670480.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" [label="/bin/sh -c apk add --no-cache redis sed bash" shape="box"];
  "sha256:a0fad8b67b4ec6c02d3e7a281bc1586d4b4fb5459f6ce928bcfa1cfec35a1492" [label="local://context" shape="ellipse"];
  "sha256:25b1380bb89191cb1b6112c7bd3472d7c41f969feb15f9f3c70efe31aaf03199" [label="copy{src=/redis-master.conf, dest=/redis-master/redis.conf}" shape="note"];
  "sha256:c1dbdd25531a39b6c5a99abea118407c820394bb51d437ab67b438c9ad5bd1c4" [label="copy{src=/redis-slave.conf, dest=/redis-slave/redis.conf}" shape="note"];
  "sha256:ce66cc139b0bea4a4de5b760ca0a2f56695b4770040a90f53c23dc96e566bf81" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:34a11c9091f3016405bae25d1c0c96b71075467a9b093e9e5fd127dc2041f8f5" [label="sha256:34a11c9091f3016405bae25d1c0c96b71075467a9b093e9e5fd127dc2041f8f5" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" [label=""];
  "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" -> "sha256:25b1380bb89191cb1b6112c7bd3472d7c41f969feb15f9f3c70efe31aaf03199" [label=""];
  "sha256:a0fad8b67b4ec6c02d3e7a281bc1586d4b4fb5459f6ce928bcfa1cfec35a1492" -> "sha256:25b1380bb89191cb1b6112c7bd3472d7c41f969feb15f9f3c70efe31aaf03199" [label=""];
  "sha256:25b1380bb89191cb1b6112c7bd3472d7c41f969feb15f9f3c70efe31aaf03199" -> "sha256:c1dbdd25531a39b6c5a99abea118407c820394bb51d437ab67b438c9ad5bd1c4" [label=""];
  "sha256:a0fad8b67b4ec6c02d3e7a281bc1586d4b4fb5459f6ce928bcfa1cfec35a1492" -> "sha256:c1dbdd25531a39b6c5a99abea118407c820394bb51d437ab67b438c9ad5bd1c4" [label=""];
  "sha256:c1dbdd25531a39b6c5a99abea118407c820394bb51d437ab67b438c9ad5bd1c4" -> "sha256:ce66cc139b0bea4a4de5b760ca0a2f56695b4770040a90f53c23dc96e566bf81" [label=""];
  "sha256:a0fad8b67b4ec6c02d3e7a281bc1586d4b4fb5459f6ce928bcfa1cfec35a1492" -> "sha256:ce66cc139b0bea4a4de5b760ca0a2f56695b4770040a90f53c23dc96e566bf81" [label=""];
  "sha256:ce66cc139b0bea4a4de5b760ca0a2f56695b4770040a90f53c23dc96e566bf81" -> "sha256:34a11c9091f3016405bae25d1c0c96b71075467a9b093e9e5fd127dc2041f8f5" [label=""];
}

