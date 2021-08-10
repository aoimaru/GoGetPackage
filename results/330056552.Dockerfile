[app/sources/330056552.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:d1f25cad2f5f9f4279c31ee6acc8e097aa7b2ba63eec4ddd05f9a74faeb7a120" [label="/bin/sh -c apk add --update ca-certificates" shape="box"];
  "sha256:44071a7eddf27181b4553fdac0c8e899d1cc46d7651538eddcd6d1f3f84d8edf" [label="/bin/sh -c apk add --no-cache --update bash iproute2 libpcap libusb-dev libnetfilter_queue wireless-tools" shape="box"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:a4591a9c7ba1434e375ec61ac6487858e4bb8fe717290a1b77d4e7007025db5f" [label="/bin/sh -c apk add --update ca-certificates" shape="box"];
  "sha256:c01ec451e24742c7ea9d7207e1dbb8cc7426e4b6ee03db32c778c0df7796ffb6" [label="/bin/sh -c apk add --no-cache --update bash iptables wireless-tools build-base libpcap-dev libusb-dev linux-headers libnetfilter_queue-dev git" shape="box"];
  "sha256:d0f8757360ca4e71962c7df10e92cd88e02e038c2c15020603a9bf7204f561ab" [label="mkdir{path=/src/github.com/bettercap/bettercap}" shape="note"];
  "sha256:d5e14c87968ab454deec27207c2b9e33cb0d58d7c211c55bf03ce1a65894f80c" [label="local://context" shape="ellipse"];
  "sha256:23b111653ef69db5b030217fd9c4cb5c9477d9f2d5f39e91a6492e6197cd6f85" [label="copy{src=/, dest=/src/github.com/bettercap/bettercap}" shape="note"];
  "sha256:032445f0066e61b3af1cabcdc5429954d9bb541372dd9d345de100ac9e03f9d6" [label="/bin/sh -c go get -u github.com/golang/dep/..." shape="box"];
  "sha256:b668e8ea84df0c8ec5f3609d9db49a0f09f85680e836d76b5fbc8a5053461ce1" [label="/bin/sh -c make deps" shape="box"];
  "sha256:cbd8f80843a34bc6e496a4875d8c1a49819a868cbbf97cd89df73b73724a22aa" [label="/bin/sh -c make" shape="box"];
  "sha256:f3b69a058711276a9f3e0b2d73345c90f1f67b391203f5c6c7ee161bfbefffd0" [label="/bin/sh -c mkdir -p /usr/local/share/bettercap" shape="box"];
  "sha256:e1627549f7a6e9918f8e15ee75e12bd94e457a12f0549f508128cc5fb178e95b" [label="/bin/sh -c git clone https://github.com/bettercap/caplets /usr/local/share/bettercap/caplets" shape="box"];
  "sha256:595ccffc3093673b96e59ea8b14f9af98a4ccbdea882e163ed265b3f21bd66a2" [label="copy{src=/go/src/github.com/bettercap/bettercap/bettercap, dest=/app/}" shape="note"];
  "sha256:6834eae7d9391c719cd6b9f70b339e02c6b52455697044ac9b1bece9306e2043" [label="copy{src=/go/src/github.com/bettercap/bettercap/caplets, dest=/app/}" shape="note"];
  "sha256:edf1daf7695b8e422b54bd06fa3644e7e13a30a1f9fc476830378fcf73c34651" [label="mkdir{path=/app}" shape="note"];
  "sha256:269b2cf4be7443ab0fc7f6949680f14b8c234671fadecbfd68d9458a5a967245" [label="sha256:269b2cf4be7443ab0fc7f6949680f14b8c234671fadecbfd68d9458a5a967245" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:d1f25cad2f5f9f4279c31ee6acc8e097aa7b2ba63eec4ddd05f9a74faeb7a120" [label=""];
  "sha256:d1f25cad2f5f9f4279c31ee6acc8e097aa7b2ba63eec4ddd05f9a74faeb7a120" -> "sha256:44071a7eddf27181b4553fdac0c8e899d1cc46d7651538eddcd6d1f3f84d8edf" [label=""];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:a4591a9c7ba1434e375ec61ac6487858e4bb8fe717290a1b77d4e7007025db5f" [label=""];
  "sha256:a4591a9c7ba1434e375ec61ac6487858e4bb8fe717290a1b77d4e7007025db5f" -> "sha256:c01ec451e24742c7ea9d7207e1dbb8cc7426e4b6ee03db32c778c0df7796ffb6" [label=""];
  "sha256:c01ec451e24742c7ea9d7207e1dbb8cc7426e4b6ee03db32c778c0df7796ffb6" -> "sha256:d0f8757360ca4e71962c7df10e92cd88e02e038c2c15020603a9bf7204f561ab" [label=""];
  "sha256:d0f8757360ca4e71962c7df10e92cd88e02e038c2c15020603a9bf7204f561ab" -> "sha256:23b111653ef69db5b030217fd9c4cb5c9477d9f2d5f39e91a6492e6197cd6f85" [label=""];
  "sha256:d5e14c87968ab454deec27207c2b9e33cb0d58d7c211c55bf03ce1a65894f80c" -> "sha256:23b111653ef69db5b030217fd9c4cb5c9477d9f2d5f39e91a6492e6197cd6f85" [label=""];
  "sha256:23b111653ef69db5b030217fd9c4cb5c9477d9f2d5f39e91a6492e6197cd6f85" -> "sha256:032445f0066e61b3af1cabcdc5429954d9bb541372dd9d345de100ac9e03f9d6" [label=""];
  "sha256:032445f0066e61b3af1cabcdc5429954d9bb541372dd9d345de100ac9e03f9d6" -> "sha256:b668e8ea84df0c8ec5f3609d9db49a0f09f85680e836d76b5fbc8a5053461ce1" [label=""];
  "sha256:b668e8ea84df0c8ec5f3609d9db49a0f09f85680e836d76b5fbc8a5053461ce1" -> "sha256:cbd8f80843a34bc6e496a4875d8c1a49819a868cbbf97cd89df73b73724a22aa" [label=""];
  "sha256:cbd8f80843a34bc6e496a4875d8c1a49819a868cbbf97cd89df73b73724a22aa" -> "sha256:f3b69a058711276a9f3e0b2d73345c90f1f67b391203f5c6c7ee161bfbefffd0" [label=""];
  "sha256:f3b69a058711276a9f3e0b2d73345c90f1f67b391203f5c6c7ee161bfbefffd0" -> "sha256:e1627549f7a6e9918f8e15ee75e12bd94e457a12f0549f508128cc5fb178e95b" [label=""];
  "sha256:44071a7eddf27181b4553fdac0c8e899d1cc46d7651538eddcd6d1f3f84d8edf" -> "sha256:595ccffc3093673b96e59ea8b14f9af98a4ccbdea882e163ed265b3f21bd66a2" [label=""];
  "sha256:e1627549f7a6e9918f8e15ee75e12bd94e457a12f0549f508128cc5fb178e95b" -> "sha256:595ccffc3093673b96e59ea8b14f9af98a4ccbdea882e163ed265b3f21bd66a2" [label=""];
  "sha256:595ccffc3093673b96e59ea8b14f9af98a4ccbdea882e163ed265b3f21bd66a2" -> "sha256:6834eae7d9391c719cd6b9f70b339e02c6b52455697044ac9b1bece9306e2043" [label=""];
  "sha256:e1627549f7a6e9918f8e15ee75e12bd94e457a12f0549f508128cc5fb178e95b" -> "sha256:6834eae7d9391c719cd6b9f70b339e02c6b52455697044ac9b1bece9306e2043" [label=""];
  "sha256:6834eae7d9391c719cd6b9f70b339e02c6b52455697044ac9b1bece9306e2043" -> "sha256:edf1daf7695b8e422b54bd06fa3644e7e13a30a1f9fc476830378fcf73c34651" [label=""];
  "sha256:edf1daf7695b8e422b54bd06fa3644e7e13a30a1f9fc476830378fcf73c34651" -> "sha256:269b2cf4be7443ab0fc7f6949680f14b8c234671fadecbfd68d9458a5a967245" [label=""];
}

