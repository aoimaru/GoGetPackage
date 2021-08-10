[app/sources/252786656.Dockerfile]
digraph {
  "sha256:d44160f95f8d659213a6a3fcf6646494276d505d07807d4a64ea79401bc77594" [label="local://context" shape="ellipse"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:2b5da490d256a21edcf8b6c2b5dbbadc0c0ace41d76966df90b40b7e290c41a4" [label="/bin/sh -c mkdir -p /var/db/redis" shape="box"];
  "sha256:8adde4a250ccdecf5493cb1498a42ec715b48f9fa46e4604507ce86be150fcb5" [label="copy{src=/redis.conf, dest=/usr/local/etc/redis/redis.conf}" shape="note"];
  "sha256:becd2def9b9ae656b21992c601ea445501f088f400e55dc28f79305b8a2b8ad6" [label="sha256:becd2def9b9ae656b21992c601ea445501f088f400e55dc28f79305b8a2b8ad6" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:2b5da490d256a21edcf8b6c2b5dbbadc0c0ace41d76966df90b40b7e290c41a4" [label=""];
  "sha256:2b5da490d256a21edcf8b6c2b5dbbadc0c0ace41d76966df90b40b7e290c41a4" -> "sha256:8adde4a250ccdecf5493cb1498a42ec715b48f9fa46e4604507ce86be150fcb5" [label=""];
  "sha256:d44160f95f8d659213a6a3fcf6646494276d505d07807d4a64ea79401bc77594" -> "sha256:8adde4a250ccdecf5493cb1498a42ec715b48f9fa46e4604507ce86be150fcb5" [label=""];
  "sha256:8adde4a250ccdecf5493cb1498a42ec715b48f9fa46e4604507ce86be150fcb5" -> "sha256:becd2def9b9ae656b21992c601ea445501f088f400e55dc28f79305b8a2b8ad6" [label=""];
}

