[app/sources/252789418.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:1752dd116e6865d6f0dcba5ebffc2afbae7626bbf57b33cd68c8c659cd48ca65" [label="local://context" shape="ellipse"];
  "sha256:119edf57c9cc7f630cfb14646d4b8fb69cd4ab3595b955080ce1b750c7dbd754" [label="copy{src=/, dest=/bespin-mailer}" shape="note"];
  "sha256:7d6e7b072fba4b6253fea7b1da14812631870d27aea488e134fe377c3f4aa23e" [label="mkdir{path=/bespin-mailer}" shape="note"];
  "sha256:70d3c6a2585fad4698e9b91b0c9f4199d3aadffc0da5145bdbedef86a43f9daa" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:ca62a89d506709c18d00787bcd939ede81d5f7bffd915669326ad6a05f38a077" [label="sha256:ca62a89d506709c18d00787bcd939ede81d5f7bffd915669326ad6a05f38a077" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:119edf57c9cc7f630cfb14646d4b8fb69cd4ab3595b955080ce1b750c7dbd754" [label=""];
  "sha256:1752dd116e6865d6f0dcba5ebffc2afbae7626bbf57b33cd68c8c659cd48ca65" -> "sha256:119edf57c9cc7f630cfb14646d4b8fb69cd4ab3595b955080ce1b750c7dbd754" [label=""];
  "sha256:119edf57c9cc7f630cfb14646d4b8fb69cd4ab3595b955080ce1b750c7dbd754" -> "sha256:7d6e7b072fba4b6253fea7b1da14812631870d27aea488e134fe377c3f4aa23e" [label=""];
  "sha256:7d6e7b072fba4b6253fea7b1da14812631870d27aea488e134fe377c3f4aa23e" -> "sha256:70d3c6a2585fad4698e9b91b0c9f4199d3aadffc0da5145bdbedef86a43f9daa" [label=""];
  "sha256:70d3c6a2585fad4698e9b91b0c9f4199d3aadffc0da5145bdbedef86a43f9daa" -> "sha256:ca62a89d506709c18d00787bcd939ede81d5f7bffd915669326ad6a05f38a077" [label=""];
}

