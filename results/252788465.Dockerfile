[app/sources/252788465.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:41105786ae7c7ab19cacee615168c871e6a079e2e84fd7a68d0192c2e491b2f6" [label="/bin/sh -c apk add --no-cache curl bash jq" shape="box"];
  "sha256:86e25d287517878d43c35bc91ca0f76975b867d8e46bed7b40a696d3af7a8fd0" [label="local://context" shape="ellipse"];
  "sha256:f316ff865adfd972c2cdceadb994d1367146005e65d17430f0923e21d66cebc4" [label="copy{src=/check, dest=/opt/resource/check}" shape="note"];
  "sha256:cd7a2ec25c58ed2ad889b3344bd1aada581cbe802e83f5442dde13499b473f73" [label="copy{src=/in, dest=/opt/resource/in}" shape="note"];
  "sha256:a36d26c55e8f134b9761186801d77dafb758ea8cac2a57a1e8202e6360895ed5" [label="copy{src=/out, dest=/opt/resource/out}" shape="note"];
  "sha256:49263d05540112cb3ef443cf77e86bcf3b81cc5176b74a34794d4bfa3151886e" [label="/bin/sh -c chmod +x /opt/resource/out /opt/resource/in /opt/resource/check" shape="box"];
  "sha256:f27a1e592518bbeef7f3c81e86206545b5473b4e7ba085e8c8361c0c4f42b063" [label="sha256:f27a1e592518bbeef7f3c81e86206545b5473b4e7ba085e8c8361c0c4f42b063" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:41105786ae7c7ab19cacee615168c871e6a079e2e84fd7a68d0192c2e491b2f6" [label=""];
  "sha256:41105786ae7c7ab19cacee615168c871e6a079e2e84fd7a68d0192c2e491b2f6" -> "sha256:f316ff865adfd972c2cdceadb994d1367146005e65d17430f0923e21d66cebc4" [label=""];
  "sha256:86e25d287517878d43c35bc91ca0f76975b867d8e46bed7b40a696d3af7a8fd0" -> "sha256:f316ff865adfd972c2cdceadb994d1367146005e65d17430f0923e21d66cebc4" [label=""];
  "sha256:f316ff865adfd972c2cdceadb994d1367146005e65d17430f0923e21d66cebc4" -> "sha256:cd7a2ec25c58ed2ad889b3344bd1aada581cbe802e83f5442dde13499b473f73" [label=""];
  "sha256:86e25d287517878d43c35bc91ca0f76975b867d8e46bed7b40a696d3af7a8fd0" -> "sha256:cd7a2ec25c58ed2ad889b3344bd1aada581cbe802e83f5442dde13499b473f73" [label=""];
  "sha256:cd7a2ec25c58ed2ad889b3344bd1aada581cbe802e83f5442dde13499b473f73" -> "sha256:a36d26c55e8f134b9761186801d77dafb758ea8cac2a57a1e8202e6360895ed5" [label=""];
  "sha256:86e25d287517878d43c35bc91ca0f76975b867d8e46bed7b40a696d3af7a8fd0" -> "sha256:a36d26c55e8f134b9761186801d77dafb758ea8cac2a57a1e8202e6360895ed5" [label=""];
  "sha256:a36d26c55e8f134b9761186801d77dafb758ea8cac2a57a1e8202e6360895ed5" -> "sha256:49263d05540112cb3ef443cf77e86bcf3b81cc5176b74a34794d4bfa3151886e" [label=""];
  "sha256:49263d05540112cb3ef443cf77e86bcf3b81cc5176b74a34794d4bfa3151886e" -> "sha256:f27a1e592518bbeef7f3c81e86206545b5473b4e7ba085e8c8361c0c4f42b063" [label=""];
}

