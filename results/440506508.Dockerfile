[app/sources/440506508.Dockerfile]
digraph {
  "sha256:22f44efef74daabe8a0cee9093b0a0942cace4e32309e35b265cb7aa7e560520" [label="local://context" shape="ellipse"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:fd7b33e7db2d8ea40f530c1fa4b0c40b1c8523bf2272ddfc148b18cb7a77e9e2" [label="mkdir{path=/home}" shape="note"];
  "sha256:9d9bf651d4311d5e7df1dbc2100ecf16fca0bac376dd6a497d5fcd618aad0e4d" [label="/bin/sh -c apk --update add php7 php7-phar" shape="box"];
  "sha256:1d34e2205ac7d37d6932939f734dab030f2de9208a7ab3fe6acfdd1e11c7ff7a" [label="copy{src=/poi, dest=/usr/local/bin/poi}" shape="note"];
  "sha256:e5b78b6e042183d765820507909d7bc91509a623e211669a0fe85673fcac1e8a" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:57bb7a2edcb167df6c65c017723916873d7bbf4def37c48faa18c8ad3da91356" [label="sha256:57bb7a2edcb167df6c65c017723916873d7bbf4def37c48faa18c8ad3da91356" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:fd7b33e7db2d8ea40f530c1fa4b0c40b1c8523bf2272ddfc148b18cb7a77e9e2" [label=""];
  "sha256:fd7b33e7db2d8ea40f530c1fa4b0c40b1c8523bf2272ddfc148b18cb7a77e9e2" -> "sha256:9d9bf651d4311d5e7df1dbc2100ecf16fca0bac376dd6a497d5fcd618aad0e4d" [label=""];
  "sha256:9d9bf651d4311d5e7df1dbc2100ecf16fca0bac376dd6a497d5fcd618aad0e4d" -> "sha256:1d34e2205ac7d37d6932939f734dab030f2de9208a7ab3fe6acfdd1e11c7ff7a" [label=""];
  "sha256:22f44efef74daabe8a0cee9093b0a0942cace4e32309e35b265cb7aa7e560520" -> "sha256:1d34e2205ac7d37d6932939f734dab030f2de9208a7ab3fe6acfdd1e11c7ff7a" [label=""];
  "sha256:1d34e2205ac7d37d6932939f734dab030f2de9208a7ab3fe6acfdd1e11c7ff7a" -> "sha256:e5b78b6e042183d765820507909d7bc91509a623e211669a0fe85673fcac1e8a" [label=""];
  "sha256:22f44efef74daabe8a0cee9093b0a0942cace4e32309e35b265cb7aa7e560520" -> "sha256:e5b78b6e042183d765820507909d7bc91509a623e211669a0fe85673fcac1e8a" [label=""];
  "sha256:e5b78b6e042183d765820507909d7bc91509a623e211669a0fe85673fcac1e8a" -> "sha256:57bb7a2edcb167df6c65c017723916873d7bbf4def37c48faa18c8ad3da91356" [label=""];
}

