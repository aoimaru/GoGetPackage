[app/sources/209359229.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:8efbfcae368a8fcf65793d43d19f52ef447193fedec707bf4e8d9acdbc1a66c8" [label="/bin/sh -c mkdir -p /var/build/" shape="box"];
  "sha256:7f6bc61550ddcafa684f79c4dac3dfe61186f7253cd9f44ac0dc5fd911e9edc9" [label="mkdir{path=/var/build}" shape="note"];
  "sha256:71c3abd0d61e40c42b3ec39caaa3321a69c474d6713b5d7850123cc08c435870" [label="/bin/sh -c npm install -g bower" shape="box"];
  "sha256:082ead6bc3296e07b80aa8629e4fcc7a9a5345fbc7ee3618f9e1453ffd688a50" [label="sha256:082ead6bc3296e07b80aa8629e4fcc7a9a5345fbc7ee3618f9e1453ffd688a50" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:8efbfcae368a8fcf65793d43d19f52ef447193fedec707bf4e8d9acdbc1a66c8" [label=""];
  "sha256:8efbfcae368a8fcf65793d43d19f52ef447193fedec707bf4e8d9acdbc1a66c8" -> "sha256:7f6bc61550ddcafa684f79c4dac3dfe61186f7253cd9f44ac0dc5fd911e9edc9" [label=""];
  "sha256:7f6bc61550ddcafa684f79c4dac3dfe61186f7253cd9f44ac0dc5fd911e9edc9" -> "sha256:71c3abd0d61e40c42b3ec39caaa3321a69c474d6713b5d7850123cc08c435870" [label=""];
  "sha256:71c3abd0d61e40c42b3ec39caaa3321a69c474d6713b5d7850123cc08c435870" -> "sha256:082ead6bc3296e07b80aa8629e4fcc7a9a5345fbc7ee3618f9e1453ffd688a50" [label=""];
}

