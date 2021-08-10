[app/sources/475749731.Dockerfile]
digraph {
  "sha256:6fcb70604fb8436b9ba3c09b219aaac5206e9a5bcb8132ee7f6ad5d264838407" [label="docker-image://docker.io/continuumio/miniconda:latest" shape="ellipse"];
  "sha256:e059978e858d4ee7cbcfb878da98a9323751f7a002c0d20d9beb92f81a12342e" [label="/bin/sh -c conda update -n base conda" shape="box"];
  "sha256:b934b2059cde58328ab19053f4e85f2616ce686853c5974d22617f950981aec5" [label="local://context" shape="ellipse"];
  "sha256:9f30eafbc61035ec7a06ba062c6fb418176d58ffb1cacf0cfcd956555da79a29" [label="copy{src=/environment.yml, dest=/}" shape="note"];
  "sha256:b4ad3a83ff3ea4e7e5cb0755d4acce6765c5a35501143f9b8bdaa2c88774aa58" [label="/bin/sh -c conda env create -f /environment.yml" shape="box"];
  "sha256:3a00571151f5859e5b3ec044a372bed9233ac5ee5f16f09833c135a96f97963f" [label="sha256:3a00571151f5859e5b3ec044a372bed9233ac5ee5f16f09833c135a96f97963f" shape="plaintext"];
  "sha256:6fcb70604fb8436b9ba3c09b219aaac5206e9a5bcb8132ee7f6ad5d264838407" -> "sha256:e059978e858d4ee7cbcfb878da98a9323751f7a002c0d20d9beb92f81a12342e" [label=""];
  "sha256:e059978e858d4ee7cbcfb878da98a9323751f7a002c0d20d9beb92f81a12342e" -> "sha256:9f30eafbc61035ec7a06ba062c6fb418176d58ffb1cacf0cfcd956555da79a29" [label=""];
  "sha256:b934b2059cde58328ab19053f4e85f2616ce686853c5974d22617f950981aec5" -> "sha256:9f30eafbc61035ec7a06ba062c6fb418176d58ffb1cacf0cfcd956555da79a29" [label=""];
  "sha256:9f30eafbc61035ec7a06ba062c6fb418176d58ffb1cacf0cfcd956555da79a29" -> "sha256:b4ad3a83ff3ea4e7e5cb0755d4acce6765c5a35501143f9b8bdaa2c88774aa58" [label=""];
  "sha256:b4ad3a83ff3ea4e7e5cb0755d4acce6765c5a35501143f9b8bdaa2c88774aa58" -> "sha256:3a00571151f5859e5b3ec044a372bed9233ac5ee5f16f09833c135a96f97963f" [label=""];
}

