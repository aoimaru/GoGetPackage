[app/sources/225793374.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" [label="mkdir{path=/root}" shape="note"];
  "sha256:5ff7d96850f3b7eab627169304b5c9752ecf7c51aa31e37aa28dc008a319a649" [label="local://context" shape="ellipse"];
  "sha256:62190e5cc94f902d203219312835b7bcfbf7e5083c9e0cb3939dfe23dfdd85d5" [label="copy{src=/, dest=/go/src/golang.org/x/tools/cmd/getgo}" shape="note"];
  "sha256:7eac5ddfa3b5f404606a422bbdbac310d746cb22d729e2b6b85f1e20c2c7e7b6" [label="/bin/sh -c ( \t\tcd /go/src/golang.org/x/tools/cmd/getgo \t\t&& go build \t\t&& mv getgo /usr/local/bin/getgo \t)" shape="box"];
  "sha256:eec2828415f34767c84a135838e8c4b5092ffc50975b341d3e431d4a100ade0f" [label="/bin/sh -c rm -rf /go /usr/local/go" shape="box"];
  "sha256:1010e3e2f9853e53fcf3b817d16d8d6fd8eb2a841a4769e050531ec54ee8f372" [label="sha256:1010e3e2f9853e53fcf3b817d16d8d6fd8eb2a841a4769e050531ec54ee8f372" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" [label=""];
  "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" -> "sha256:62190e5cc94f902d203219312835b7bcfbf7e5083c9e0cb3939dfe23dfdd85d5" [label=""];
  "sha256:5ff7d96850f3b7eab627169304b5c9752ecf7c51aa31e37aa28dc008a319a649" -> "sha256:62190e5cc94f902d203219312835b7bcfbf7e5083c9e0cb3939dfe23dfdd85d5" [label=""];
  "sha256:62190e5cc94f902d203219312835b7bcfbf7e5083c9e0cb3939dfe23dfdd85d5" -> "sha256:7eac5ddfa3b5f404606a422bbdbac310d746cb22d729e2b6b85f1e20c2c7e7b6" [label=""];
  "sha256:7eac5ddfa3b5f404606a422bbdbac310d746cb22d729e2b6b85f1e20c2c7e7b6" -> "sha256:eec2828415f34767c84a135838e8c4b5092ffc50975b341d3e431d4a100ade0f" [label=""];
  "sha256:eec2828415f34767c84a135838e8c4b5092ffc50975b341d3e431d4a100ade0f" -> "sha256:1010e3e2f9853e53fcf3b817d16d8d6fd8eb2a841a4769e050531ec54ee8f372" [label=""];
}

