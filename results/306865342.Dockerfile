[app/sources/306865342.Dockerfile]
digraph {
  "sha256:7e6c2aec6f14428a8fcdba8e4b4c85f3dc5c12dbc4c422775ebc104df7c1771e" [label="local://context" shape="ellipse"];
  "sha256:1b0c8b96ec5298dbcf4a162b1c9fe553bdbd9feaa4495803660cb2c5b69c6239" [label="copy{src=/eurekamirror, dest=/usr/local/bin/eurekamirror}" shape="note"];
  "sha256:033000afe519397b79185da5bbeb2a57c68ddba225a0b61607caa0ac2b7b31e4" [label="sha256:033000afe519397b79185da5bbeb2a57c68ddba225a0b61607caa0ac2b7b31e4" shape="plaintext"];
  "sha256:7e6c2aec6f14428a8fcdba8e4b4c85f3dc5c12dbc4c422775ebc104df7c1771e" -> "sha256:1b0c8b96ec5298dbcf4a162b1c9fe553bdbd9feaa4495803660cb2c5b69c6239" [label=""];
  "sha256:1b0c8b96ec5298dbcf4a162b1c9fe553bdbd9feaa4495803660cb2c5b69c6239" -> "sha256:033000afe519397b79185da5bbeb2a57c68ddba225a0b61607caa0ac2b7b31e4" [label=""];
}

