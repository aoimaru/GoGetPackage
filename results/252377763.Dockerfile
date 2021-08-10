[app/sources/252377763.Dockerfile]
digraph {
  "sha256:6f4028f0debe358d780a1f6cf87c24b3d5bec7c06ec7929dde756b385465e8a4" [label="local://context" shape="ellipse"];
  "sha256:418d210aea7f8fc7c59f9863fe3f97f1734d823c2d25623e909df5e48eca3d6a" [label="docker-image://docker.io/library/bench-image-system-stable:latest" shape="ellipse"];
  "sha256:e9688e45082d4a7a1f1c705ff589cb9d152d42bec0e22952e9c9a54f38b9c78f" [label="/bin/sh -c adduser --disabled-password --gecos '' guest" shape="box"];
  "sha256:1bf31be48e3cbebc082e525058e9fe8639b85ec506d207d078a04bf5c5c42450" [label="copy{src=/, dest=/why3}" shape="note"];
  "sha256:b8d2b290a022a76e08909bd28926c67a71e8aa0f504f1cdad2c21e003c813063" [label="mkdir{path=/home/why3/why3}" shape="note"];
  "sha256:7e8131eb6e74fe0e5683b63455abe41c442f044c88b9f337645dd26ecd50dda9" [label="/bin/sh -c eval `opam config env` &&     ./configure &&     make" shape="box"];
  "sha256:deb6444b893f30f077917c15281f7bf5543c46a2617b941553b4377192471b9c" [label="/bin/sh -c make install" shape="box"];
  "sha256:8b432aebf4b24ba9bf817bcacb43018459fc60f076807d21f1fc33361397c980" [label="mkdir{path=/home/guest}" shape="note"];
  "sha256:1504ef3601abbf803608a924567113dfbf770fecc782323ca8ca534c0835da1e" [label="/bin/sh -c why3 config --detect" shape="box"];
  "sha256:b9fc768619dd97077ae97e995e3bff1b7c9d7f71d47907dac4f63023fbac5cf4" [label="sha256:b9fc768619dd97077ae97e995e3bff1b7c9d7f71d47907dac4f63023fbac5cf4" shape="plaintext"];
  "sha256:418d210aea7f8fc7c59f9863fe3f97f1734d823c2d25623e909df5e48eca3d6a" -> "sha256:e9688e45082d4a7a1f1c705ff589cb9d152d42bec0e22952e9c9a54f38b9c78f" [label=""];
  "sha256:e9688e45082d4a7a1f1c705ff589cb9d152d42bec0e22952e9c9a54f38b9c78f" -> "sha256:1bf31be48e3cbebc082e525058e9fe8639b85ec506d207d078a04bf5c5c42450" [label=""];
  "sha256:6f4028f0debe358d780a1f6cf87c24b3d5bec7c06ec7929dde756b385465e8a4" -> "sha256:1bf31be48e3cbebc082e525058e9fe8639b85ec506d207d078a04bf5c5c42450" [label=""];
  "sha256:1bf31be48e3cbebc082e525058e9fe8639b85ec506d207d078a04bf5c5c42450" -> "sha256:b8d2b290a022a76e08909bd28926c67a71e8aa0f504f1cdad2c21e003c813063" [label=""];
  "sha256:b8d2b290a022a76e08909bd28926c67a71e8aa0f504f1cdad2c21e003c813063" -> "sha256:7e8131eb6e74fe0e5683b63455abe41c442f044c88b9f337645dd26ecd50dda9" [label=""];
  "sha256:7e8131eb6e74fe0e5683b63455abe41c442f044c88b9f337645dd26ecd50dda9" -> "sha256:deb6444b893f30f077917c15281f7bf5543c46a2617b941553b4377192471b9c" [label=""];
  "sha256:deb6444b893f30f077917c15281f7bf5543c46a2617b941553b4377192471b9c" -> "sha256:8b432aebf4b24ba9bf817bcacb43018459fc60f076807d21f1fc33361397c980" [label=""];
  "sha256:8b432aebf4b24ba9bf817bcacb43018459fc60f076807d21f1fc33361397c980" -> "sha256:1504ef3601abbf803608a924567113dfbf770fecc782323ca8ca534c0835da1e" [label=""];
  "sha256:1504ef3601abbf803608a924567113dfbf770fecc782323ca8ca534c0835da1e" -> "sha256:b9fc768619dd97077ae97e995e3bff1b7c9d7f71d47907dac4f63023fbac5cf4" [label=""];
}

