[app/sources/273087378.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:e40a740deaa791abc5d2bd9471f5069c1ef9ecde7e25e2a2010c0ef9198b9a73" [label="local://context" shape="ellipse"];
  "sha256:269ee60a9f0f3588e3c93c53bf29b3e451a900ab5c2422feea741881d0599b4a" [label="copy{src=/httpserver, dest=/}" shape="note"];
  "sha256:a3c30f287e2bc94c5c0ebc0441feee6181a6bedf7d355a6e5f154a2bd344cc55" [label="sha256:a3c30f287e2bc94c5c0ebc0441feee6181a6bedf7d355a6e5f154a2bd344cc55" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:269ee60a9f0f3588e3c93c53bf29b3e451a900ab5c2422feea741881d0599b4a" [label=""];
  "sha256:e40a740deaa791abc5d2bd9471f5069c1ef9ecde7e25e2a2010c0ef9198b9a73" -> "sha256:269ee60a9f0f3588e3c93c53bf29b3e451a900ab5c2422feea741881d0599b4a" [label=""];
  "sha256:269ee60a9f0f3588e3c93c53bf29b3e451a900ab5c2422feea741881d0599b4a" -> "sha256:a3c30f287e2bc94c5c0ebc0441feee6181a6bedf7d355a6e5f154a2bd344cc55" [label=""];
}

