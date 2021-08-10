[app/sources/473623853.Dockerfile]
digraph {
  "sha256:6deb26f03955e867146fc35d7eb4a6a900f737ea2a5a3096c43a19c7c8805fc8" [label="docker-image://docker.io/library/python:3.6-slim" shape="ellipse"];
  "sha256:324736090ca8bef79d6aaefb10909cd1131bd4af6e487099928ec8bf70782a1c" [label="/bin/sh -c python -m pip install --upgrade pip" shape="box"];
  "sha256:4dd65fc1fb04d39f23bc1a883bf577d8dc3b070fac5e81fa38cb8ce00e446b61" [label="/bin/sh -c pip install grpcio==${GRPC_PYTHON_VERSION} grpcio-tools==${GRPC_PYTHON_VERSION}" shape="box"];
  "sha256:ba28baa0f0640c85b6de94b634f509537cb9846d69e18fd9584c55d9d10fa0b8" [label="sha256:ba28baa0f0640c85b6de94b634f509537cb9846d69e18fd9584c55d9d10fa0b8" shape="plaintext"];
  "sha256:6deb26f03955e867146fc35d7eb4a6a900f737ea2a5a3096c43a19c7c8805fc8" -> "sha256:324736090ca8bef79d6aaefb10909cd1131bd4af6e487099928ec8bf70782a1c" [label=""];
  "sha256:324736090ca8bef79d6aaefb10909cd1131bd4af6e487099928ec8bf70782a1c" -> "sha256:4dd65fc1fb04d39f23bc1a883bf577d8dc3b070fac5e81fa38cb8ce00e446b61" [label=""];
  "sha256:4dd65fc1fb04d39f23bc1a883bf577d8dc3b070fac5e81fa38cb8ce00e446b61" -> "sha256:ba28baa0f0640c85b6de94b634f509537cb9846d69e18fd9584c55d9d10fa0b8" [label=""];
}

