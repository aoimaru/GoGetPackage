[app/sources/196985102.Dockerfile]
digraph {
  "sha256:9c878dc5b912ccad3b9667c7f0de6f0a40e6d21e08e17ccf5792625bcbe43f78" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:defd262c9b4e0c81f5800f5ea198218ac9651e31b6dd39e64f15c01513f0f7d2" [label="copy{src=/kubemark.sh, dest=/kubemark.sh}" shape="note"];
  "sha256:4ac1509e9bae72b2eb22e73938ab3b2b7132b19f241a39e9d2837bdb510b508d" [label="/bin/sh -c chmod a+x /kubemark.sh" shape="box"];
  "sha256:c180d9b5bd0c4c57b3d335b522850b1653831462ad08c42ccf132c4a693546d3" [label="copy{src=/kubemark, dest=/kubemark}" shape="note"];
  "sha256:2e84a3031563bbea1fbc21e049ba5e5995dcdf27398ab17480a518b7e19e2820" [label="sha256:2e84a3031563bbea1fbc21e049ba5e5995dcdf27398ab17480a518b7e19e2820" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:defd262c9b4e0c81f5800f5ea198218ac9651e31b6dd39e64f15c01513f0f7d2" [label=""];
  "sha256:9c878dc5b912ccad3b9667c7f0de6f0a40e6d21e08e17ccf5792625bcbe43f78" -> "sha256:defd262c9b4e0c81f5800f5ea198218ac9651e31b6dd39e64f15c01513f0f7d2" [label=""];
  "sha256:defd262c9b4e0c81f5800f5ea198218ac9651e31b6dd39e64f15c01513f0f7d2" -> "sha256:4ac1509e9bae72b2eb22e73938ab3b2b7132b19f241a39e9d2837bdb510b508d" [label=""];
  "sha256:4ac1509e9bae72b2eb22e73938ab3b2b7132b19f241a39e9d2837bdb510b508d" -> "sha256:c180d9b5bd0c4c57b3d335b522850b1653831462ad08c42ccf132c4a693546d3" [label=""];
  "sha256:9c878dc5b912ccad3b9667c7f0de6f0a40e6d21e08e17ccf5792625bcbe43f78" -> "sha256:c180d9b5bd0c4c57b3d335b522850b1653831462ad08c42ccf132c4a693546d3" [label=""];
  "sha256:c180d9b5bd0c4c57b3d335b522850b1653831462ad08c42ccf132c4a693546d3" -> "sha256:2e84a3031563bbea1fbc21e049ba5e5995dcdf27398ab17480a518b7e19e2820" [label=""];
}

