[app/sources/205889685.Dockerfile]
digraph {
  "sha256:3b0640586b3354a16b07ec3571127fc65355c9e46ffd4ac86bfba292f458d378" [label="docker-image://docker.io/library/node:boron-alpine" shape="ellipse"];
  "sha256:f4990a99bc8bd9104f6582a6a1c5293940682d67e0d7130d1b7cb0f983d64cb7" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:b1764b84ad97fce243594bb888d85bdfb7bacf649584316a03c9dc462fc2f427" [label="local://context" shape="ellipse"];
  "sha256:b83d28a2ca88b4f24003605e074dbd939f09918789ef8b207052856fa4fcb259" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:83592829ce1ecd1ffdcf207067d321702cc707c770fc14e47e07d669913368c7" [label="/bin/sh -c apk add --no-cache git build-base file nasm autoconf libpng-dev openssl && yarn" shape="box"];
  "sha256:f7bec451034471b2be9a2771f4073515b492db35d5af112681f1dbb8292b6969" [label="sha256:f7bec451034471b2be9a2771f4073515b492db35d5af112681f1dbb8292b6969" shape="plaintext"];
  "sha256:3b0640586b3354a16b07ec3571127fc65355c9e46ffd4ac86bfba292f458d378" -> "sha256:f4990a99bc8bd9104f6582a6a1c5293940682d67e0d7130d1b7cb0f983d64cb7" [label=""];
  "sha256:f4990a99bc8bd9104f6582a6a1c5293940682d67e0d7130d1b7cb0f983d64cb7" -> "sha256:b83d28a2ca88b4f24003605e074dbd939f09918789ef8b207052856fa4fcb259" [label=""];
  "sha256:b1764b84ad97fce243594bb888d85bdfb7bacf649584316a03c9dc462fc2f427" -> "sha256:b83d28a2ca88b4f24003605e074dbd939f09918789ef8b207052856fa4fcb259" [label=""];
  "sha256:b83d28a2ca88b4f24003605e074dbd939f09918789ef8b207052856fa4fcb259" -> "sha256:83592829ce1ecd1ffdcf207067d321702cc707c770fc14e47e07d669913368c7" [label=""];
  "sha256:83592829ce1ecd1ffdcf207067d321702cc707c770fc14e47e07d669913368c7" -> "sha256:f7bec451034471b2be9a2771f4073515b492db35d5af112681f1dbb8292b6969" [label=""];
}

