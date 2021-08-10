[app/sources/252791846.Dockerfile]
digraph {
  "sha256:391505c659fa0a77577ad32d9f5af9f1fb5f6b3e38aeecb1cc434eea3b9f8157" [label="local://context" shape="ellipse"];
  "sha256:9c0f10bbb79e89e95fb7e60164485ee1a02f9a4e0c5d5d092838ebcf434d5475" [label="docker-image://docker.io/library/node:4.5" shape="ellipse"];
  "sha256:f09082865fad05eed03e400614396ddcb1f4b104c622c99963d1980c5335ee05" [label="copy{src=/main.sh, dest=/script/}" shape="note"];
  "sha256:ec3c3120d2e28f34598e1d32e921a60796f36b6c198679ce0e4a1facec53ac87" [label="copy{src=/package.json, dest=/script/}" shape="note"];
  "sha256:ca61b216e27382656fa6ba24efb05f74baa514598c67477f2e6c2527994e37d1" [label="/bin/sh -c chmod -R 755 /script/" shape="box"];
  "sha256:9865264f740484a662e7261881f2705c9e13fd0fc5115350ac5e6564eebe9039" [label="/bin/sh -c curl -sL https://install.meteor.com | sed s/--progress-bar/-sL/g | /bin/sh" shape="box"];
  "sha256:812f330c03f032b5291f37c07d50882f0562abd40962ea40b5e697e912a18f3c" [label="sha256:812f330c03f032b5291f37c07d50882f0562abd40962ea40b5e697e912a18f3c" shape="plaintext"];
  "sha256:9c0f10bbb79e89e95fb7e60164485ee1a02f9a4e0c5d5d092838ebcf434d5475" -> "sha256:f09082865fad05eed03e400614396ddcb1f4b104c622c99963d1980c5335ee05" [label=""];
  "sha256:391505c659fa0a77577ad32d9f5af9f1fb5f6b3e38aeecb1cc434eea3b9f8157" -> "sha256:f09082865fad05eed03e400614396ddcb1f4b104c622c99963d1980c5335ee05" [label=""];
  "sha256:f09082865fad05eed03e400614396ddcb1f4b104c622c99963d1980c5335ee05" -> "sha256:ec3c3120d2e28f34598e1d32e921a60796f36b6c198679ce0e4a1facec53ac87" [label=""];
  "sha256:391505c659fa0a77577ad32d9f5af9f1fb5f6b3e38aeecb1cc434eea3b9f8157" -> "sha256:ec3c3120d2e28f34598e1d32e921a60796f36b6c198679ce0e4a1facec53ac87" [label=""];
  "sha256:ec3c3120d2e28f34598e1d32e921a60796f36b6c198679ce0e4a1facec53ac87" -> "sha256:ca61b216e27382656fa6ba24efb05f74baa514598c67477f2e6c2527994e37d1" [label=""];
  "sha256:ca61b216e27382656fa6ba24efb05f74baa514598c67477f2e6c2527994e37d1" -> "sha256:9865264f740484a662e7261881f2705c9e13fd0fc5115350ac5e6564eebe9039" [label=""];
  "sha256:9865264f740484a662e7261881f2705c9e13fd0fc5115350ac5e6564eebe9039" -> "sha256:812f330c03f032b5291f37c07d50882f0562abd40962ea40b5e697e912a18f3c" [label=""];
}

