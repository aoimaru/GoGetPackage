[app/sources/333877484.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3de700ccf7dce6f422ffc512ac6d637445e1c2ffe6ac5612a846ad4e2f264a4b" [label="local://context" shape="ellipse"];
  "sha256:4ad3292fbc7f9bcd9e29bd113e3b9e76acf9b774813f35fca69324f8a2a4a52a" [label="copy{src=/goregpredict, dest=/}" shape="note"];
  "sha256:278aee1ad1e611759347ef2250202b7b0ce7d4e0f88880bb3d9ef4d1825dc10d" [label="sha256:278aee1ad1e611759347ef2250202b7b0ce7d4e0f88880bb3d9ef4d1825dc10d" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4ad3292fbc7f9bcd9e29bd113e3b9e76acf9b774813f35fca69324f8a2a4a52a" [label=""];
  "sha256:3de700ccf7dce6f422ffc512ac6d637445e1c2ffe6ac5612a846ad4e2f264a4b" -> "sha256:4ad3292fbc7f9bcd9e29bd113e3b9e76acf9b774813f35fca69324f8a2a4a52a" [label=""];
  "sha256:4ad3292fbc7f9bcd9e29bd113e3b9e76acf9b774813f35fca69324f8a2a4a52a" -> "sha256:278aee1ad1e611759347ef2250202b7b0ce7d4e0f88880bb3d9ef4d1825dc10d" [label=""];
}

