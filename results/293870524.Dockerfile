[app/sources/293870524.Dockerfile]
digraph {
  "sha256:ee88f074d7390abe6b8d2505974eedb2fca5c32278f8be4c1d09f05333b1be8c" [label="local://context" shape="ellipse"];
  "sha256:63d09384c2145fb065863565a02e493023ece1138db567de850a0a9b0846b9ea" [label="copy{src=/rootfs.tar, dest=/}" shape="note"];
  "sha256:cfbe64dff5524dc4a1d76785b023362a93d7b0f81ede6a41ea8dd1936ed3e802" [label="sha256:cfbe64dff5524dc4a1d76785b023362a93d7b0f81ede6a41ea8dd1936ed3e802" shape="plaintext"];
  "sha256:ee88f074d7390abe6b8d2505974eedb2fca5c32278f8be4c1d09f05333b1be8c" -> "sha256:63d09384c2145fb065863565a02e493023ece1138db567de850a0a9b0846b9ea" [label=""];
  "sha256:63d09384c2145fb065863565a02e493023ece1138db567de850a0a9b0846b9ea" -> "sha256:cfbe64dff5524dc4a1d76785b023362a93d7b0f81ede6a41ea8dd1936ed3e802" [label=""];
}

