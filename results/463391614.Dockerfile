[app/sources/463391614.Dockerfile]
digraph {
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" [label="docker-image://docker.io/library/golang:1.10" shape="ellipse"];
  "sha256:f6fda2eb462d54dffc3125cfe30421fb62d7bb07a96a0125ffe4010daa2f140d" [label="/bin/sh -c apt update && apt install -y unzip time make" shape="box"];
  "sha256:a3f02bc2354af00e4554f998156a993f5757ac680c385e808fcebc4cd3ffb654" [label="/bin/sh -c wget https://github.com/google/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip &&   unzip protoc-${PROTOC_VERSION}-linux-x86_64.zip -d protoc &&   mv protoc/bin/protoc /usr/bin/protoc" shape="box"];
  "sha256:a283736dc41a3eb566dc5b22c5837c68c554610eaf261f03560bb92136166157" [label="/bin/sh -c go get github.com/golang/protobuf/protoc-gen-go" shape="box"];
  "sha256:01f7baa4cdbd6e48d8fcba871f428c99b9ce5b2689bc63f2e7d167ac819d4bfa" [label="sha256:01f7baa4cdbd6e48d8fcba871f428c99b9ce5b2689bc63f2e7d167ac819d4bfa" shape="plaintext"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" -> "sha256:f6fda2eb462d54dffc3125cfe30421fb62d7bb07a96a0125ffe4010daa2f140d" [label=""];
  "sha256:f6fda2eb462d54dffc3125cfe30421fb62d7bb07a96a0125ffe4010daa2f140d" -> "sha256:a3f02bc2354af00e4554f998156a993f5757ac680c385e808fcebc4cd3ffb654" [label=""];
  "sha256:a3f02bc2354af00e4554f998156a993f5757ac680c385e808fcebc4cd3ffb654" -> "sha256:a283736dc41a3eb566dc5b22c5837c68c554610eaf261f03560bb92136166157" [label=""];
  "sha256:a283736dc41a3eb566dc5b22c5837c68c554610eaf261f03560bb92136166157" -> "sha256:01f7baa4cdbd6e48d8fcba871f428c99b9ce5b2689bc63f2e7d167ac819d4bfa" [label=""];
}

