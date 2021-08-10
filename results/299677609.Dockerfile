[app/sources/299677609.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:162cb4081c1f1640ed88b8c2e973064a304be9ebee94035a89e199fee67df44f" [label="local://context" shape="ellipse"];
  "sha256:9d4fdc4cad9336dd09e3f4342d58d3a2663eea4ae3184c5e086f1176e4e111b6" [label="copy{src=/generate-srv, dest=/generate-srv}" shape="note"];
  "sha256:b1ff164190a7bc1c106bab3990eec29b5b3a1bf5aa6e9910c14e7f8dc6a646fd" [label="sha256:b1ff164190a7bc1c106bab3990eec29b5b3a1bf5aa6e9910c14e7f8dc6a646fd" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:9d4fdc4cad9336dd09e3f4342d58d3a2663eea4ae3184c5e086f1176e4e111b6" [label=""];
  "sha256:162cb4081c1f1640ed88b8c2e973064a304be9ebee94035a89e199fee67df44f" -> "sha256:9d4fdc4cad9336dd09e3f4342d58d3a2663eea4ae3184c5e086f1176e4e111b6" [label=""];
  "sha256:9d4fdc4cad9336dd09e3f4342d58d3a2663eea4ae3184c5e086f1176e4e111b6" -> "sha256:b1ff164190a7bc1c106bab3990eec29b5b3a1bf5aa6e9910c14e7f8dc6a646fd" [label=""];
}

