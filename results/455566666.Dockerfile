[app/sources/455566666.Dockerfile]
digraph {
  "sha256:ea634e5a91096a6f5041d290aa9a79d7eb86ed3ea7a0c3c094a85caab3a06423" [label="docker-image://docker.io/library/golang:1.7.4" shape="ellipse"];
  "sha256:2b66049c6e28960189f8795d5c4e12309f44aec2e53fbbc2a1a84a1d858d10d3" [label="/bin/sh -c set -x &&     apt-get update &&     apt-get install -y --no-install-recommends          netcat python-pip virtualenv &&     apt-get clean" shape="box"];
  "sha256:52d06796d6ebb67dccbc9e7269145c4a0f708d2944295812d06e9a1ccc666e35" [label="/bin/sh -c mkdir -p $METRICBEAT_PATH/build/coverage" shape="box"];
  "sha256:aaa21d41cacbcabf9a5a4e3bd283b1d5463e3f9d19dc90b37442bc29fd6d08b0" [label="mkdir{path=/go/src/github.com/elastic/beats/metricbeat}" shape="note"];
  "sha256:e0c2553dd8498f099544f16bd42308180ac17b616fa431e77df71a804d3d517d" [label="sha256:e0c2553dd8498f099544f16bd42308180ac17b616fa431e77df71a804d3d517d" shape="plaintext"];
  "sha256:ea634e5a91096a6f5041d290aa9a79d7eb86ed3ea7a0c3c094a85caab3a06423" -> "sha256:2b66049c6e28960189f8795d5c4e12309f44aec2e53fbbc2a1a84a1d858d10d3" [label=""];
  "sha256:2b66049c6e28960189f8795d5c4e12309f44aec2e53fbbc2a1a84a1d858d10d3" -> "sha256:52d06796d6ebb67dccbc9e7269145c4a0f708d2944295812d06e9a1ccc666e35" [label=""];
  "sha256:52d06796d6ebb67dccbc9e7269145c4a0f708d2944295812d06e9a1ccc666e35" -> "sha256:aaa21d41cacbcabf9a5a4e3bd283b1d5463e3f9d19dc90b37442bc29fd6d08b0" [label=""];
  "sha256:aaa21d41cacbcabf9a5a4e3bd283b1d5463e3f9d19dc90b37442bc29fd6d08b0" -> "sha256:e0c2553dd8498f099544f16bd42308180ac17b616fa431e77df71a804d3d517d" [label=""];
}

