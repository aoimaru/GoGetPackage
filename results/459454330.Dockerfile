[app/sources/459454330.Dockerfile]
digraph {
  "sha256:fd5b2ca379994d5ac74d068fc20f6eaaad2ce3a88a7b896d160c43d420b45b0f" [label="docker-image://docker.io/library/golang:1.6@sha256:29116f0f6cd2ef6a882639ee222ccb6e2f6d88a1d97d461aaf4c4a2622d252a1" shape="ellipse"];
  "sha256:e9a68f0e56eb4f96bd670144f6203c271e81bd6b310c588757888384d5181ad4" [label="local://context" shape="ellipse"];
  "sha256:4de64df1ff35c81283fb5d44776cda3559d6708c3dbec61e35e535c6a3988a3b" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:d4a973b56a0583a9b381dd481193e4d1f1631a7f5c97101f30094a60ac0fc8be" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:0a4f61c7dc74d7da69cfecf5856fd448f4edef093305688cf1e06c6c908d5b49" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:cdf2f948ea84f4cc40b5871e2b201173c66d58c5d52dd21e3bc2b4ce865a6904" [label="sha256:cdf2f948ea84f4cc40b5871e2b201173c66d58c5d52dd21e3bc2b4ce865a6904" shape="plaintext"];
  "sha256:fd5b2ca379994d5ac74d068fc20f6eaaad2ce3a88a7b896d160c43d420b45b0f" -> "sha256:4de64df1ff35c81283fb5d44776cda3559d6708c3dbec61e35e535c6a3988a3b" [label=""];
  "sha256:e9a68f0e56eb4f96bd670144f6203c271e81bd6b310c588757888384d5181ad4" -> "sha256:4de64df1ff35c81283fb5d44776cda3559d6708c3dbec61e35e535c6a3988a3b" [label=""];
  "sha256:4de64df1ff35c81283fb5d44776cda3559d6708c3dbec61e35e535c6a3988a3b" -> "sha256:d4a973b56a0583a9b381dd481193e4d1f1631a7f5c97101f30094a60ac0fc8be" [label=""];
  "sha256:d4a973b56a0583a9b381dd481193e4d1f1631a7f5c97101f30094a60ac0fc8be" -> "sha256:0a4f61c7dc74d7da69cfecf5856fd448f4edef093305688cf1e06c6c908d5b49" [label=""];
  "sha256:0a4f61c7dc74d7da69cfecf5856fd448f4edef093305688cf1e06c6c908d5b49" -> "sha256:cdf2f948ea84f4cc40b5871e2b201173c66d58c5d52dd21e3bc2b4ce865a6904" [label=""];
}

