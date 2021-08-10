[app/sources/273939301.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:faec321e546652417d48167d09e2a7c3fd30fd0ecec42c9c7db693c18b37458f" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:d25b228fbec0354b9698c763d88e20c135fa93478c835a8287193c66b059d05a" [label="/bin/sh -c apt-get install -y curl" shape="box"];
  "sha256:6d6f1a1badfb76fb09e8f39d87e0689231aaac7eb87087d5bff8672c1957a0a5" [label="sha256:6d6f1a1badfb76fb09e8f39d87e0689231aaac7eb87087d5bff8672c1957a0a5" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:faec321e546652417d48167d09e2a7c3fd30fd0ecec42c9c7db693c18b37458f" [label=""];
  "sha256:faec321e546652417d48167d09e2a7c3fd30fd0ecec42c9c7db693c18b37458f" -> "sha256:d25b228fbec0354b9698c763d88e20c135fa93478c835a8287193c66b059d05a" [label=""];
  "sha256:d25b228fbec0354b9698c763d88e20c135fa93478c835a8287193c66b059d05a" -> "sha256:6d6f1a1badfb76fb09e8f39d87e0689231aaac7eb87087d5bff8672c1957a0a5" [label=""];
}

