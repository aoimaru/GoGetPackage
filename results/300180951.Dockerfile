[app/sources/300180951.Dockerfile]
digraph {
  "sha256:f670de9881943482ea96ac620067efe4dea504272eb808bf8ced47f4bf86ca35" [label="docker-image://docker.io/library/openjdk:11-jre-slim" shape="ellipse"];
  "sha256:032f7098710e5c8e7c8a238915fb180ad62477de55a808e07ac0c7cde7f5ffbe" [label="local://context" shape="ellipse"];
  "sha256:68ebfc9ecc0716c1f5499ae818e9afc6e2f1266739f91695ea7a1f437bf277bc" [label="copy{src=/target, dest=/app.jar}" shape="note"];
  "sha256:58038e7529968e8e65a122c9cc9274c4594878c8142612f1363b90e999b2afdd" [label="sha256:58038e7529968e8e65a122c9cc9274c4594878c8142612f1363b90e999b2afdd" shape="plaintext"];
  "sha256:f670de9881943482ea96ac620067efe4dea504272eb808bf8ced47f4bf86ca35" -> "sha256:68ebfc9ecc0716c1f5499ae818e9afc6e2f1266739f91695ea7a1f437bf277bc" [label=""];
  "sha256:032f7098710e5c8e7c8a238915fb180ad62477de55a808e07ac0c7cde7f5ffbe" -> "sha256:68ebfc9ecc0716c1f5499ae818e9afc6e2f1266739f91695ea7a1f437bf277bc" [label=""];
  "sha256:68ebfc9ecc0716c1f5499ae818e9afc6e2f1266739f91695ea7a1f437bf277bc" -> "sha256:58038e7529968e8e65a122c9cc9274c4594878c8142612f1363b90e999b2afdd" [label=""];
}

