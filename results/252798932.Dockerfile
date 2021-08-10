[app/sources/252798932.Dockerfile]
digraph {
  "sha256:bb8b65388e372bb78999f6fa93beeedd406ea1e5d68e0023f1d95932084df55b" [label="docker-image://docker.io/devicetools/apidocs.server:latest" shape="ellipse"];
  "sha256:0f503947098765f7d36dd07dbff61f1cbab8e15a38b2769438ab189ebd51462f" [label="local://context" shape="ellipse"];
  "sha256:0410924497f05cd2abacdde9430f483ed2c0a95d478d8de9b50dced5ccc9cb6c" [label="copy{src=/buildAll.sh, dest=/}" shape="note"];
  "sha256:791a656e68fb3bcac5c9533204f0bd1fbd65b3eda93bee0509473b8689558413" [label="copy{src=/apiblueprint, dest=/apiblueprint}" shape="note"];
  "sha256:471a378198c5eb96426c40eeea9370daf4e6190fe0932956a22dbd96df75c884" [label="/bin/sh -c mkdir -p /public" shape="box"];
  "sha256:b411df2362f720244f8fec5458982465c9812bd10418c4220b025a5802bb2a55" [label="/bin/sh -c ./buildAll.sh" shape="box"];
  "sha256:18837cdf9b5c0c929f1ac9e9899c46fb647e5ad1a01ff45c1b70fe1d163015e1" [label="sha256:18837cdf9b5c0c929f1ac9e9899c46fb647e5ad1a01ff45c1b70fe1d163015e1" shape="plaintext"];
  "sha256:bb8b65388e372bb78999f6fa93beeedd406ea1e5d68e0023f1d95932084df55b" -> "sha256:0410924497f05cd2abacdde9430f483ed2c0a95d478d8de9b50dced5ccc9cb6c" [label=""];
  "sha256:0f503947098765f7d36dd07dbff61f1cbab8e15a38b2769438ab189ebd51462f" -> "sha256:0410924497f05cd2abacdde9430f483ed2c0a95d478d8de9b50dced5ccc9cb6c" [label=""];
  "sha256:0410924497f05cd2abacdde9430f483ed2c0a95d478d8de9b50dced5ccc9cb6c" -> "sha256:791a656e68fb3bcac5c9533204f0bd1fbd65b3eda93bee0509473b8689558413" [label=""];
  "sha256:0f503947098765f7d36dd07dbff61f1cbab8e15a38b2769438ab189ebd51462f" -> "sha256:791a656e68fb3bcac5c9533204f0bd1fbd65b3eda93bee0509473b8689558413" [label=""];
  "sha256:791a656e68fb3bcac5c9533204f0bd1fbd65b3eda93bee0509473b8689558413" -> "sha256:471a378198c5eb96426c40eeea9370daf4e6190fe0932956a22dbd96df75c884" [label=""];
  "sha256:471a378198c5eb96426c40eeea9370daf4e6190fe0932956a22dbd96df75c884" -> "sha256:b411df2362f720244f8fec5458982465c9812bd10418c4220b025a5802bb2a55" [label=""];
  "sha256:b411df2362f720244f8fec5458982465c9812bd10418c4220b025a5802bb2a55" -> "sha256:18837cdf9b5c0c929f1ac9e9899c46fb647e5ad1a01ff45c1b70fe1d163015e1" [label=""];
}

