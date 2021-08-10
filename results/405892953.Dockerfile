[app/sources/405892953.Dockerfile]
digraph {
  "sha256:c3a3e20a0c4cc5ad7c3f9877f5dbf2258ef9025fb952fb962964636a80f6944e" [label="docker-image://docker.io/library/debian:9.9" shape="ellipse"];
  "sha256:937a8c57b8659cf8b5853e8adb6ddf2b3a5d134351ca366eecf78fa3510f7cb0" [label="mkdir{path=/opt}" shape="note"];
  "sha256:2ddceea8ac845b34efb62c6c901af01528e7d07307c83a1490f8af037a97e7d9" [label="local://context" shape="ellipse"];
  "sha256:65b9be8badae8ea19c62a5dde54c3fa5699ff06c7d1d4ffacfff724b02136ccd" [label="copy{src=/target-debian, dest=/opt/target}" shape="note"];
  "sha256:7b6e8ed668b6c38f4c11ae5f260316ae53e54e1162910e67cd71ed7d754afcf4" [label="/bin/sh -c apt-get update &&     apt-get install -y     libssl-dev" shape="box"];
  "sha256:e1ad059db6040515c01e8a726fbcd93a692c2433507a8c1dfe2aa3c4e276e113" [label="sha256:e1ad059db6040515c01e8a726fbcd93a692c2433507a8c1dfe2aa3c4e276e113" shape="plaintext"];
  "sha256:c3a3e20a0c4cc5ad7c3f9877f5dbf2258ef9025fb952fb962964636a80f6944e" -> "sha256:937a8c57b8659cf8b5853e8adb6ddf2b3a5d134351ca366eecf78fa3510f7cb0" [label=""];
  "sha256:937a8c57b8659cf8b5853e8adb6ddf2b3a5d134351ca366eecf78fa3510f7cb0" -> "sha256:65b9be8badae8ea19c62a5dde54c3fa5699ff06c7d1d4ffacfff724b02136ccd" [label=""];
  "sha256:2ddceea8ac845b34efb62c6c901af01528e7d07307c83a1490f8af037a97e7d9" -> "sha256:65b9be8badae8ea19c62a5dde54c3fa5699ff06c7d1d4ffacfff724b02136ccd" [label=""];
  "sha256:65b9be8badae8ea19c62a5dde54c3fa5699ff06c7d1d4ffacfff724b02136ccd" -> "sha256:7b6e8ed668b6c38f4c11ae5f260316ae53e54e1162910e67cd71ed7d754afcf4" [label=""];
  "sha256:7b6e8ed668b6c38f4c11ae5f260316ae53e54e1162910e67cd71ed7d754afcf4" -> "sha256:e1ad059db6040515c01e8a726fbcd93a692c2433507a8c1dfe2aa3c4e276e113" [label=""];
}

