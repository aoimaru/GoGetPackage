[app/sources/252790403.Dockerfile]
digraph {
  "sha256:c69e86fea37e07b18aec0de3f40b0d44dc72d614dec94b0cf6f0b5efae752182" [label="local://context" shape="ellipse"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:82b6f564bc69142983f41ea22e21cdf5f8ccade06c850a1b30a91f92652bd2f2" [label="mkdir{path=/go/src/bosun.org}" shape="note"];
  "sha256:26272087dcf2f862539171f89a973876912f2ef601ae714740e56d837aaadbd8" [label="copy{src=/, dest=/go/src/bosun.org/}" shape="note"];
  "sha256:091325bdd85ef0a58e8b873567b0081a1ec5ff172370070e0d1c956a6955ab29" [label="/bin/sh -c ls -la" shape="box"];
  "sha256:1997f668b49f21313f5a2d68dce2479b15294600e9718cd2f3a048bc1ada09c4" [label="/bin/sh -c go install bosun.org/cmd/bosun" shape="box"];
  "sha256:2bbbf6870c3edd2ed9727e13410d07480ce0728108f6e2c6c6b45d7762ed48dc" [label="/bin/sh -c ls /go/bin" shape="box"];
  "sha256:7cc0352b692e7b0c91d0b3706b0b966345832a14d5d47a6669dd51a07917acc1" [label="sha256:7cc0352b692e7b0c91d0b3706b0b966345832a14d5d47a6669dd51a07917acc1" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:82b6f564bc69142983f41ea22e21cdf5f8ccade06c850a1b30a91f92652bd2f2" [label=""];
  "sha256:82b6f564bc69142983f41ea22e21cdf5f8ccade06c850a1b30a91f92652bd2f2" -> "sha256:26272087dcf2f862539171f89a973876912f2ef601ae714740e56d837aaadbd8" [label=""];
  "sha256:c69e86fea37e07b18aec0de3f40b0d44dc72d614dec94b0cf6f0b5efae752182" -> "sha256:26272087dcf2f862539171f89a973876912f2ef601ae714740e56d837aaadbd8" [label=""];
  "sha256:26272087dcf2f862539171f89a973876912f2ef601ae714740e56d837aaadbd8" -> "sha256:091325bdd85ef0a58e8b873567b0081a1ec5ff172370070e0d1c956a6955ab29" [label=""];
  "sha256:091325bdd85ef0a58e8b873567b0081a1ec5ff172370070e0d1c956a6955ab29" -> "sha256:1997f668b49f21313f5a2d68dce2479b15294600e9718cd2f3a048bc1ada09c4" [label=""];
  "sha256:1997f668b49f21313f5a2d68dce2479b15294600e9718cd2f3a048bc1ada09c4" -> "sha256:2bbbf6870c3edd2ed9727e13410d07480ce0728108f6e2c6c6b45d7762ed48dc" [label=""];
  "sha256:2bbbf6870c3edd2ed9727e13410d07480ce0728108f6e2c6c6b45d7762ed48dc" -> "sha256:7cc0352b692e7b0c91d0b3706b0b966345832a14d5d47a6669dd51a07917acc1" [label=""];
}

