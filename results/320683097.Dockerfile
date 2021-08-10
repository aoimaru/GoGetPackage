[app/sources/320683097.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" [label="docker-image://docker.io/library/golang:1.11-alpine" shape="ellipse"];
  "sha256:2f78d12cd7eb7f1705fb7d1705965f3237eeebff3c4acbf5d01e392d64e1679b" [label="/bin/sh -c apk add --update --no-cache ca-certificates curl git make" shape="box"];
  "sha256:cfe1fc8f9550664495508ec72d12159e81e3d344bffbae03f4e4f58399a27417" [label="/bin/sh -c go get -u github.com/golang/dep/cmd/dep" shape="box"];
  "sha256:65448d61207dc01715e0e15acc8c026ea7b42d2138008316b5a664c5080b7e91" [label="local://context" shape="ellipse"];
  "sha256:20c9f6a9378b6ab832a1b9a84221653c1b50b623d488483a967b770563d1409e" [label="copy{src=/Gopkg.toml, dest=/go/src/github.com/banzaicloud/logging-operator/Gopkg.toml}" shape="note"];
  "sha256:eca9079395047638cd6d468ed24bd7ea7c2c57b2adb087d4b40d90c2623c6acc" [label="copy{src=/Gopkg.lock, dest=/go/src/github.com/banzaicloud/logging-operator/Gopkg.lock}" shape="note"];
  "sha256:2e256ad60f078740f02c5105654be38e984f0e06d4d77d00c1379ab8ff945166" [label="mkdir{path=/go/src/github.com/banzaicloud/logging-operator}" shape="note"];
  "sha256:2502bdedd445666d6e7774d911742958851d90ba0f16e10dee656660cdede38d" [label="/bin/sh -c dep ensure -v -vendor-only" shape="box"];
  "sha256:b55ceb4c963bfec41adb60b5cf0bffbb76a44cb8a4878d3247b597915b0224a1" [label="copy{src=/, dest=/go/src/github.com/banzaicloud/logging-operator}" shape="note"];
  "sha256:792632eaaedecbb4c5368ae289f556d0594b657b88fe99e28a8aba3666dad48d" [label="/bin/sh -c go install ./cmd/manager" shape="box"];
  "sha256:3278ee70a3f5675ba122c7ed10c67d7673450ac7093894d5d7985ba80d9cc2d2" [label="copy{src=/go/bin/manager, dest=/usr/local/bin/logging-operator}" shape="note"];
  "sha256:d91ec6d71006a611c43c2703ffd19779862a4cd533f8819755e965aec9828880" [label="/bin/sh -c adduser -D logging-operator" shape="box"];
  "sha256:6013669dac530358b854a1c10741c1eab026d46b325448a89355d33c44583488" [label="sha256:6013669dac530358b854a1c10741c1eab026d46b325448a89355d33c44583488" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" [label=""];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" -> "sha256:2f78d12cd7eb7f1705fb7d1705965f3237eeebff3c4acbf5d01e392d64e1679b" [label=""];
  "sha256:2f78d12cd7eb7f1705fb7d1705965f3237eeebff3c4acbf5d01e392d64e1679b" -> "sha256:cfe1fc8f9550664495508ec72d12159e81e3d344bffbae03f4e4f58399a27417" [label=""];
  "sha256:cfe1fc8f9550664495508ec72d12159e81e3d344bffbae03f4e4f58399a27417" -> "sha256:20c9f6a9378b6ab832a1b9a84221653c1b50b623d488483a967b770563d1409e" [label=""];
  "sha256:65448d61207dc01715e0e15acc8c026ea7b42d2138008316b5a664c5080b7e91" -> "sha256:20c9f6a9378b6ab832a1b9a84221653c1b50b623d488483a967b770563d1409e" [label=""];
  "sha256:20c9f6a9378b6ab832a1b9a84221653c1b50b623d488483a967b770563d1409e" -> "sha256:eca9079395047638cd6d468ed24bd7ea7c2c57b2adb087d4b40d90c2623c6acc" [label=""];
  "sha256:65448d61207dc01715e0e15acc8c026ea7b42d2138008316b5a664c5080b7e91" -> "sha256:eca9079395047638cd6d468ed24bd7ea7c2c57b2adb087d4b40d90c2623c6acc" [label=""];
  "sha256:eca9079395047638cd6d468ed24bd7ea7c2c57b2adb087d4b40d90c2623c6acc" -> "sha256:2e256ad60f078740f02c5105654be38e984f0e06d4d77d00c1379ab8ff945166" [label=""];
  "sha256:2e256ad60f078740f02c5105654be38e984f0e06d4d77d00c1379ab8ff945166" -> "sha256:2502bdedd445666d6e7774d911742958851d90ba0f16e10dee656660cdede38d" [label=""];
  "sha256:2502bdedd445666d6e7774d911742958851d90ba0f16e10dee656660cdede38d" -> "sha256:b55ceb4c963bfec41adb60b5cf0bffbb76a44cb8a4878d3247b597915b0224a1" [label=""];
  "sha256:65448d61207dc01715e0e15acc8c026ea7b42d2138008316b5a664c5080b7e91" -> "sha256:b55ceb4c963bfec41adb60b5cf0bffbb76a44cb8a4878d3247b597915b0224a1" [label=""];
  "sha256:b55ceb4c963bfec41adb60b5cf0bffbb76a44cb8a4878d3247b597915b0224a1" -> "sha256:792632eaaedecbb4c5368ae289f556d0594b657b88fe99e28a8aba3666dad48d" [label=""];
  "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" -> "sha256:3278ee70a3f5675ba122c7ed10c67d7673450ac7093894d5d7985ba80d9cc2d2" [label=""];
  "sha256:792632eaaedecbb4c5368ae289f556d0594b657b88fe99e28a8aba3666dad48d" -> "sha256:3278ee70a3f5675ba122c7ed10c67d7673450ac7093894d5d7985ba80d9cc2d2" [label=""];
  "sha256:3278ee70a3f5675ba122c7ed10c67d7673450ac7093894d5d7985ba80d9cc2d2" -> "sha256:d91ec6d71006a611c43c2703ffd19779862a4cd533f8819755e965aec9828880" [label=""];
  "sha256:d91ec6d71006a611c43c2703ffd19779862a4cd533f8819755e965aec9828880" -> "sha256:6013669dac530358b854a1c10741c1eab026d46b325448a89355d33c44583488" [label=""];
}

