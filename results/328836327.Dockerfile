[app/sources/328836327.Dockerfile]
digraph {
  "sha256:8872413345b1a910e955a75639b2f00a43c705319bd9fa12c28ab13430a3bbc2" [label="local://context" shape="ellipse"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:8046227af94b6eb82133e56fd45c7480e65b0fab92e91ac588c9d213f5fbd0b7" [label="copy{src=/, dest=/foo/}" shape="note"];
  "sha256:f9abd3cdc8404b6d4d0c458b291393bae0f4f350ed1a3d29eeab9f892666513b" [label="sha256:f9abd3cdc8404b6d4d0c458b291393bae0f4f350ed1a3d29eeab9f892666513b" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:8046227af94b6eb82133e56fd45c7480e65b0fab92e91ac588c9d213f5fbd0b7" [label=""];
  "sha256:8872413345b1a910e955a75639b2f00a43c705319bd9fa12c28ab13430a3bbc2" -> "sha256:8046227af94b6eb82133e56fd45c7480e65b0fab92e91ac588c9d213f5fbd0b7" [label=""];
  "sha256:8046227af94b6eb82133e56fd45c7480e65b0fab92e91ac588c9d213f5fbd0b7" -> "sha256:f9abd3cdc8404b6d4d0c458b291393bae0f4f350ed1a3d29eeab9f892666513b" [label=""];
}

