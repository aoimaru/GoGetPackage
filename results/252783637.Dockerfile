[app/sources/252783637.Dockerfile]
digraph {
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:1136d33e99841189bf74acab03196b571abe8733e79e61f062251aa397f89543" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:f4fc06397a2d07c1651e84dfb5c5bf2f184eca06c6415b44ab50c0e7cbfb86c7" [label="local://context" shape="ellipse"];
  "sha256:f5c9590a273eee935d13262ad706ef0244fd6dd5bdd809b6d7ba50076baf2ef9" [label="copy{src=/main.go, dest=/go/src/app/}" shape="note"];
  "sha256:15e84a43ba27d784705e7ba9699a79047af04f3a42a84672ef36332939fdf57b" [label="/bin/sh -c go get -d -v ./..." shape="box"];
  "sha256:efaa23b97ba1ac12fa63ee3c5b1d58f621a3b27621a90b72cef8b9ca9ccdcc8b" [label="/bin/sh -c go install -v ./..." shape="box"];
  "sha256:cd795ecbe6a91a98b9b8f1551a7b27beb8594517c68dbfbc93a1ade4e930add0" [label="sha256:cd795ecbe6a91a98b9b8f1551a7b27beb8594517c68dbfbc93a1ade4e930add0" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:1136d33e99841189bf74acab03196b571abe8733e79e61f062251aa397f89543" [label=""];
  "sha256:1136d33e99841189bf74acab03196b571abe8733e79e61f062251aa397f89543" -> "sha256:f5c9590a273eee935d13262ad706ef0244fd6dd5bdd809b6d7ba50076baf2ef9" [label=""];
  "sha256:f4fc06397a2d07c1651e84dfb5c5bf2f184eca06c6415b44ab50c0e7cbfb86c7" -> "sha256:f5c9590a273eee935d13262ad706ef0244fd6dd5bdd809b6d7ba50076baf2ef9" [label=""];
  "sha256:f5c9590a273eee935d13262ad706ef0244fd6dd5bdd809b6d7ba50076baf2ef9" -> "sha256:15e84a43ba27d784705e7ba9699a79047af04f3a42a84672ef36332939fdf57b" [label=""];
  "sha256:15e84a43ba27d784705e7ba9699a79047af04f3a42a84672ef36332939fdf57b" -> "sha256:efaa23b97ba1ac12fa63ee3c5b1d58f621a3b27621a90b72cef8b9ca9ccdcc8b" [label=""];
  "sha256:efaa23b97ba1ac12fa63ee3c5b1d58f621a3b27621a90b72cef8b9ca9ccdcc8b" -> "sha256:cd795ecbe6a91a98b9b8f1551a7b27beb8594517c68dbfbc93a1ade4e930add0" [label=""];
}

