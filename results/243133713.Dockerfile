[app/sources/243133713.Dockerfile]
digraph {
  "sha256:865c445fade30d79b09737eae57ca3a1e0fc98b93600aac995390911adfa0eda" [label="docker-image://docker.io/ppc64le/ubuntu:16.04" shape="ellipse"];
  "sha256:cd4fe202cb80a175b23945808ded51b90c280e7cadbb43dfdef532e7e8c1dace" [label="/bin/sh -c apt-get update && apt-get install -y make \tgcc \tgit \ttcl \t&& git clone https://github.com/antirez/redis.git && \tcd redis && \tgit checkout 3.2.9 && \tmake V=1 && \tmake install && \tcd / && \trm -fr redis && \tapt-get purge -y make gcc git && apt-get autoremove -y" shape="box"];
  "sha256:07bf31284fb45ea19ef0cb06ff2319302dbfa6b35623f3bb363e23ee65d6ec57" [label="sha256:07bf31284fb45ea19ef0cb06ff2319302dbfa6b35623f3bb363e23ee65d6ec57" shape="plaintext"];
  "sha256:865c445fade30d79b09737eae57ca3a1e0fc98b93600aac995390911adfa0eda" -> "sha256:cd4fe202cb80a175b23945808ded51b90c280e7cadbb43dfdef532e7e8c1dace" [label=""];
  "sha256:cd4fe202cb80a175b23945808ded51b90c280e7cadbb43dfdef532e7e8c1dace" -> "sha256:07bf31284fb45ea19ef0cb06ff2319302dbfa6b35623f3bb363e23ee65d6ec57" [label=""];
}

