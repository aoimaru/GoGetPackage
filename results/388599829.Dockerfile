[app/sources/388599829.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:7abb2a354cff71827d141566e4ccdd9b914daa083280e07cd8ec537b6f8c2233" [label="local://context" shape="ellipse"];
  "sha256:25d1f21cc2110e85008e49ea0b65f6645dd421cdca54a3fdd2d86a0a73d42861" [label="copy{src=/kubemark, dest=/kubemark}" shape="note"];
  "sha256:807b9dd2ab75fb233be8f9d2a6745847b978978ee0e303dcc45280e4f421bf41" [label="sha256:807b9dd2ab75fb233be8f9d2a6745847b978978ee0e303dcc45280e4f421bf41" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:25d1f21cc2110e85008e49ea0b65f6645dd421cdca54a3fdd2d86a0a73d42861" [label=""];
  "sha256:7abb2a354cff71827d141566e4ccdd9b914daa083280e07cd8ec537b6f8c2233" -> "sha256:25d1f21cc2110e85008e49ea0b65f6645dd421cdca54a3fdd2d86a0a73d42861" [label=""];
  "sha256:25d1f21cc2110e85008e49ea0b65f6645dd421cdca54a3fdd2d86a0a73d42861" -> "sha256:807b9dd2ab75fb233be8f9d2a6745847b978978ee0e303dcc45280e4f421bf41" [label=""];
}

