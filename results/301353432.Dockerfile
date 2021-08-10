[app/sources/301353432.Dockerfile]
digraph {
  "sha256:e97bad747e07f14d0c1c17fb9d04db6d65724840095aaa7172eca3e32b4db9fd" [label="docker-image://docker.io/nearform/centos7-s2i-nodejs:8.9" shape="ellipse"];
  "sha256:0943566302a7995cd20fb74f31706da43e14c3d522c339c4e37f8f2e3c6bd914" [label="local://context" shape="ellipse"];
  "sha256:f4e142fe04428b8f661c9b84905d4acad8b8f87ff56893ce001ce6418f22e751" [label="copy{src=/package.json, dest=/tmp}" shape="note"];
  "sha256:4550a14313249afe151b7d58339593b0b74f359672d48f0633ebc2c978077ce9" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:d6c63dccaba767d65d5d0a2de9c3d90b52c9a67c3bb169b4e2a12a9d8aba14f5" [label="/bin/sh -c npm install --depth=1" shape="box"];
  "sha256:c1473c771b9bd65b6c6a697447974ce6d1bf5d55b672427d280e72ab5ed37a14" [label="copy{src=/, dest=/opt/app-root/src}" shape="note"];
  "sha256:930d7dc720a58db359c359a4686a46d8d24edce1355a7324101ce3e16c91851e" [label="/bin/sh -c cp -r /tmp/node_modules/ /opt/app-root/src/node_modules" shape="box"];
  "sha256:775b11a8334a1bb5bb18561826ce402400d71a49c7e44210dba376889cec51c5" [label="mkdir{path=/opt/app-root/src}" shape="note"];
  "sha256:627e6078cbd4fa218f388d6d59aa2e50d2dac8246b1afc089eb3477c0efbb194" [label="sha256:627e6078cbd4fa218f388d6d59aa2e50d2dac8246b1afc089eb3477c0efbb194" shape="plaintext"];
  "sha256:e97bad747e07f14d0c1c17fb9d04db6d65724840095aaa7172eca3e32b4db9fd" -> "sha256:f4e142fe04428b8f661c9b84905d4acad8b8f87ff56893ce001ce6418f22e751" [label=""];
  "sha256:0943566302a7995cd20fb74f31706da43e14c3d522c339c4e37f8f2e3c6bd914" -> "sha256:f4e142fe04428b8f661c9b84905d4acad8b8f87ff56893ce001ce6418f22e751" [label=""];
  "sha256:f4e142fe04428b8f661c9b84905d4acad8b8f87ff56893ce001ce6418f22e751" -> "sha256:4550a14313249afe151b7d58339593b0b74f359672d48f0633ebc2c978077ce9" [label=""];
  "sha256:4550a14313249afe151b7d58339593b0b74f359672d48f0633ebc2c978077ce9" -> "sha256:d6c63dccaba767d65d5d0a2de9c3d90b52c9a67c3bb169b4e2a12a9d8aba14f5" [label=""];
  "sha256:d6c63dccaba767d65d5d0a2de9c3d90b52c9a67c3bb169b4e2a12a9d8aba14f5" -> "sha256:c1473c771b9bd65b6c6a697447974ce6d1bf5d55b672427d280e72ab5ed37a14" [label=""];
  "sha256:0943566302a7995cd20fb74f31706da43e14c3d522c339c4e37f8f2e3c6bd914" -> "sha256:c1473c771b9bd65b6c6a697447974ce6d1bf5d55b672427d280e72ab5ed37a14" [label=""];
  "sha256:c1473c771b9bd65b6c6a697447974ce6d1bf5d55b672427d280e72ab5ed37a14" -> "sha256:930d7dc720a58db359c359a4686a46d8d24edce1355a7324101ce3e16c91851e" [label=""];
  "sha256:930d7dc720a58db359c359a4686a46d8d24edce1355a7324101ce3e16c91851e" -> "sha256:775b11a8334a1bb5bb18561826ce402400d71a49c7e44210dba376889cec51c5" [label=""];
  "sha256:775b11a8334a1bb5bb18561826ce402400d71a49c7e44210dba376889cec51c5" -> "sha256:627e6078cbd4fa218f388d6d59aa2e50d2dac8246b1afc089eb3477c0efbb194" [label=""];
}

