[app/sources/141699156.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:0b520b4d0c5cb4f71eb6779322923912f7da9a8c9a98378659a07f020edab7cf" [label="local://context" shape="ellipse"];
  "sha256:bdb3b6425b9a6e399888893e3f71b12ec15568ac3af7922b2231988d75e492c0" [label="copy{src=/manager, dest=/usr/bin/}" shape="note"];
  "sha256:4cd0313cd7864facf610e4511c2a24f61377aff1df92d8d9c8a046740e5189cc" [label="sha256:4cd0313cd7864facf610e4511c2a24f61377aff1df92d8d9c8a046740e5189cc" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:bdb3b6425b9a6e399888893e3f71b12ec15568ac3af7922b2231988d75e492c0" [label=""];
  "sha256:0b520b4d0c5cb4f71eb6779322923912f7da9a8c9a98378659a07f020edab7cf" -> "sha256:bdb3b6425b9a6e399888893e3f71b12ec15568ac3af7922b2231988d75e492c0" [label=""];
  "sha256:bdb3b6425b9a6e399888893e3f71b12ec15568ac3af7922b2231988d75e492c0" -> "sha256:4cd0313cd7864facf610e4511c2a24f61377aff1df92d8d9c8a046740e5189cc" [label=""];
}

