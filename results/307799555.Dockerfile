[app/sources/307799555.Dockerfile]
digraph {
  "sha256:e231a2d7251cb1280439e64cd268f8a9cd7e3bc085f3b52df97cd137f51fc8a5" [label="docker-image://docker.io/yeasy/hyperledger-fabric-base:release-v1.4" shape="ellipse"];
  "sha256:80480e2ae4919cb7464437181a1ed4acb3bc58157f3cf8382713fa39d0e1c7c0" [label="/bin/sh -c cd $FABRIC_ROOT/peer     && go install -tags \"experimental\" -ldflags \"$LD_FLAGS\"     && go clean" shape="box"];
  "sha256:8398f696b272c18af478295b9ea0b149976b2166743f15f4bc404eea913a65e8" [label="sha256:8398f696b272c18af478295b9ea0b149976b2166743f15f4bc404eea913a65e8" shape="plaintext"];
  "sha256:e231a2d7251cb1280439e64cd268f8a9cd7e3bc085f3b52df97cd137f51fc8a5" -> "sha256:80480e2ae4919cb7464437181a1ed4acb3bc58157f3cf8382713fa39d0e1c7c0" [label=""];
  "sha256:80480e2ae4919cb7464437181a1ed4acb3bc58157f3cf8382713fa39d0e1c7c0" -> "sha256:8398f696b272c18af478295b9ea0b149976b2166743f15f4bc404eea913a65e8" [label=""];
}

