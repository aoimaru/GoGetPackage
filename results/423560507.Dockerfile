[app/sources/423560507.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:71fe6433b4b0f7b699c5dd74603c0c4dfec1dd0d62525d9f8d7f86885b20f789" [label="local://context" shape="ellipse"];
  "sha256:87f3d1abc84d0907af5315eab0f9ce83e9a9db66ee2385bda20ccc1a1259ff2c" [label="copy{src=/kube-sample-apiserver, dest=/}" shape="note"];
  "sha256:0f1ffa470ae53511640687c07a9355aa9287799d7a34a510c65d0bcd04774e92" [label="sha256:0f1ffa470ae53511640687c07a9355aa9287799d7a34a510c65d0bcd04774e92" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:87f3d1abc84d0907af5315eab0f9ce83e9a9db66ee2385bda20ccc1a1259ff2c" [label=""];
  "sha256:71fe6433b4b0f7b699c5dd74603c0c4dfec1dd0d62525d9f8d7f86885b20f789" -> "sha256:87f3d1abc84d0907af5315eab0f9ce83e9a9db66ee2385bda20ccc1a1259ff2c" [label=""];
  "sha256:87f3d1abc84d0907af5315eab0f9ce83e9a9db66ee2385bda20ccc1a1259ff2c" -> "sha256:0f1ffa470ae53511640687c07a9355aa9287799d7a34a510c65d0bcd04774e92" [label=""];
}

