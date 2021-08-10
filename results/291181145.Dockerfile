[app/sources/291181145.Dockerfile]
digraph {
  "sha256:474f2a9f87bc53c31967c97b541f6a58c1a98a8217ca4bf01361e89f5e2aa59f" [label="docker-image://docker.io/circleci/mongo:3.7.7@sha256:3497f8fb790d0ed359914593e5c42a046b72c0fd83e693443f3d4ee3357a4147" shape="ellipse"];
  "sha256:2ffde1586b9c2bbc69320cde08c770f0009883a53db6ec3b38c77e49baea1f89" [label="/bin/sh -c sed -i '/exec \"$@\"/i mkdir \\/dev\\/shm\\/mongo' /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:40af382240c3ead71893f5b677d7441ee5b9a9d42a7c756d29d0f69f97c2a04c" [label="sha256:40af382240c3ead71893f5b677d7441ee5b9a9d42a7c756d29d0f69f97c2a04c" shape="plaintext"];
  "sha256:474f2a9f87bc53c31967c97b541f6a58c1a98a8217ca4bf01361e89f5e2aa59f" -> "sha256:2ffde1586b9c2bbc69320cde08c770f0009883a53db6ec3b38c77e49baea1f89" [label=""];
  "sha256:2ffde1586b9c2bbc69320cde08c770f0009883a53db6ec3b38c77e49baea1f89" -> "sha256:40af382240c3ead71893f5b677d7441ee5b9a9d42a7c756d29d0f69f97c2a04c" [label=""];
}

