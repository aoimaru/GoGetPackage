[app/sources/227632042.Dockerfile]
digraph {
  "sha256:7ad1038bdde178aa826b4866069eb39c88a97d2112b8c9b0f6e901a9e85444d9" [label="https://github.com/openshift/origin/raw/master/LICENSE" shape="ellipse"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:78a7e40b6570aed2ebe0b1bf7f2c1e6ffcd4f3743ba3a9920eee99f5d86ccb94" [label="https://github.com/openshift/origin/raw/master/README.md" shape="ellipse"];
  "sha256:aa8424ad01366fb312d7ed6cd5bc51e77fb57babbb773c653f257bebb4c18f3d" [label="copy{src=/README.md, dest=/README.md}" shape="note"];
  "sha256:6f79c4f5a9241cddae925d45139221ee7b5b1255a6c3a1464431490ddf5179aa" [label="copy{src=/LICENSE, dest=/}" shape="note"];
  "sha256:0862ca05800ea0289c5fceb244c17a6c6f8fc92973d8151ba4d5f03f13c3d9e4" [label="copy{src=/LICENSE, dest=/A}" shape="note"];
  "sha256:bc8817263d4b61e78e801096c0a3114ec725f73f8f7e72ccd443027339f68c05" [label="copy{src=/LICENSE, dest=/a}" shape="note"];
  "sha256:314b155a031ebdb6cf936fa6d89b45b39b1c1039bafd35f50eb0d0ad80725ce8" [label="/bin/sh -c mkdir ./b" shape="box"];
  "sha256:e4aa7f04dc2f60108f28522f1ef1c98109c5c8cb6f46db8ebde5edbbc5904010" [label="copy{src=/LICENSE, dest=/b/a}" shape="note"];
  "sha256:b3bfbb1de84706e18d2daa780fe04c4602a3d7c0f85b436d5e0bdfe5ba128e31" [label="copy{src=/LICENSE, dest=/b}" shape="note"];
  "sha256:822f6796022a875de13ff7d87544c444468a8b114969a7684c718e71e0206cae" [label="https://github.com/openshift/ruby-hello-world/archive/master.zip" shape="ellipse"];
  "sha256:5feaeb0f23c95abc2e30a2bbd1fee798623ddf46bbe52c4ef41e3db8a5d518c0" [label="copy{src=/master.zip, dest=/tmp/}" shape="note"];
  "sha256:7220675f739f33196289d471f2a77ac924b6ac4a24461539dd11be11358b502e" [label="sha256:7220675f739f33196289d471f2a77ac924b6ac4a24461539dd11be11358b502e" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:aa8424ad01366fb312d7ed6cd5bc51e77fb57babbb773c653f257bebb4c18f3d" [label=""];
  "sha256:78a7e40b6570aed2ebe0b1bf7f2c1e6ffcd4f3743ba3a9920eee99f5d86ccb94" -> "sha256:aa8424ad01366fb312d7ed6cd5bc51e77fb57babbb773c653f257bebb4c18f3d" [label=""];
  "sha256:aa8424ad01366fb312d7ed6cd5bc51e77fb57babbb773c653f257bebb4c18f3d" -> "sha256:6f79c4f5a9241cddae925d45139221ee7b5b1255a6c3a1464431490ddf5179aa" [label=""];
  "sha256:7ad1038bdde178aa826b4866069eb39c88a97d2112b8c9b0f6e901a9e85444d9" -> "sha256:6f79c4f5a9241cddae925d45139221ee7b5b1255a6c3a1464431490ddf5179aa" [label=""];
  "sha256:6f79c4f5a9241cddae925d45139221ee7b5b1255a6c3a1464431490ddf5179aa" -> "sha256:0862ca05800ea0289c5fceb244c17a6c6f8fc92973d8151ba4d5f03f13c3d9e4" [label=""];
  "sha256:7ad1038bdde178aa826b4866069eb39c88a97d2112b8c9b0f6e901a9e85444d9" -> "sha256:0862ca05800ea0289c5fceb244c17a6c6f8fc92973d8151ba4d5f03f13c3d9e4" [label=""];
  "sha256:0862ca05800ea0289c5fceb244c17a6c6f8fc92973d8151ba4d5f03f13c3d9e4" -> "sha256:bc8817263d4b61e78e801096c0a3114ec725f73f8f7e72ccd443027339f68c05" [label=""];
  "sha256:7ad1038bdde178aa826b4866069eb39c88a97d2112b8c9b0f6e901a9e85444d9" -> "sha256:bc8817263d4b61e78e801096c0a3114ec725f73f8f7e72ccd443027339f68c05" [label=""];
  "sha256:bc8817263d4b61e78e801096c0a3114ec725f73f8f7e72ccd443027339f68c05" -> "sha256:314b155a031ebdb6cf936fa6d89b45b39b1c1039bafd35f50eb0d0ad80725ce8" [label=""];
  "sha256:314b155a031ebdb6cf936fa6d89b45b39b1c1039bafd35f50eb0d0ad80725ce8" -> "sha256:e4aa7f04dc2f60108f28522f1ef1c98109c5c8cb6f46db8ebde5edbbc5904010" [label=""];
  "sha256:7ad1038bdde178aa826b4866069eb39c88a97d2112b8c9b0f6e901a9e85444d9" -> "sha256:e4aa7f04dc2f60108f28522f1ef1c98109c5c8cb6f46db8ebde5edbbc5904010" [label=""];
  "sha256:e4aa7f04dc2f60108f28522f1ef1c98109c5c8cb6f46db8ebde5edbbc5904010" -> "sha256:b3bfbb1de84706e18d2daa780fe04c4602a3d7c0f85b436d5e0bdfe5ba128e31" [label=""];
  "sha256:7ad1038bdde178aa826b4866069eb39c88a97d2112b8c9b0f6e901a9e85444d9" -> "sha256:b3bfbb1de84706e18d2daa780fe04c4602a3d7c0f85b436d5e0bdfe5ba128e31" [label=""];
  "sha256:b3bfbb1de84706e18d2daa780fe04c4602a3d7c0f85b436d5e0bdfe5ba128e31" -> "sha256:5feaeb0f23c95abc2e30a2bbd1fee798623ddf46bbe52c4ef41e3db8a5d518c0" [label=""];
  "sha256:822f6796022a875de13ff7d87544c444468a8b114969a7684c718e71e0206cae" -> "sha256:5feaeb0f23c95abc2e30a2bbd1fee798623ddf46bbe52c4ef41e3db8a5d518c0" [label=""];
  "sha256:5feaeb0f23c95abc2e30a2bbd1fee798623ddf46bbe52c4ef41e3db8a5d518c0" -> "sha256:7220675f739f33196289d471f2a77ac924b6ac4a24461539dd11be11358b502e" [label=""];
}

