[app/sources/213098717.Dockerfile]
digraph {
  "sha256:f93b3ea9d8fb8f9e2c957f5b572b987b6fe5a421fb418c24d70f98e75e277288" [label="docker-image://docker.io/mashape/kong:0.8.3" shape="ellipse"];
  "sha256:942039ddfe6ce18cac152125c67908dfb4960a24ac94724d0f49622659f351ec" [label="/bin/sh -c yum -y install nodejs npm" shape="box"];
  "sha256:9f65c3d2dd60cb83f104a4259e4bddcce5fb41d95cbeec6d3462fbebec00f628" [label="/bin/sh -c npm install -g nodemon" shape="box"];
  "sha256:e831e17879ec5ff2718e4969b6ff8061c315f698d989b2c2fe10d00c81030fa5" [label="sha256:e831e17879ec5ff2718e4969b6ff8061c315f698d989b2c2fe10d00c81030fa5" shape="plaintext"];
  "sha256:f93b3ea9d8fb8f9e2c957f5b572b987b6fe5a421fb418c24d70f98e75e277288" -> "sha256:942039ddfe6ce18cac152125c67908dfb4960a24ac94724d0f49622659f351ec" [label=""];
  "sha256:942039ddfe6ce18cac152125c67908dfb4960a24ac94724d0f49622659f351ec" -> "sha256:9f65c3d2dd60cb83f104a4259e4bddcce5fb41d95cbeec6d3462fbebec00f628" [label=""];
  "sha256:9f65c3d2dd60cb83f104a4259e4bddcce5fb41d95cbeec6d3462fbebec00f628" -> "sha256:e831e17879ec5ff2718e4969b6ff8061c315f698d989b2c2fe10d00c81030fa5" [label=""];
}

