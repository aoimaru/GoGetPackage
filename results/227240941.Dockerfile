[app/sources/227240941.Dockerfile]
digraph {
  "sha256:5aaad2f3d2ce6852dc1f7e5c6806cc6ef29a5405aeb50441e0fb845ce3cb65b7" [label="docker-image://docker.io/library/busybox:1.27.2-glibc" shape="ellipse"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:d6c5602acdc30afb057c25b0975c5c50d04a41fa0040fa6ae6f67c1d2780ec19" [label="local://context" shape="ellipse"];
  "sha256:c89c7b710b25294e5c42d4e43ba8d36d75806def347ef47a5180081242feebd7" [label="copy{src=/, dest=/src/github.com/BonnierNews/logstash_exporter/}" shape="note"];
  "sha256:732b13046a88d6810b57e21775467ba0cafc57e4094c01c4139248d628454ae4" [label="/bin/sh -c curl -fsSL -o /usr/local/bin/dep https://github.com/golang/dep/releases/download/v0.3.2/dep-linux-amd64 &&         chmod +x /usr/local/bin/dep &&         go get -u github.com/BonnierNews/logstash_exporter &&         cd $GOPATH/src/github.com/BonnierNews/logstash_exporter &&         dep ensure &&         make" shape="box"];
  "sha256:23a57c3fe80f8aeb1c5a64d968cd5470306912cd72506aa56b7e5b88bb704427" [label="copy{src=/go/src/github.com/BonnierNews/logstash_exporter/logstash_exporter, dest=/}" shape="note"];
  "sha256:73769b8532763e9ad8261509b89bb8bf9d0dc7d398052574519d036aaa946548" [label="sha256:73769b8532763e9ad8261509b89bb8bf9d0dc7d398052574519d036aaa946548" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:c89c7b710b25294e5c42d4e43ba8d36d75806def347ef47a5180081242feebd7" [label=""];
  "sha256:d6c5602acdc30afb057c25b0975c5c50d04a41fa0040fa6ae6f67c1d2780ec19" -> "sha256:c89c7b710b25294e5c42d4e43ba8d36d75806def347ef47a5180081242feebd7" [label=""];
  "sha256:c89c7b710b25294e5c42d4e43ba8d36d75806def347ef47a5180081242feebd7" -> "sha256:732b13046a88d6810b57e21775467ba0cafc57e4094c01c4139248d628454ae4" [label=""];
  "sha256:5aaad2f3d2ce6852dc1f7e5c6806cc6ef29a5405aeb50441e0fb845ce3cb65b7" -> "sha256:23a57c3fe80f8aeb1c5a64d968cd5470306912cd72506aa56b7e5b88bb704427" [label=""];
  "sha256:732b13046a88d6810b57e21775467ba0cafc57e4094c01c4139248d628454ae4" -> "sha256:23a57c3fe80f8aeb1c5a64d968cd5470306912cd72506aa56b7e5b88bb704427" [label=""];
  "sha256:23a57c3fe80f8aeb1c5a64d968cd5470306912cd72506aa56b7e5b88bb704427" -> "sha256:73769b8532763e9ad8261509b89bb8bf9d0dc7d398052574519d036aaa946548" [label=""];
}

