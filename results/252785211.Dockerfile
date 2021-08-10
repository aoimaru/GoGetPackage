[app/sources/252785211.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:63b8f19821e97bb82ba037877bb9284309ec6635d86c3d1afd7de4b99e4a8bdc" [label="local://context" shape="ellipse"];
  "sha256:26ff8055188c627fb17136fff00ae5190ea0cd072fcc02334704b486ad2d3c37" [label="copy{src=/, dest=/go/src/github.com/cogolabs/transcend}" shape="note"];
  "sha256:ee9ef52ca9c302ba1e9328a15aa1505d08d87bf46f488d29bb6083f121928b6b" [label="/bin/sh -c go get -x github.com/cogolabs/transcend" shape="box"];
  "sha256:32c9b828dc3079ed7a5aadc63d8cc738fe2c2441f14ef926445aa3f1ad79cecd" [label="sha256:32c9b828dc3079ed7a5aadc63d8cc738fe2c2441f14ef926445aa3f1ad79cecd" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:26ff8055188c627fb17136fff00ae5190ea0cd072fcc02334704b486ad2d3c37" [label=""];
  "sha256:63b8f19821e97bb82ba037877bb9284309ec6635d86c3d1afd7de4b99e4a8bdc" -> "sha256:26ff8055188c627fb17136fff00ae5190ea0cd072fcc02334704b486ad2d3c37" [label=""];
  "sha256:26ff8055188c627fb17136fff00ae5190ea0cd072fcc02334704b486ad2d3c37" -> "sha256:ee9ef52ca9c302ba1e9328a15aa1505d08d87bf46f488d29bb6083f121928b6b" [label=""];
  "sha256:ee9ef52ca9c302ba1e9328a15aa1505d08d87bf46f488d29bb6083f121928b6b" -> "sha256:32c9b828dc3079ed7a5aadc63d8cc738fe2c2441f14ef926445aa3f1ad79cecd" [label=""];
}

