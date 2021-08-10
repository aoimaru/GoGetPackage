[app/sources/259882634.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:b98069af60347648a745a2b370be813f1760fceba425910af37d33f4cf651327" [label="local://context" shape="ellipse"];
  "sha256:80434161a1bdd42807159e828c1d86aeaacbba3b7adf0bd2ab8936d380626c6c" [label="copy{src=/cloud-zipkin-1.0-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:a6b4f42c8991389e7ae11eb04b0e464bde01f5891fdf0046663f75304660ee8f" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:ef022bdf509d6711a5a76f1886c8fbe38c7a04685140c885e9f21f3f1a930aa5" [label="sha256:ef022bdf509d6711a5a76f1886c8fbe38c7a04685140c885e9f21f3f1a930aa5" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:80434161a1bdd42807159e828c1d86aeaacbba3b7adf0bd2ab8936d380626c6c" [label=""];
  "sha256:b98069af60347648a745a2b370be813f1760fceba425910af37d33f4cf651327" -> "sha256:80434161a1bdd42807159e828c1d86aeaacbba3b7adf0bd2ab8936d380626c6c" [label=""];
  "sha256:80434161a1bdd42807159e828c1d86aeaacbba3b7adf0bd2ab8936d380626c6c" -> "sha256:a6b4f42c8991389e7ae11eb04b0e464bde01f5891fdf0046663f75304660ee8f" [label=""];
  "sha256:a6b4f42c8991389e7ae11eb04b0e464bde01f5891fdf0046663f75304660ee8f" -> "sha256:ef022bdf509d6711a5a76f1886c8fbe38c7a04685140c885e9f21f3f1a930aa5" [label=""];
}

