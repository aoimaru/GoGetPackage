[app/sources/278175701.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label="/bin/sh -c apk update" shape="box"];
  "sha256:312d5ded8b67f92997bc0d28d3a9e232be9e8642662bf6f973de21ad88d78216" [label="/bin/sh -c apk add -v iptables sudo" shape="box"];
  "sha256:9418fa882c87f8bdfac1ebee655525f04df441fc07356f4ebeb1b1c6b1ad6d4c" [label="local://context" shape="ellipse"];
  "sha256:7b743edfd2a9fa0667e94f01a7984f1bcbbc18bbc99812ccbdd7b8f60324074b" [label="copy{src=/bin/etcd-agent, dest=/}" shape="note"];
  "sha256:f235e7d72a55fdddd8b869e8891ec875aad5fc841fdc2abda4f4778dc8930a50" [label="copy{src=/bin/etcd, dest=/}" shape="note"];
  "sha256:1b534e13055115e5a6a0dd7bd260e4910197af35e85b82f4aede55a242100557" [label="copy{src=/bin/etcd-tester, dest=/}" shape="note"];
  "sha256:70db680f30d59e9316a61dfec6006e99509a4fdb1c77a0d6392596a5380256ba" [label="/bin/sh -c mkdir /failure_archive" shape="box"];
  "sha256:6495aead724141854859a541a1d1f4eaf7b381d8a85735cce40d0a97a0e6f732" [label="sha256:6495aead724141854859a541a1d1f4eaf7b381d8a85735cce40d0a97a0e6f732" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label=""];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" -> "sha256:312d5ded8b67f92997bc0d28d3a9e232be9e8642662bf6f973de21ad88d78216" [label=""];
  "sha256:312d5ded8b67f92997bc0d28d3a9e232be9e8642662bf6f973de21ad88d78216" -> "sha256:7b743edfd2a9fa0667e94f01a7984f1bcbbc18bbc99812ccbdd7b8f60324074b" [label=""];
  "sha256:9418fa882c87f8bdfac1ebee655525f04df441fc07356f4ebeb1b1c6b1ad6d4c" -> "sha256:7b743edfd2a9fa0667e94f01a7984f1bcbbc18bbc99812ccbdd7b8f60324074b" [label=""];
  "sha256:7b743edfd2a9fa0667e94f01a7984f1bcbbc18bbc99812ccbdd7b8f60324074b" -> "sha256:f235e7d72a55fdddd8b869e8891ec875aad5fc841fdc2abda4f4778dc8930a50" [label=""];
  "sha256:9418fa882c87f8bdfac1ebee655525f04df441fc07356f4ebeb1b1c6b1ad6d4c" -> "sha256:f235e7d72a55fdddd8b869e8891ec875aad5fc841fdc2abda4f4778dc8930a50" [label=""];
  "sha256:f235e7d72a55fdddd8b869e8891ec875aad5fc841fdc2abda4f4778dc8930a50" -> "sha256:1b534e13055115e5a6a0dd7bd260e4910197af35e85b82f4aede55a242100557" [label=""];
  "sha256:9418fa882c87f8bdfac1ebee655525f04df441fc07356f4ebeb1b1c6b1ad6d4c" -> "sha256:1b534e13055115e5a6a0dd7bd260e4910197af35e85b82f4aede55a242100557" [label=""];
  "sha256:1b534e13055115e5a6a0dd7bd260e4910197af35e85b82f4aede55a242100557" -> "sha256:70db680f30d59e9316a61dfec6006e99509a4fdb1c77a0d6392596a5380256ba" [label=""];
  "sha256:70db680f30d59e9316a61dfec6006e99509a4fdb1c77a0d6392596a5380256ba" -> "sha256:6495aead724141854859a541a1d1f4eaf7b381d8a85735cce40d0a97a0e6f732" [label=""];
}

