[app/sources/280547408.Dockerfile]
digraph {
  "sha256:b0bf0b07268c4067f12e548b350c4bea4e99a2dac77bf60352bcf83264d6e33b" [label="local://context" shape="ellipse"];
  "sha256:ae0ef7e50789c2b26f9e4c575a6de89f29908e8476ed2d5301d0722a1d33a1f1" [label="copy{src=/explorer, dest=/explorer}" shape="note"];
  "sha256:65a23a1d2f5d1ee1b82a19e4b4f0ddd51b2c65f51b6918b0353b3ec9e93dbac6" [label="copy{src=/README.md, dest=/README.md}" shape="note"];
  "sha256:73dc1a7ef7bbeee68860dd1a57497a5279872f9e81cfd64fe1d35c53938bc372" [label="sha256:73dc1a7ef7bbeee68860dd1a57497a5279872f9e81cfd64fe1d35c53938bc372" shape="plaintext"];
  "sha256:b0bf0b07268c4067f12e548b350c4bea4e99a2dac77bf60352bcf83264d6e33b" -> "sha256:ae0ef7e50789c2b26f9e4c575a6de89f29908e8476ed2d5301d0722a1d33a1f1" [label=""];
  "sha256:ae0ef7e50789c2b26f9e4c575a6de89f29908e8476ed2d5301d0722a1d33a1f1" -> "sha256:65a23a1d2f5d1ee1b82a19e4b4f0ddd51b2c65f51b6918b0353b3ec9e93dbac6" [label=""];
  "sha256:b0bf0b07268c4067f12e548b350c4bea4e99a2dac77bf60352bcf83264d6e33b" -> "sha256:65a23a1d2f5d1ee1b82a19e4b4f0ddd51b2c65f51b6918b0353b3ec9e93dbac6" [label=""];
  "sha256:65a23a1d2f5d1ee1b82a19e4b4f0ddd51b2c65f51b6918b0353b3ec9e93dbac6" -> "sha256:73dc1a7ef7bbeee68860dd1a57497a5279872f9e81cfd64fe1d35c53938bc372" [label=""];
}

