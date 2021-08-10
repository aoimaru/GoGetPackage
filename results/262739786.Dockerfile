[app/sources/262739786.Dockerfile]
digraph {
  "sha256:eaf8f76f20f5b2bddcc1fb61137dbabb8ea77ff621904dc33bf550e8e83a71fc" [label="local://context" shape="ellipse"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" [label="/bin/sh -c apk add --no-cache redis sed bash" shape="box"];
  "sha256:67064e2c6d3336809888d3eec7f78a1283812ec1762aada0d998393aeaaf79c3" [label="copy{src=/redis-master.conf, dest=/redis-master/redis.conf}" shape="note"];
  "sha256:69b9d83013da990094e593c9e82d3bafdb2eadaf0460694b1217c74bc6d4fb9d" [label="copy{src=/redis-slave.conf, dest=/redis-slave/redis.conf}" shape="note"];
  "sha256:fe56180329ddba9e5927cbfb5c8e15a31bdec6df759ac2a584d8a0544a585ad1" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:ea074cecae2989c89980e44430759218ee8d050109e84aae94bb8a8df93eca92" [label="sha256:ea074cecae2989c89980e44430759218ee8d050109e84aae94bb8a8df93eca92" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" [label=""];
  "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" -> "sha256:67064e2c6d3336809888d3eec7f78a1283812ec1762aada0d998393aeaaf79c3" [label=""];
  "sha256:eaf8f76f20f5b2bddcc1fb61137dbabb8ea77ff621904dc33bf550e8e83a71fc" -> "sha256:67064e2c6d3336809888d3eec7f78a1283812ec1762aada0d998393aeaaf79c3" [label=""];
  "sha256:67064e2c6d3336809888d3eec7f78a1283812ec1762aada0d998393aeaaf79c3" -> "sha256:69b9d83013da990094e593c9e82d3bafdb2eadaf0460694b1217c74bc6d4fb9d" [label=""];
  "sha256:eaf8f76f20f5b2bddcc1fb61137dbabb8ea77ff621904dc33bf550e8e83a71fc" -> "sha256:69b9d83013da990094e593c9e82d3bafdb2eadaf0460694b1217c74bc6d4fb9d" [label=""];
  "sha256:69b9d83013da990094e593c9e82d3bafdb2eadaf0460694b1217c74bc6d4fb9d" -> "sha256:fe56180329ddba9e5927cbfb5c8e15a31bdec6df759ac2a584d8a0544a585ad1" [label=""];
  "sha256:eaf8f76f20f5b2bddcc1fb61137dbabb8ea77ff621904dc33bf550e8e83a71fc" -> "sha256:fe56180329ddba9e5927cbfb5c8e15a31bdec6df759ac2a584d8a0544a585ad1" [label=""];
  "sha256:fe56180329ddba9e5927cbfb5c8e15a31bdec6df759ac2a584d8a0544a585ad1" -> "sha256:ea074cecae2989c89980e44430759218ee8d050109e84aae94bb8a8df93eca92" [label=""];
}

