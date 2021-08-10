[app/sources/325599770.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:8fd82d0af4cd12f8f348ab9949b67ebc77d014266d52573055fc8e2118df0c9b" [label="local://context" shape="ellipse"];
  "sha256:cbcd8a73b2b0ee177c646a5c6088109979eb497b02a8b734c66ae67dd22b35a1" [label="copy{src=/, dest=/build-context}" shape="note"];
  "sha256:0d479e15414a5310640775defe79585742f73d04a8b6c3bfccc2a2beee0c379b" [label="mkdir{path=/build-context}" shape="note"];
  "sha256:46a6afa960bb57de2593ce2840447427cd8c4fcb46405a9145383df09a43128e" [label="sha256:46a6afa960bb57de2593ce2840447427cd8c4fcb46405a9145383df09a43128e" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:cbcd8a73b2b0ee177c646a5c6088109979eb497b02a8b734c66ae67dd22b35a1" [label=""];
  "sha256:8fd82d0af4cd12f8f348ab9949b67ebc77d014266d52573055fc8e2118df0c9b" -> "sha256:cbcd8a73b2b0ee177c646a5c6088109979eb497b02a8b734c66ae67dd22b35a1" [label=""];
  "sha256:cbcd8a73b2b0ee177c646a5c6088109979eb497b02a8b734c66ae67dd22b35a1" -> "sha256:0d479e15414a5310640775defe79585742f73d04a8b6c3bfccc2a2beee0c379b" [label=""];
  "sha256:0d479e15414a5310640775defe79585742f73d04a8b6c3bfccc2a2beee0c379b" -> "sha256:46a6afa960bb57de2593ce2840447427cd8c4fcb46405a9145383df09a43128e" [label=""];
}

