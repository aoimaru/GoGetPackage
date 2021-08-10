[app/sources/484096584.Dockerfile]
digraph {
  "sha256:86f954c1e9cfba2025ccc80a97ed43a31e487a7a86a7679ead8aa419e3a092a4" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:9bd69015be1d9ee1559523b5556451eafb2ae0f224b6ded3b9b8f003192240e7" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:889ed7cb22d90651b5b4288fc02e681f4efc5ea8c9aad618c401ef5e8feb3fde" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:2afe5d3cd7fb5ea0c199f641bce67ad4aa8aae997eab890140161ac09b8054b4" [label="copy{src=/null, dest=/}" shape="note"];
  "sha256:5122b02228d476021d80ba3bfa4ba5086c9c0167dca7942ea84ca67fd876d11f" [label="copy{src=/nullfile, dest=/tmp}" shape="note"];
  "sha256:9fa4ed814bc8ec1cc1d08e5aa622ee65102182880077af8de1ed6277c2e789f8" [label="copy{src=/vimrc, dest=/tmp}" shape="note"];
  "sha256:68300a2158fff64e2dacb0db8f16c30bbf063c75a09d147c888a93f3c0fb6e2f" [label="copy{src=/bashrc, dest=/tmp}" shape="note"];
  "sha256:bba929ba25fedbf49641d7c29559dbce54ae26c8806e844e3b30ec03274c4604" [label="copy{src=/test file, dest=/tmp}" shape="note"];
  "sha256:3692c5c1de1bac9c1c22b548c205f363deedeb790cca9b9cf9e48334cca4ebdc" [label="copy{src=/test file, dest=/tmp/test file}" shape="note"];
  "sha256:3f75442d3c07baf4f23d4f98beb92a68324452a408b5c559a67ca3aa69caa695" [label="sha256:3f75442d3c07baf4f23d4f98beb92a68324452a408b5c559a67ca3aa69caa695" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:9bd69015be1d9ee1559523b5556451eafb2ae0f224b6ded3b9b8f003192240e7" [label=""];
  "sha256:86f954c1e9cfba2025ccc80a97ed43a31e487a7a86a7679ead8aa419e3a092a4" -> "sha256:9bd69015be1d9ee1559523b5556451eafb2ae0f224b6ded3b9b8f003192240e7" [label=""];
  "sha256:9bd69015be1d9ee1559523b5556451eafb2ae0f224b6ded3b9b8f003192240e7" -> "sha256:889ed7cb22d90651b5b4288fc02e681f4efc5ea8c9aad618c401ef5e8feb3fde" [label=""];
  "sha256:86f954c1e9cfba2025ccc80a97ed43a31e487a7a86a7679ead8aa419e3a092a4" -> "sha256:889ed7cb22d90651b5b4288fc02e681f4efc5ea8c9aad618c401ef5e8feb3fde" [label=""];
  "sha256:889ed7cb22d90651b5b4288fc02e681f4efc5ea8c9aad618c401ef5e8feb3fde" -> "sha256:2afe5d3cd7fb5ea0c199f641bce67ad4aa8aae997eab890140161ac09b8054b4" [label=""];
  "sha256:86f954c1e9cfba2025ccc80a97ed43a31e487a7a86a7679ead8aa419e3a092a4" -> "sha256:2afe5d3cd7fb5ea0c199f641bce67ad4aa8aae997eab890140161ac09b8054b4" [label=""];
  "sha256:2afe5d3cd7fb5ea0c199f641bce67ad4aa8aae997eab890140161ac09b8054b4" -> "sha256:5122b02228d476021d80ba3bfa4ba5086c9c0167dca7942ea84ca67fd876d11f" [label=""];
  "sha256:86f954c1e9cfba2025ccc80a97ed43a31e487a7a86a7679ead8aa419e3a092a4" -> "sha256:5122b02228d476021d80ba3bfa4ba5086c9c0167dca7942ea84ca67fd876d11f" [label=""];
  "sha256:5122b02228d476021d80ba3bfa4ba5086c9c0167dca7942ea84ca67fd876d11f" -> "sha256:9fa4ed814bc8ec1cc1d08e5aa622ee65102182880077af8de1ed6277c2e789f8" [label=""];
  "sha256:86f954c1e9cfba2025ccc80a97ed43a31e487a7a86a7679ead8aa419e3a092a4" -> "sha256:9fa4ed814bc8ec1cc1d08e5aa622ee65102182880077af8de1ed6277c2e789f8" [label=""];
  "sha256:9fa4ed814bc8ec1cc1d08e5aa622ee65102182880077af8de1ed6277c2e789f8" -> "sha256:68300a2158fff64e2dacb0db8f16c30bbf063c75a09d147c888a93f3c0fb6e2f" [label=""];
  "sha256:86f954c1e9cfba2025ccc80a97ed43a31e487a7a86a7679ead8aa419e3a092a4" -> "sha256:68300a2158fff64e2dacb0db8f16c30bbf063c75a09d147c888a93f3c0fb6e2f" [label=""];
  "sha256:68300a2158fff64e2dacb0db8f16c30bbf063c75a09d147c888a93f3c0fb6e2f" -> "sha256:bba929ba25fedbf49641d7c29559dbce54ae26c8806e844e3b30ec03274c4604" [label=""];
  "sha256:86f954c1e9cfba2025ccc80a97ed43a31e487a7a86a7679ead8aa419e3a092a4" -> "sha256:bba929ba25fedbf49641d7c29559dbce54ae26c8806e844e3b30ec03274c4604" [label=""];
  "sha256:bba929ba25fedbf49641d7c29559dbce54ae26c8806e844e3b30ec03274c4604" -> "sha256:3692c5c1de1bac9c1c22b548c205f363deedeb790cca9b9cf9e48334cca4ebdc" [label=""];
  "sha256:86f954c1e9cfba2025ccc80a97ed43a31e487a7a86a7679ead8aa419e3a092a4" -> "sha256:3692c5c1de1bac9c1c22b548c205f363deedeb790cca9b9cf9e48334cca4ebdc" [label=""];
  "sha256:3692c5c1de1bac9c1c22b548c205f363deedeb790cca9b9cf9e48334cca4ebdc" -> "sha256:3f75442d3c07baf4f23d4f98beb92a68324452a408b5c559a67ca3aa69caa695" [label=""];
}

