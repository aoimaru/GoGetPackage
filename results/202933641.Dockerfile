[app/sources/202933641.Dockerfile]
digraph {
  "sha256:d7020b7814dd7985aa3a5782ea35f37370b0c7bcc0b4088d53de93f79bdcd601" [label="docker-image://docker.io/mbisi/domino901-install:latest" shape="ellipse"];
  "sha256:14db5bd43bff41c1b8fd95d8c00af87f91ecd69ad901f6dbae53dbb55d2e1a91" [label="local://context" shape="ellipse"];
  "sha256:9b3c9c2709070990ae271287074f8905bb9d9b71fa7520b56789fe590e081492" [label="copy{src=/sw-repo/serverconfig/*, dest=/local/notesdata/}" shape="note"];
  "sha256:2a839543cbc4e9a0b4fac6acc1b8639ce1d90aafc8b97875af3eddc69d4c166c" [label="/bin/sh -c su notes -c \"cd /local/notesdata && /opt/ibm/domino/bin/server -silent /local/notesdata/playground.pds /local/notesdata/playground.txt\"" shape="box"];
  "sha256:47b03146cd00b30af5bcd4cd7b6ce261f95ca71c162063fa5167ec4fdef5905d" [label="sha256:47b03146cd00b30af5bcd4cd7b6ce261f95ca71c162063fa5167ec4fdef5905d" shape="plaintext"];
  "sha256:d7020b7814dd7985aa3a5782ea35f37370b0c7bcc0b4088d53de93f79bdcd601" -> "sha256:9b3c9c2709070990ae271287074f8905bb9d9b71fa7520b56789fe590e081492" [label=""];
  "sha256:14db5bd43bff41c1b8fd95d8c00af87f91ecd69ad901f6dbae53dbb55d2e1a91" -> "sha256:9b3c9c2709070990ae271287074f8905bb9d9b71fa7520b56789fe590e081492" [label=""];
  "sha256:9b3c9c2709070990ae271287074f8905bb9d9b71fa7520b56789fe590e081492" -> "sha256:2a839543cbc4e9a0b4fac6acc1b8639ce1d90aafc8b97875af3eddc69d4c166c" [label=""];
  "sha256:2a839543cbc4e9a0b4fac6acc1b8639ce1d90aafc8b97875af3eddc69d4c166c" -> "sha256:47b03146cd00b30af5bcd4cd7b6ce261f95ca71c162063fa5167ec4fdef5905d" [label=""];
}

