[app/sources/336712013.Dockerfile]
digraph {
  "sha256:4dfb8ba31017029afa52bc1e8f994a31f55cf42a9334b39e8b8be7720114ccdf" [label="docker-image://docker.io/continuumio/miniconda:4.5.4" shape="ellipse"];
  "sha256:5674c7315f27b505c9940926c30a1a017f8496de54113f49c9a49b9fdeea88a3" [label="/bin/sh -c apt-get update && apt-get install -y procps && apt-get clean -y" shape="box"];
  "sha256:815145eea5207f659ff932abcb2fd2b3aa608aeb3db52a01a1ab470f908eac4f" [label="/bin/sh -c conda install conda=4.6.7" shape="box"];
  "sha256:e9c24db9c9e820461351215f802a232471d08264e78d1472b5a53961f9449564" [label="sha256:e9c24db9c9e820461351215f802a232471d08264e78d1472b5a53961f9449564" shape="plaintext"];
  "sha256:4dfb8ba31017029afa52bc1e8f994a31f55cf42a9334b39e8b8be7720114ccdf" -> "sha256:5674c7315f27b505c9940926c30a1a017f8496de54113f49c9a49b9fdeea88a3" [label=""];
  "sha256:5674c7315f27b505c9940926c30a1a017f8496de54113f49c9a49b9fdeea88a3" -> "sha256:815145eea5207f659ff932abcb2fd2b3aa608aeb3db52a01a1ab470f908eac4f" [label=""];
  "sha256:815145eea5207f659ff932abcb2fd2b3aa608aeb3db52a01a1ab470f908eac4f" -> "sha256:e9c24db9c9e820461351215f802a232471d08264e78d1472b5a53961f9449564" [label=""];
}

