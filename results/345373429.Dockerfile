[app/sources/345373429.Dockerfile]
digraph {
  "sha256:4b36c1b4904df4850d68ac53ba32a43eaa32ccf14befe9b644e602106b724ef1" [label="docker-image://docker.io/balenalib/jetson-tx2-ubuntu:trusty-build" shape="ellipse"];
  "sha256:169b9f495a128a6ab92769fcf29763db3e5074922175dd6d6f79e6a511c037eb" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:473b46dcb5734a9f3fd99e5251034611391dbaa342556c02fede4659697965f2" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:df809062d4966643d06e9e09ff7126adc4418563f2d5b000c7e79a45614d03a8" [label="mkdir{path=/go}" shape="note"];
  "sha256:6ce2af6a083b83a9216972ef647ec6bec026ec59b1e3f98d13eac77803ad875d" [label="sha256:6ce2af6a083b83a9216972ef647ec6bec026ec59b1e3f98d13eac77803ad875d" shape="plaintext"];
  "sha256:4b36c1b4904df4850d68ac53ba32a43eaa32ccf14befe9b644e602106b724ef1" -> "sha256:169b9f495a128a6ab92769fcf29763db3e5074922175dd6d6f79e6a511c037eb" [label=""];
  "sha256:169b9f495a128a6ab92769fcf29763db3e5074922175dd6d6f79e6a511c037eb" -> "sha256:473b46dcb5734a9f3fd99e5251034611391dbaa342556c02fede4659697965f2" [label=""];
  "sha256:473b46dcb5734a9f3fd99e5251034611391dbaa342556c02fede4659697965f2" -> "sha256:df809062d4966643d06e9e09ff7126adc4418563f2d5b000c7e79a45614d03a8" [label=""];
  "sha256:df809062d4966643d06e9e09ff7126adc4418563f2d5b000c7e79a45614d03a8" -> "sha256:6ce2af6a083b83a9216972ef647ec6bec026ec59b1e3f98d13eac77803ad875d" [label=""];
}

