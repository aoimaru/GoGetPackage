[app/sources/155334650.Dockerfile]
digraph {
  "sha256:5ea5bde794c351fa2da4dc7afc93b29ba1c7e491fb36ef04d18e66d46b4441be" [label="docker-image://docker.io/dockerfile/java:latest" shape="ellipse"];
  "sha256:e69fcc5a6d1f471936351ff5b7e94432e14ffe2bd83e2feeda4f558b0a45cf83" [label="mkdir{path=/source}" shape="note"];
  "sha256:417978212bcc9001a7e5157579d5cba4af12a4f66476f44e2bcdc5a6907f80ca" [label="sha256:417978212bcc9001a7e5157579d5cba4af12a4f66476f44e2bcdc5a6907f80ca" shape="plaintext"];
  "sha256:5ea5bde794c351fa2da4dc7afc93b29ba1c7e491fb36ef04d18e66d46b4441be" -> "sha256:e69fcc5a6d1f471936351ff5b7e94432e14ffe2bd83e2feeda4f558b0a45cf83" [label=""];
  "sha256:e69fcc5a6d1f471936351ff5b7e94432e14ffe2bd83e2feeda4f558b0a45cf83" -> "sha256:417978212bcc9001a7e5157579d5cba4af12a4f66476f44e2bcdc5a6907f80ca" [label=""];
}

