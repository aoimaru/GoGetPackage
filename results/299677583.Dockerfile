[app/sources/299677583.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:916784594685e00ef4e3c575c844e2f3b0eb4f1852f0745351a6601d411f4001" [label="local://context" shape="ellipse"];
  "sha256:2cb0f92048c9442042ee2657e7dbd4a8f9806ce4fe6796daa2e17c7f1d1b1d5b" [label="copy{src=/generate-srv, dest=/generate-srv}" shape="note"];
  "sha256:60a7755b104a2034c1ada6cb6a8c0ed0bf4b5f0c8d2057704f7a0e6b19684bac" [label="sha256:60a7755b104a2034c1ada6cb6a8c0ed0bf4b5f0c8d2057704f7a0e6b19684bac" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:2cb0f92048c9442042ee2657e7dbd4a8f9806ce4fe6796daa2e17c7f1d1b1d5b" [label=""];
  "sha256:916784594685e00ef4e3c575c844e2f3b0eb4f1852f0745351a6601d411f4001" -> "sha256:2cb0f92048c9442042ee2657e7dbd4a8f9806ce4fe6796daa2e17c7f1d1b1d5b" [label=""];
  "sha256:2cb0f92048c9442042ee2657e7dbd4a8f9806ce4fe6796daa2e17c7f1d1b1d5b" -> "sha256:60a7755b104a2034c1ada6cb6a8c0ed0bf4b5f0c8d2057704f7a0e6b19684bac" [label=""];
}

