[app/sources/450108561.Dockerfile]
digraph {
  "sha256:3eebe0d6c66bb4d994dc9c38df79bbdf67f31ff2c1c9ab32c3cbf0bbe29e9808" [label="docker-image://docker.io/frolvlad/alpine-glibc@sha256:e606f19528de8002f761fe7ad8f8c7d46520c6198b7cede863919fe2a7c052be" shape="ellipse"];
  "sha256:0ac1ca3bb1fdcaccce1e7dc0b0bd37779f73cdfdb38c591569a2c9d55d25cf5e" [label="/bin/sh -c apk update && apk upgrade && apk add bash && apk add tzdata" shape="box"];
  "sha256:92885298f98685e3f2122a00004ffdf3292d069bb15a2e9c9ea250f3ab17da06" [label="/bin/sh -c cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo \"Asia/Shanghai\" > /etc/timezone" shape="box"];
  "sha256:ad59d6f1ff5eda6e3acf3b550e3c92eec48afff1119a628d6a72c1e0c9512670" [label="local://context" shape="ellipse"];
  "sha256:305980e4a28917f95c20d4d7f520bfcb5bc2b8b89306d488bc798b4f5f6ee5de" [label="copy{src=/bin/gravity-linux-amd64, dest=/gravity}" shape="note"];
  "sha256:c8b66bb9502cc746f4d6a65395f9077959c1f6a6bcdab8ccdd26611965231b02" [label="sha256:c8b66bb9502cc746f4d6a65395f9077959c1f6a6bcdab8ccdd26611965231b02" shape="plaintext"];
  "sha256:3eebe0d6c66bb4d994dc9c38df79bbdf67f31ff2c1c9ab32c3cbf0bbe29e9808" -> "sha256:0ac1ca3bb1fdcaccce1e7dc0b0bd37779f73cdfdb38c591569a2c9d55d25cf5e" [label=""];
  "sha256:0ac1ca3bb1fdcaccce1e7dc0b0bd37779f73cdfdb38c591569a2c9d55d25cf5e" -> "sha256:92885298f98685e3f2122a00004ffdf3292d069bb15a2e9c9ea250f3ab17da06" [label=""];
  "sha256:92885298f98685e3f2122a00004ffdf3292d069bb15a2e9c9ea250f3ab17da06" -> "sha256:305980e4a28917f95c20d4d7f520bfcb5bc2b8b89306d488bc798b4f5f6ee5de" [label=""];
  "sha256:ad59d6f1ff5eda6e3acf3b550e3c92eec48afff1119a628d6a72c1e0c9512670" -> "sha256:305980e4a28917f95c20d4d7f520bfcb5bc2b8b89306d488bc798b4f5f6ee5de" [label=""];
  "sha256:305980e4a28917f95c20d4d7f520bfcb5bc2b8b89306d488bc798b4f5f6ee5de" -> "sha256:c8b66bb9502cc746f4d6a65395f9077959c1f6a6bcdab8ccdd26611965231b02" [label=""];
}

