[app/sources/321553175.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:caf0ea56551150f819d31c0ed5d7b0fd044340f512c849f9a899594ed389ff60" [label="/bin/sh -c apk add --update --no-cache ca-certificates" shape="box"];
  "sha256:b9cfb339d563803ba0f7f3b485081eef3ce7d5818731c2445ee774b0c6c30ce9" [label="local://context" shape="ellipse"];
  "sha256:c6b49796ef9249d793f041c58d873b0480106228a911c55468a142c2d1c9adb1" [label="copy{src=/loki-debug, dest=/bin/loki-debug}" shape="note"];
  "sha256:e82f790a2b278f637cfe192608669f4e0b921155e5af179c01cc8eada5e2f3ab" [label="copy{src=/dlv, dest=/usr/bin}" shape="note"];
  "sha256:5654a3e6c940cb27e0d81378df01ad9633119d12f385d69fa97e644a487c7302" [label="copy{src=/loki-local-config.yaml, dest=/etc/loki/local-config.yaml}" shape="note"];
  "sha256:a3f62425c6f77059588a10f423189a10062a6019c8137107c7a4e02b03e3b6a3" [label="/bin/sh -c apk add --no-cache libc6-compat" shape="box"];
  "sha256:8e42fc68a4fffd2600cc2c99fc2012d00c52cac86daa57672052f58dbbfc7589" [label="sha256:8e42fc68a4fffd2600cc2c99fc2012d00c52cac86daa57672052f58dbbfc7589" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:caf0ea56551150f819d31c0ed5d7b0fd044340f512c849f9a899594ed389ff60" [label=""];
  "sha256:caf0ea56551150f819d31c0ed5d7b0fd044340f512c849f9a899594ed389ff60" -> "sha256:c6b49796ef9249d793f041c58d873b0480106228a911c55468a142c2d1c9adb1" [label=""];
  "sha256:b9cfb339d563803ba0f7f3b485081eef3ce7d5818731c2445ee774b0c6c30ce9" -> "sha256:c6b49796ef9249d793f041c58d873b0480106228a911c55468a142c2d1c9adb1" [label=""];
  "sha256:c6b49796ef9249d793f041c58d873b0480106228a911c55468a142c2d1c9adb1" -> "sha256:e82f790a2b278f637cfe192608669f4e0b921155e5af179c01cc8eada5e2f3ab" [label=""];
  "sha256:b9cfb339d563803ba0f7f3b485081eef3ce7d5818731c2445ee774b0c6c30ce9" -> "sha256:e82f790a2b278f637cfe192608669f4e0b921155e5af179c01cc8eada5e2f3ab" [label=""];
  "sha256:e82f790a2b278f637cfe192608669f4e0b921155e5af179c01cc8eada5e2f3ab" -> "sha256:5654a3e6c940cb27e0d81378df01ad9633119d12f385d69fa97e644a487c7302" [label=""];
  "sha256:b9cfb339d563803ba0f7f3b485081eef3ce7d5818731c2445ee774b0c6c30ce9" -> "sha256:5654a3e6c940cb27e0d81378df01ad9633119d12f385d69fa97e644a487c7302" [label=""];
  "sha256:5654a3e6c940cb27e0d81378df01ad9633119d12f385d69fa97e644a487c7302" -> "sha256:a3f62425c6f77059588a10f423189a10062a6019c8137107c7a4e02b03e3b6a3" [label=""];
  "sha256:a3f62425c6f77059588a10f423189a10062a6019c8137107c7a4e02b03e3b6a3" -> "sha256:8e42fc68a4fffd2600cc2c99fc2012d00c52cac86daa57672052f58dbbfc7589" [label=""];
}

