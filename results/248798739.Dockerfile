[app/sources/248798739.Dockerfile]
digraph {
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:34d4ae2e7fcaaffb43dfa7421a74946024dd1233d4af836d7a4dd67f567ef3bc" [label="local://context" shape="ellipse"];
  "sha256:04ef96701001c1636ffb6dbab749977a66ee33207ff2e68f2d3bac8e9d7a8395" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:f4d191d7ed7c894bd0a584edb918471dbbfcb55007871f84c3f3cf0164c368b4" [label="/bin/sh -c rpm -i $package" shape="box"];
  "sha256:2dda7391b4a365cf4ee8b574e072e4d5eb5333c3fa60f5979dd52ea094e45a39" [label="sha256:2dda7391b4a365cf4ee8b574e072e4d5eb5333c3fa60f5979dd52ea094e45a39" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:04ef96701001c1636ffb6dbab749977a66ee33207ff2e68f2d3bac8e9d7a8395" [label=""];
  "sha256:34d4ae2e7fcaaffb43dfa7421a74946024dd1233d4af836d7a4dd67f567ef3bc" -> "sha256:04ef96701001c1636ffb6dbab749977a66ee33207ff2e68f2d3bac8e9d7a8395" [label=""];
  "sha256:04ef96701001c1636ffb6dbab749977a66ee33207ff2e68f2d3bac8e9d7a8395" -> "sha256:f4d191d7ed7c894bd0a584edb918471dbbfcb55007871f84c3f3cf0164c368b4" [label=""];
  "sha256:f4d191d7ed7c894bd0a584edb918471dbbfcb55007871f84c3f3cf0164c368b4" -> "sha256:2dda7391b4a365cf4ee8b574e072e4d5eb5333c3fa60f5979dd52ea094e45a39" [label=""];
}

