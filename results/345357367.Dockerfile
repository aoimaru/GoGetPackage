[app/sources/345357367.Dockerfile]
digraph {
  "sha256:901448789696d65eaacbce98ddb2f7f834597d29451bad233c5d408383726936" [label="docker-image://docker.io/balenalib/orbitty-tx2-debian:sid-build" shape="ellipse"];
  "sha256:d8a7f24b1523fa371193d0ea9215daf1c4104d00e3aca65ba6b05b7dd0a3a709" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:9246cfdd62d7d4dceaf73f455b53ab7bcb84ea603c8ac47fdd9a2fe12a804efa" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5ee937c2dd3dbbebe2364a2ccf81f600f461365efec5db2e8d306ca9a97b7fd6" [label="mkdir{path=/go}" shape="note"];
  "sha256:0ea108333871c5f5bb27e46e2e78e10074ebb3039a056ca05e35f8ac8d445427" [label="sha256:0ea108333871c5f5bb27e46e2e78e10074ebb3039a056ca05e35f8ac8d445427" shape="plaintext"];
  "sha256:901448789696d65eaacbce98ddb2f7f834597d29451bad233c5d408383726936" -> "sha256:d8a7f24b1523fa371193d0ea9215daf1c4104d00e3aca65ba6b05b7dd0a3a709" [label=""];
  "sha256:d8a7f24b1523fa371193d0ea9215daf1c4104d00e3aca65ba6b05b7dd0a3a709" -> "sha256:9246cfdd62d7d4dceaf73f455b53ab7bcb84ea603c8ac47fdd9a2fe12a804efa" [label=""];
  "sha256:9246cfdd62d7d4dceaf73f455b53ab7bcb84ea603c8ac47fdd9a2fe12a804efa" -> "sha256:5ee937c2dd3dbbebe2364a2ccf81f600f461365efec5db2e8d306ca9a97b7fd6" [label=""];
  "sha256:5ee937c2dd3dbbebe2364a2ccf81f600f461365efec5db2e8d306ca9a97b7fd6" -> "sha256:0ea108333871c5f5bb27e46e2e78e10074ebb3039a056ca05e35f8ac8d445427" [label=""];
}

