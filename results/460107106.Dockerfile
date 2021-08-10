[app/sources/460107106.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:5b147eb12be0de5c6520369c6551b0af2ef426d18f445b14c79362d07e489884" [label="/bin/sh -c apt-get update -qq && apt-get install -qq -y build-essential nodejs-legacy npm git phantomjs ruby-dev" shape="box"];
  "sha256:f67cfe7071a667ffeb3eaa17668c73bca84b903e3a31da961c3a0ddc267ed9d2" [label="local://context" shape="ellipse"];
  "sha256:23664283a7d3a3d158e642ed85c5fe9ae76c5f487fa83b84ed9448cdf4eb620a" [label="copy{src=/, dest=/arethusa}" shape="note"];
  "sha256:bdeeeb13d58a9316354760c4668caa937b0a4518ce540d7eb57d88dab6c286f2" [label="mkdir{path=/arethusa}" shape="note"];
  "sha256:d0bcd24e11c0bed0ebf0e8f11e1c01b1434a553e6c58dc516ec1cb12a577be18" [label="/bin/sh -c npm install -g grunt-cli bower && npm install" shape="box"];
  "sha256:4316bd49c5d6185d9339d8e28f74679b6ff36add0201f5a9d34ce999e3d65126" [label="/bin/sh -c grunt install && grunt import" shape="box"];
  "sha256:61aeeb561d0b117b22d26169afc92ae30b3644757783fae2682fcb2acf5eefe8" [label="sha256:61aeeb561d0b117b22d26169afc92ae30b3644757783fae2682fcb2acf5eefe8" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:5b147eb12be0de5c6520369c6551b0af2ef426d18f445b14c79362d07e489884" [label=""];
  "sha256:5b147eb12be0de5c6520369c6551b0af2ef426d18f445b14c79362d07e489884" -> "sha256:23664283a7d3a3d158e642ed85c5fe9ae76c5f487fa83b84ed9448cdf4eb620a" [label=""];
  "sha256:f67cfe7071a667ffeb3eaa17668c73bca84b903e3a31da961c3a0ddc267ed9d2" -> "sha256:23664283a7d3a3d158e642ed85c5fe9ae76c5f487fa83b84ed9448cdf4eb620a" [label=""];
  "sha256:23664283a7d3a3d158e642ed85c5fe9ae76c5f487fa83b84ed9448cdf4eb620a" -> "sha256:bdeeeb13d58a9316354760c4668caa937b0a4518ce540d7eb57d88dab6c286f2" [label=""];
  "sha256:bdeeeb13d58a9316354760c4668caa937b0a4518ce540d7eb57d88dab6c286f2" -> "sha256:d0bcd24e11c0bed0ebf0e8f11e1c01b1434a553e6c58dc516ec1cb12a577be18" [label=""];
  "sha256:d0bcd24e11c0bed0ebf0e8f11e1c01b1434a553e6c58dc516ec1cb12a577be18" -> "sha256:4316bd49c5d6185d9339d8e28f74679b6ff36add0201f5a9d34ce999e3d65126" [label=""];
  "sha256:4316bd49c5d6185d9339d8e28f74679b6ff36add0201f5a9d34ce999e3d65126" -> "sha256:61aeeb561d0b117b22d26169afc92ae30b3644757783fae2682fcb2acf5eefe8" [label=""];
}

