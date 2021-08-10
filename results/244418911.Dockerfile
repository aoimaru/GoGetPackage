[app/sources/244418911.Dockerfile]
digraph {
  "sha256:ca9efc872cef8e62faedd09b52f4569d40b7cceaadaf800043bbbbddf765a55b" [label="docker-image://docker.io/centurylink/ca-certs:latest" shape="ellipse"];
  "sha256:71eea0d6106099830bf6b5412ba6153621eb67304581614155fe886034c64787" [label="local://context" shape="ellipse"];
  "sha256:943b0e179e853bb7fc85ffbe8f5ff1f33314a4181bba367776be644050fe3ff9" [label="copy{src=/release/drone-agent, dest=/bin/}" shape="note"];
  "sha256:04e60f0c71896e2ea6be3bdf99e53df3787860978309070c7cc6c572c8687801" [label="sha256:04e60f0c71896e2ea6be3bdf99e53df3787860978309070c7cc6c572c8687801" shape="plaintext"];
  "sha256:ca9efc872cef8e62faedd09b52f4569d40b7cceaadaf800043bbbbddf765a55b" -> "sha256:943b0e179e853bb7fc85ffbe8f5ff1f33314a4181bba367776be644050fe3ff9" [label=""];
  "sha256:71eea0d6106099830bf6b5412ba6153621eb67304581614155fe886034c64787" -> "sha256:943b0e179e853bb7fc85ffbe8f5ff1f33314a4181bba367776be644050fe3ff9" [label=""];
  "sha256:943b0e179e853bb7fc85ffbe8f5ff1f33314a4181bba367776be644050fe3ff9" -> "sha256:04e60f0c71896e2ea6be3bdf99e53df3787860978309070c7cc6c572c8687801" [label=""];
}

