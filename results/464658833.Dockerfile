[app/sources/464658833.Dockerfile]
digraph {
  "sha256:6fcb70604fb8436b9ba3c09b219aaac5206e9a5bcb8132ee7f6ad5d264838407" [label="docker-image://docker.io/continuumio/miniconda:latest" shape="ellipse"];
  "sha256:019b5d830ba5ee8d7a21b9db13ec42b06088ae9634efdd4385b530a23d65c1d1" [label="/bin/sh -c mkdir /mlflow/" shape="box"];
  "sha256:024852a1ac91b947b75d759374a2e29c28c1be1979338d205939ab3ae19c58dc" [label="/bin/sh -c pip install mlflow" shape="box"];
  "sha256:9d76f6c0f546421ab002492e14082085c4e1c446caea70779546b4717c31ff0f" [label="sha256:9d76f6c0f546421ab002492e14082085c4e1c446caea70779546b4717c31ff0f" shape="plaintext"];
  "sha256:6fcb70604fb8436b9ba3c09b219aaac5206e9a5bcb8132ee7f6ad5d264838407" -> "sha256:019b5d830ba5ee8d7a21b9db13ec42b06088ae9634efdd4385b530a23d65c1d1" [label=""];
  "sha256:019b5d830ba5ee8d7a21b9db13ec42b06088ae9634efdd4385b530a23d65c1d1" -> "sha256:024852a1ac91b947b75d759374a2e29c28c1be1979338d205939ab3ae19c58dc" [label=""];
  "sha256:024852a1ac91b947b75d759374a2e29c28c1be1979338d205939ab3ae19c58dc" -> "sha256:9d76f6c0f546421ab002492e14082085c4e1c446caea70779546b4717c31ff0f" [label=""];
}

