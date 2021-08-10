[app/sources/170765719.Dockerfile]
digraph {
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" [label="docker-image://docker.io/library/golang:1.4" shape="ellipse"];
  "sha256:4f5da6a1dc2f2a65fda6dd2345bd46075c97e2572007a8e25b002feb82f115d1" [label="/bin/sh -c apt-get -qy update &&            rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:67b90362550d37cc704f30535dd185c1eae72b44e6b026d20e1c1babc50a93e0" [label="local://context" shape="ellipse"];
  "sha256:02455136ea2d9eead34c6a4f8a024c0a228b12c58972163aab9bd1a102215eae" [label="copy{src=/, dest=/go/src/github.com/elodina/go_kafka_client}" shape="note"];
  "sha256:e9702f7829cb7d58109d682c4023243b2ab595324b74d6e88f370b1d63bcfe9e" [label="mkdir{path=/go/src/github.com/elodina/go_kafka_client}" shape="note"];
  "sha256:9b63e6da9ee22a311a4a77e219625cc7c0e42c53487c0943854b9a7d4b9531ec" [label="/bin/sh -c go get github.com/tools/godep" shape="box"];
  "sha256:ec29299d39ee18ec6b35a42fc8432b0a207cbdd8c7ad1a500fc892ee48fd86de" [label="/bin/sh -c godep restore" shape="box"];
  "sha256:853e7e40242fa6822907f39d5f9ef301280fad51c8350ab3ade84ee71879ea07" [label="/bin/sh -c go install -v ./mirrormaker" shape="box"];
  "sha256:50cac82acbead63abc191ccf3913b7e556db00842b89cde22796a8e5f47dae53" [label="sha256:50cac82acbead63abc191ccf3913b7e556db00842b89cde22796a8e5f47dae53" shape="plaintext"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" -> "sha256:4f5da6a1dc2f2a65fda6dd2345bd46075c97e2572007a8e25b002feb82f115d1" [label=""];
  "sha256:4f5da6a1dc2f2a65fda6dd2345bd46075c97e2572007a8e25b002feb82f115d1" -> "sha256:02455136ea2d9eead34c6a4f8a024c0a228b12c58972163aab9bd1a102215eae" [label=""];
  "sha256:67b90362550d37cc704f30535dd185c1eae72b44e6b026d20e1c1babc50a93e0" -> "sha256:02455136ea2d9eead34c6a4f8a024c0a228b12c58972163aab9bd1a102215eae" [label=""];
  "sha256:02455136ea2d9eead34c6a4f8a024c0a228b12c58972163aab9bd1a102215eae" -> "sha256:e9702f7829cb7d58109d682c4023243b2ab595324b74d6e88f370b1d63bcfe9e" [label=""];
  "sha256:e9702f7829cb7d58109d682c4023243b2ab595324b74d6e88f370b1d63bcfe9e" -> "sha256:9b63e6da9ee22a311a4a77e219625cc7c0e42c53487c0943854b9a7d4b9531ec" [label=""];
  "sha256:9b63e6da9ee22a311a4a77e219625cc7c0e42c53487c0943854b9a7d4b9531ec" -> "sha256:ec29299d39ee18ec6b35a42fc8432b0a207cbdd8c7ad1a500fc892ee48fd86de" [label=""];
  "sha256:ec29299d39ee18ec6b35a42fc8432b0a207cbdd8c7ad1a500fc892ee48fd86de" -> "sha256:853e7e40242fa6822907f39d5f9ef301280fad51c8350ab3ade84ee71879ea07" [label=""];
  "sha256:853e7e40242fa6822907f39d5f9ef301280fad51c8350ab3ade84ee71879ea07" -> "sha256:50cac82acbead63abc191ccf3913b7e556db00842b89cde22796a8e5f47dae53" [label=""];
}

