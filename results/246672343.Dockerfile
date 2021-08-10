[app/sources/246672343.Dockerfile]
digraph {
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:7829841f95dd0a9ac384ae3f22422a0f3b192ad06c377f970c0c4bdc298b9995" [label="local://context" shape="ellipse"];
  "sha256:a8522740b34a5f74df537ea44eaecdc5d7aa88b1e57732d0f05e4b0591fdd8ce" [label="copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:075d81dcabceed24e5c2bf2e06aaf78de94fdbd117979c213e84806360afa08b" [label="/bin/sh -c go get golang.org/x/tools/cmd/cover     && chmod +x /run.sh" shape="box"];
  "sha256:864c06e1dcce985f72cdc8667149303bfaa00b5f71217a1d1362d6468f51adee" [label="mkdir{path=/go/src}" shape="note"];
  "sha256:f19d0a1d8cc94dac277ec967fd6a5ab57e40dc0077c93bc999d0df71354c687b" [label="sha256:f19d0a1d8cc94dac277ec967fd6a5ab57e40dc0077c93bc999d0df71354c687b" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:a8522740b34a5f74df537ea44eaecdc5d7aa88b1e57732d0f05e4b0591fdd8ce" [label=""];
  "sha256:7829841f95dd0a9ac384ae3f22422a0f3b192ad06c377f970c0c4bdc298b9995" -> "sha256:a8522740b34a5f74df537ea44eaecdc5d7aa88b1e57732d0f05e4b0591fdd8ce" [label=""];
  "sha256:a8522740b34a5f74df537ea44eaecdc5d7aa88b1e57732d0f05e4b0591fdd8ce" -> "sha256:075d81dcabceed24e5c2bf2e06aaf78de94fdbd117979c213e84806360afa08b" [label=""];
  "sha256:075d81dcabceed24e5c2bf2e06aaf78de94fdbd117979c213e84806360afa08b" -> "sha256:864c06e1dcce985f72cdc8667149303bfaa00b5f71217a1d1362d6468f51adee" [label=""];
  "sha256:864c06e1dcce985f72cdc8667149303bfaa00b5f71217a1d1362d6468f51adee" -> "sha256:f19d0a1d8cc94dac277ec967fd6a5ab57e40dc0077c93bc999d0df71354c687b" [label=""];
}

