[app/sources/206932916.Dockerfile]
digraph {
  "sha256:3522000a01decef6bfa4ed883bb44b06b3236b93d07cf1365ae29f27efc053c2" [label="docker-image://docker.io/library/zaqwsx_ipfs-test-img:latest" shape="ellipse"];
  "sha256:2700d2665b9e5710284ac1acff4b284e07c5fb4bfefad2541db20efba5ea13e4" [label="/bin/sh -c ipfs init -b=1024" shape="box"];
  "sha256:31387f0302839714fd4e39a4f4d5b020354f0b2c0b64cee6bbddacd9e6826e68" [label="local://context" shape="ellipse"];
  "sha256:a4a0320c290e84cd0317187d7216968d81a45e167e20d8e30ca76ac5a3723500" [label="copy{src=/, dest=/tmp/test}" shape="note"];
  "sha256:b2c055ba2ae4d70e731a889167ae2d09278d2bc68c120ef253ecb622a700b122" [label="/bin/sh -c mv -f /tmp/test/config /root/.ipfs/config" shape="box"];
  "sha256:2ccc59113968bf4bf480016da56cdcfa9fa5631b714db8590c8953eee60c7d9b" [label="/bin/sh -c ipfs id" shape="box"];
  "sha256:b92574896ed77296b9af415d1a15f76621a89197481a7bb681457839a87033bd" [label="/bin/sh -c chmod +x /tmp/test/run.sh" shape="box"];
  "sha256:1258ccf51c73b973b9df46706795cd1c1288f93da6476443a1caf001c0ebf81c" [label="sha256:1258ccf51c73b973b9df46706795cd1c1288f93da6476443a1caf001c0ebf81c" shape="plaintext"];
  "sha256:3522000a01decef6bfa4ed883bb44b06b3236b93d07cf1365ae29f27efc053c2" -> "sha256:2700d2665b9e5710284ac1acff4b284e07c5fb4bfefad2541db20efba5ea13e4" [label=""];
  "sha256:2700d2665b9e5710284ac1acff4b284e07c5fb4bfefad2541db20efba5ea13e4" -> "sha256:a4a0320c290e84cd0317187d7216968d81a45e167e20d8e30ca76ac5a3723500" [label=""];
  "sha256:31387f0302839714fd4e39a4f4d5b020354f0b2c0b64cee6bbddacd9e6826e68" -> "sha256:a4a0320c290e84cd0317187d7216968d81a45e167e20d8e30ca76ac5a3723500" [label=""];
  "sha256:a4a0320c290e84cd0317187d7216968d81a45e167e20d8e30ca76ac5a3723500" -> "sha256:b2c055ba2ae4d70e731a889167ae2d09278d2bc68c120ef253ecb622a700b122" [label=""];
  "sha256:b2c055ba2ae4d70e731a889167ae2d09278d2bc68c120ef253ecb622a700b122" -> "sha256:2ccc59113968bf4bf480016da56cdcfa9fa5631b714db8590c8953eee60c7d9b" [label=""];
  "sha256:2ccc59113968bf4bf480016da56cdcfa9fa5631b714db8590c8953eee60c7d9b" -> "sha256:b92574896ed77296b9af415d1a15f76621a89197481a7bb681457839a87033bd" [label=""];
  "sha256:b92574896ed77296b9af415d1a15f76621a89197481a7bb681457839a87033bd" -> "sha256:1258ccf51c73b973b9df46706795cd1c1288f93da6476443a1caf001c0ebf81c" [label=""];
}

