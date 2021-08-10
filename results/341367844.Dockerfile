[app/sources/341367844.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:8b03e6c53fc52f0ea5673c4c90f332413c2a9608b41ee365b9088863ba83b3c7" [label="local://context" shape="ellipse"];
  "sha256:ff780c18ea948fece6c186a29d9d8a4444dc3a79cd67fadd518241991b5cb710" [label="copy{src=/*.pod, dest=/root/}" shape="note"];
  "sha256:dbb5dd9cfa232642e04329a94d26ee487a723e5ddce35e8c30113717b4b50a19" [label="sha256:dbb5dd9cfa232642e04329a94d26ee487a723e5ddce35e8c30113717b4b50a19" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:ff780c18ea948fece6c186a29d9d8a4444dc3a79cd67fadd518241991b5cb710" [label=""];
  "sha256:8b03e6c53fc52f0ea5673c4c90f332413c2a9608b41ee365b9088863ba83b3c7" -> "sha256:ff780c18ea948fece6c186a29d9d8a4444dc3a79cd67fadd518241991b5cb710" [label=""];
  "sha256:ff780c18ea948fece6c186a29d9d8a4444dc3a79cd67fadd518241991b5cb710" -> "sha256:dbb5dd9cfa232642e04329a94d26ee487a723e5ddce35e8c30113717b4b50a19" [label=""];
}

