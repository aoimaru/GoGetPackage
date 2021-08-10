[app/sources/479018313.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:0473dd6bf8f4d8e7739e01de4ed5505880198b403ae30df599202ea36f609d21" [label="/bin/sh -c mkdir -p /app/sendmsg/conf" shape="box"];
  "sha256:771b65af789e69e7f2edae5b3cfd8ae7626692bb1e058a1dc6ddf308f5e4d00f" [label="local://context" shape="ellipse"];
  "sha256:62954e8ff99871063a5ba71eab5db09bcdb5392c7908356d22dd7ac232b2154b" [label="copy{src=/dist/receiver, dest=/app/sendmsg}" shape="note"];
  "sha256:7db7a45d776f1ada7df8a5a5e9fa8536f8cc03d4030f29bb090dcb6b3e70d705" [label="copy{src=/conf.yaml, dest=/app/sendmsg/conf}" shape="note"];
  "sha256:85c4dd1deae2b1d6bc0b8371879dfe121d85a19e1aaaf9615d57a5786d6afad2" [label="sha256:85c4dd1deae2b1d6bc0b8371879dfe121d85a19e1aaaf9615d57a5786d6afad2" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:0473dd6bf8f4d8e7739e01de4ed5505880198b403ae30df599202ea36f609d21" [label=""];
  "sha256:0473dd6bf8f4d8e7739e01de4ed5505880198b403ae30df599202ea36f609d21" -> "sha256:62954e8ff99871063a5ba71eab5db09bcdb5392c7908356d22dd7ac232b2154b" [label=""];
  "sha256:771b65af789e69e7f2edae5b3cfd8ae7626692bb1e058a1dc6ddf308f5e4d00f" -> "sha256:62954e8ff99871063a5ba71eab5db09bcdb5392c7908356d22dd7ac232b2154b" [label=""];
  "sha256:62954e8ff99871063a5ba71eab5db09bcdb5392c7908356d22dd7ac232b2154b" -> "sha256:7db7a45d776f1ada7df8a5a5e9fa8536f8cc03d4030f29bb090dcb6b3e70d705" [label=""];
  "sha256:771b65af789e69e7f2edae5b3cfd8ae7626692bb1e058a1dc6ddf308f5e4d00f" -> "sha256:7db7a45d776f1ada7df8a5a5e9fa8536f8cc03d4030f29bb090dcb6b3e70d705" [label=""];
  "sha256:7db7a45d776f1ada7df8a5a5e9fa8536f8cc03d4030f29bb090dcb6b3e70d705" -> "sha256:85c4dd1deae2b1d6bc0b8371879dfe121d85a19e1aaaf9615d57a5786d6afad2" [label=""];
}

