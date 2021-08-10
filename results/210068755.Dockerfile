[app/sources/210068755.Dockerfile]
digraph {
  "sha256:400df1b02292925e43df7390f6f98347ae4010255927ec636bd6b51d3c02966c" [label="docker-image://docker.io/tensorflow/tensorflow:1.6.0-devel-py3" shape="ellipse"];
  "sha256:6a5d78abbb4e31654ea48baf342c23fb5d8bc17c263fc4fe49840f820901522f" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/' /etc/apt/sources.list" shape="box"];
  "sha256:85540bebd476898ebd4b821f08317a535687c73f475bf33b4d2389dc2b30784b" [label="local://context" shape="ellipse"];
  "sha256:3248d5433b7ca88a2365661d7a95fdd0286c83b404d69412fa6f30be4bff14fe" [label="copy{src=/pip.conf, dest=/root/.pip/pip.conf}" shape="note"];
  "sha256:37018b78f344f1e5751ec4b86af816425be9fdcaab1404e89b9a7a362458c3a3" [label="sha256:37018b78f344f1e5751ec4b86af816425be9fdcaab1404e89b9a7a362458c3a3" shape="plaintext"];
  "sha256:400df1b02292925e43df7390f6f98347ae4010255927ec636bd6b51d3c02966c" -> "sha256:6a5d78abbb4e31654ea48baf342c23fb5d8bc17c263fc4fe49840f820901522f" [label=""];
  "sha256:6a5d78abbb4e31654ea48baf342c23fb5d8bc17c263fc4fe49840f820901522f" -> "sha256:3248d5433b7ca88a2365661d7a95fdd0286c83b404d69412fa6f30be4bff14fe" [label=""];
  "sha256:85540bebd476898ebd4b821f08317a535687c73f475bf33b4d2389dc2b30784b" -> "sha256:3248d5433b7ca88a2365661d7a95fdd0286c83b404d69412fa6f30be4bff14fe" [label=""];
  "sha256:3248d5433b7ca88a2365661d7a95fdd0286c83b404d69412fa6f30be4bff14fe" -> "sha256:37018b78f344f1e5751ec4b86af816425be9fdcaab1404e89b9a7a362458c3a3" [label=""];
}

