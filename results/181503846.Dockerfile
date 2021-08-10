[app/sources/181503846.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:5eb5f3565ff159c3f393f731f4c7c6f8aae33f4a38cbda219718167e88990322" [label="/bin/sh -c apk add --no-cache zsh" shape="box"];
  "sha256:0b3fde0862d39c74220d45d5bd3bab39baa9665aabbcb5ac42bea526b14b6066" [label="/bin/sh -c mkdir -p /var/app" shape="box"];
  "sha256:194808a32705edac01d9c5be9236e3986e5cc8382f091cb5fd1b5f57c85b7a26" [label="local://context" shape="ellipse"];
  "sha256:27fd12a1df8538de0cf1f24760fd5b5b6f3ec8685d125e9b4a6c923d213e13e5" [label="copy{src=/raffler, dest=/var/app}" shape="note"];
  "sha256:f45afccaf063b13f5329ee8c0b334db80bec0d927300d05f6bc30d0a4d12503f" [label="mkdir{path=/var/app}" shape="note"];
  "sha256:f07b132ffa52acfc9b143e39689554045385130d6bf93b1d71b44510fbd346b0" [label="sha256:f07b132ffa52acfc9b143e39689554045385130d6bf93b1d71b44510fbd346b0" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:5eb5f3565ff159c3f393f731f4c7c6f8aae33f4a38cbda219718167e88990322" [label=""];
  "sha256:5eb5f3565ff159c3f393f731f4c7c6f8aae33f4a38cbda219718167e88990322" -> "sha256:0b3fde0862d39c74220d45d5bd3bab39baa9665aabbcb5ac42bea526b14b6066" [label=""];
  "sha256:0b3fde0862d39c74220d45d5bd3bab39baa9665aabbcb5ac42bea526b14b6066" -> "sha256:27fd12a1df8538de0cf1f24760fd5b5b6f3ec8685d125e9b4a6c923d213e13e5" [label=""];
  "sha256:194808a32705edac01d9c5be9236e3986e5cc8382f091cb5fd1b5f57c85b7a26" -> "sha256:27fd12a1df8538de0cf1f24760fd5b5b6f3ec8685d125e9b4a6c923d213e13e5" [label=""];
  "sha256:27fd12a1df8538de0cf1f24760fd5b5b6f3ec8685d125e9b4a6c923d213e13e5" -> "sha256:f45afccaf063b13f5329ee8c0b334db80bec0d927300d05f6bc30d0a4d12503f" [label=""];
  "sha256:f45afccaf063b13f5329ee8c0b334db80bec0d927300d05f6bc30d0a4d12503f" -> "sha256:f07b132ffa52acfc9b143e39689554045385130d6bf93b1d71b44510fbd346b0" [label=""];
}

