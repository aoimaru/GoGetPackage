[app/sources/270716334.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:aaae3c5bf6b6be6b00f1f6fe67ae40908ec4a41aa3e5d90cfe772fe3893d68ad" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:14243cca18fe5ea3af94b6d810d2a9ecb7500b85198ec24cf39fc344ecf30209" [label="mkdir{path=/app}" shape="note"];
  "sha256:65703f3ab27c38f40196258ab401bda8e208aa8ad4a2ba06c19934339cff74cd" [label="local://context" shape="ellipse"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:4d18755e585f82ee7cc05054ee674fd2751c5f88f1efe7b6924bb511c7ad8d75" [label="mkdir{path=/go/src/github.com/catkins/statsd-logger}" shape="note"];
  "sha256:f219d7f4680e360e74f72b8c471ba3b419a4dbf9ddc39f34c2b625d44a17590c" [label="/bin/sh -c curl -L https://github.com/golang/dep/releases/download/v0.5.0/dep-linux-amd64 > $GOPATH/bin/dep   && chmod +x $GOPATH/bin/dep" shape="box"];
  "sha256:b64a7a380847a1949f210e9f3a13c052fb61c251ace8dec0fcc1b251178d8ed0" [label="copy{src=/Gopkg.lock, dest=/go/src/github.com/catkins/statsd-logger/}" shape="note"];
  "sha256:b79d4279a1ef35bfa492070ed2d99ef56b07e387afbd3d5350b01ffe5e99f427" [label="copy{src=/Gopkg.toml, dest=/go/src/github.com/catkins/statsd-logger/}" shape="note"];
  "sha256:4af48ec721c506a1f3e750d77201a971e9fbc3b536e5df87b403b15dfcb482d4" [label="/bin/sh -c dep ensure -v --vendor-only" shape="box"];
  "sha256:19bc80c7922db142df68e0b12ed37d712defdc4498e7f53c0534f239ff407ab6" [label="copy{src=/, dest=/go/src/github.com/catkins/statsd-logger/}" shape="note"];
  "sha256:f31b7d78f19b88dc8d3bc9a93f671f26e01cc139182c48574294223a582cda60" [label="/bin/sh -c cd cmd/statsd-logger && go install" shape="box"];
  "sha256:87369fa31da9b5f74b9f127ed5c95e8101906b982ee94b801a3b5337787c7c2c" [label="copy{src=/go/bin/statsd-logger, dest=/app/}" shape="note"];
  "sha256:4a1ec25e607a69c2305209e902c9ced5751bc3b70c0a05fcf775542232ddf285" [label="sha256:4a1ec25e607a69c2305209e902c9ced5751bc3b70c0a05fcf775542232ddf285" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:aaae3c5bf6b6be6b00f1f6fe67ae40908ec4a41aa3e5d90cfe772fe3893d68ad" [label=""];
  "sha256:aaae3c5bf6b6be6b00f1f6fe67ae40908ec4a41aa3e5d90cfe772fe3893d68ad" -> "sha256:14243cca18fe5ea3af94b6d810d2a9ecb7500b85198ec24cf39fc344ecf30209" [label=""];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:4d18755e585f82ee7cc05054ee674fd2751c5f88f1efe7b6924bb511c7ad8d75" [label=""];
  "sha256:4d18755e585f82ee7cc05054ee674fd2751c5f88f1efe7b6924bb511c7ad8d75" -> "sha256:f219d7f4680e360e74f72b8c471ba3b419a4dbf9ddc39f34c2b625d44a17590c" [label=""];
  "sha256:f219d7f4680e360e74f72b8c471ba3b419a4dbf9ddc39f34c2b625d44a17590c" -> "sha256:b64a7a380847a1949f210e9f3a13c052fb61c251ace8dec0fcc1b251178d8ed0" [label=""];
  "sha256:65703f3ab27c38f40196258ab401bda8e208aa8ad4a2ba06c19934339cff74cd" -> "sha256:b64a7a380847a1949f210e9f3a13c052fb61c251ace8dec0fcc1b251178d8ed0" [label=""];
  "sha256:b64a7a380847a1949f210e9f3a13c052fb61c251ace8dec0fcc1b251178d8ed0" -> "sha256:b79d4279a1ef35bfa492070ed2d99ef56b07e387afbd3d5350b01ffe5e99f427" [label=""];
  "sha256:65703f3ab27c38f40196258ab401bda8e208aa8ad4a2ba06c19934339cff74cd" -> "sha256:b79d4279a1ef35bfa492070ed2d99ef56b07e387afbd3d5350b01ffe5e99f427" [label=""];
  "sha256:b79d4279a1ef35bfa492070ed2d99ef56b07e387afbd3d5350b01ffe5e99f427" -> "sha256:4af48ec721c506a1f3e750d77201a971e9fbc3b536e5df87b403b15dfcb482d4" [label=""];
  "sha256:4af48ec721c506a1f3e750d77201a971e9fbc3b536e5df87b403b15dfcb482d4" -> "sha256:19bc80c7922db142df68e0b12ed37d712defdc4498e7f53c0534f239ff407ab6" [label=""];
  "sha256:65703f3ab27c38f40196258ab401bda8e208aa8ad4a2ba06c19934339cff74cd" -> "sha256:19bc80c7922db142df68e0b12ed37d712defdc4498e7f53c0534f239ff407ab6" [label=""];
  "sha256:19bc80c7922db142df68e0b12ed37d712defdc4498e7f53c0534f239ff407ab6" -> "sha256:f31b7d78f19b88dc8d3bc9a93f671f26e01cc139182c48574294223a582cda60" [label=""];
  "sha256:14243cca18fe5ea3af94b6d810d2a9ecb7500b85198ec24cf39fc344ecf30209" -> "sha256:87369fa31da9b5f74b9f127ed5c95e8101906b982ee94b801a3b5337787c7c2c" [label=""];
  "sha256:f31b7d78f19b88dc8d3bc9a93f671f26e01cc139182c48574294223a582cda60" -> "sha256:87369fa31da9b5f74b9f127ed5c95e8101906b982ee94b801a3b5337787c7c2c" [label=""];
  "sha256:87369fa31da9b5f74b9f127ed5c95e8101906b982ee94b801a3b5337787c7c2c" -> "sha256:4a1ec25e607a69c2305209e902c9ced5751bc3b70c0a05fcf775542232ddf285" [label=""];
}

