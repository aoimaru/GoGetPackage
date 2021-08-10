[app/sources/476974917.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:323f162f71909cf7782a785c96657628591bb9a8a64a7c99c013a9d36d03fcd8" [label="local://context" shape="ellipse"];
  "sha256:89be5f32c47aaba07364ad0f63c96ba8287bfb77951ab5b72b7f02a4679f3733" [label="copy{src=/graphql-server, dest=/}" shape="note"];
  "sha256:f7cc4853d9aed8329c43c3f13808b06c3ddcb551e75cf030d5f8cea3dbfbf468" [label="/bin/sh -c mkdir /static" shape="box"];
  "sha256:b59839051a403e1032c4682c8e5deb7c0121e1ceb3b32b9983c2f1d4b28006fc" [label="copy{src=/static, dest=/static}" shape="note"];
  "sha256:eaaabb4beb9113a38d8a3aeb2e13b7f93688da44a520e864148abf64d918d187" [label="sha256:eaaabb4beb9113a38d8a3aeb2e13b7f93688da44a520e864148abf64d918d187" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:89be5f32c47aaba07364ad0f63c96ba8287bfb77951ab5b72b7f02a4679f3733" [label=""];
  "sha256:323f162f71909cf7782a785c96657628591bb9a8a64a7c99c013a9d36d03fcd8" -> "sha256:89be5f32c47aaba07364ad0f63c96ba8287bfb77951ab5b72b7f02a4679f3733" [label=""];
  "sha256:89be5f32c47aaba07364ad0f63c96ba8287bfb77951ab5b72b7f02a4679f3733" -> "sha256:f7cc4853d9aed8329c43c3f13808b06c3ddcb551e75cf030d5f8cea3dbfbf468" [label=""];
  "sha256:f7cc4853d9aed8329c43c3f13808b06c3ddcb551e75cf030d5f8cea3dbfbf468" -> "sha256:b59839051a403e1032c4682c8e5deb7c0121e1ceb3b32b9983c2f1d4b28006fc" [label=""];
  "sha256:323f162f71909cf7782a785c96657628591bb9a8a64a7c99c013a9d36d03fcd8" -> "sha256:b59839051a403e1032c4682c8e5deb7c0121e1ceb3b32b9983c2f1d4b28006fc" [label=""];
  "sha256:b59839051a403e1032c4682c8e5deb7c0121e1ceb3b32b9983c2f1d4b28006fc" -> "sha256:eaaabb4beb9113a38d8a3aeb2e13b7f93688da44a520e864148abf64d918d187" [label=""];
}

