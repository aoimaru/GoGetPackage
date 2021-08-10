[app/sources/218632722.Dockerfile]
digraph {
  "sha256:418cb7efea98851071b32ac15e08bfef7e88ddde8765bc8eb39726fbb0885211" [label="local://context" shape="ellipse"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:6bb6f6e3c87f6b58af3e2b92985bac7fa767ed2169260007408036269c7bd09d" [label="/bin/sh -c mkdir -p /go/src/github.com/etcinit/phabulous" shape="box"];
  "sha256:38cf911f5877d73ef56c5b31263aa7470e8f14717389f57c4f83d0fa86b7423c" [label="mkdir{path=/go/src/github.com/etcinit/phabulous}" shape="note"];
  "sha256:e4cc51fc1dd5999c2bea6d4b7b1617ed600795c4a75c92dda56763905f13070b" [label="copy{src=/app, dest=/go/src/github.com/etcinit/phabulous/app}" shape="note"];
  "sha256:df6033e92fcce115749d34a2d3164f8ed52710befae930e875ea67833a8a7790" [label="copy{src=/cmd, dest=/go/src/github.com/etcinit/phabulous/cmd}" shape="note"];
  "sha256:e5f7390ff40a1ec9d2241430b58d25af6ce97af2dde8b429b8cf76851133735b" [label="copy{src=/config, dest=/go/src/github.com/etcinit/phabulous/config}" shape="note"];
  "sha256:8e456f7eedbac50a52c1b0de9e7357cc3e1d609a5cb97d49f1f219740a703fe0" [label="copy{src=/LICENSE, dest=/go/src/github.com/etcinit/phabulous/}" shape="note"];
  "sha256:fe3a76462a15eac3ada4116871034349fea57599dfa28224a05b159c7c5b4fa8" [label="/bin/sh -c go get -v -d github.com/etcinit/phabulous/cmd/phabulous   && go install github.com/etcinit/phabulous/cmd/phabulous" shape="box"];
  "sha256:66f23c08c20b6b540c3934831e0ed3b14bb8618153424d3aae3f553980e5c971" [label="sha256:66f23c08c20b6b540c3934831e0ed3b14bb8618153424d3aae3f553980e5c971" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:6bb6f6e3c87f6b58af3e2b92985bac7fa767ed2169260007408036269c7bd09d" [label=""];
  "sha256:6bb6f6e3c87f6b58af3e2b92985bac7fa767ed2169260007408036269c7bd09d" -> "sha256:38cf911f5877d73ef56c5b31263aa7470e8f14717389f57c4f83d0fa86b7423c" [label=""];
  "sha256:38cf911f5877d73ef56c5b31263aa7470e8f14717389f57c4f83d0fa86b7423c" -> "sha256:e4cc51fc1dd5999c2bea6d4b7b1617ed600795c4a75c92dda56763905f13070b" [label=""];
  "sha256:418cb7efea98851071b32ac15e08bfef7e88ddde8765bc8eb39726fbb0885211" -> "sha256:e4cc51fc1dd5999c2bea6d4b7b1617ed600795c4a75c92dda56763905f13070b" [label=""];
  "sha256:e4cc51fc1dd5999c2bea6d4b7b1617ed600795c4a75c92dda56763905f13070b" -> "sha256:df6033e92fcce115749d34a2d3164f8ed52710befae930e875ea67833a8a7790" [label=""];
  "sha256:418cb7efea98851071b32ac15e08bfef7e88ddde8765bc8eb39726fbb0885211" -> "sha256:df6033e92fcce115749d34a2d3164f8ed52710befae930e875ea67833a8a7790" [label=""];
  "sha256:df6033e92fcce115749d34a2d3164f8ed52710befae930e875ea67833a8a7790" -> "sha256:e5f7390ff40a1ec9d2241430b58d25af6ce97af2dde8b429b8cf76851133735b" [label=""];
  "sha256:418cb7efea98851071b32ac15e08bfef7e88ddde8765bc8eb39726fbb0885211" -> "sha256:e5f7390ff40a1ec9d2241430b58d25af6ce97af2dde8b429b8cf76851133735b" [label=""];
  "sha256:e5f7390ff40a1ec9d2241430b58d25af6ce97af2dde8b429b8cf76851133735b" -> "sha256:8e456f7eedbac50a52c1b0de9e7357cc3e1d609a5cb97d49f1f219740a703fe0" [label=""];
  "sha256:418cb7efea98851071b32ac15e08bfef7e88ddde8765bc8eb39726fbb0885211" -> "sha256:8e456f7eedbac50a52c1b0de9e7357cc3e1d609a5cb97d49f1f219740a703fe0" [label=""];
  "sha256:8e456f7eedbac50a52c1b0de9e7357cc3e1d609a5cb97d49f1f219740a703fe0" -> "sha256:fe3a76462a15eac3ada4116871034349fea57599dfa28224a05b159c7c5b4fa8" [label=""];
  "sha256:fe3a76462a15eac3ada4116871034349fea57599dfa28224a05b159c7c5b4fa8" -> "sha256:66f23c08c20b6b540c3934831e0ed3b14bb8618153424d3aae3f553980e5c971" [label=""];
}

