[app/sources/252765753.Dockerfile]
digraph {
  "sha256:3c3ac0c1756527c21834be213833cbf12e0a6eb4f93a3bfd27d353889cbb3d4c" [label="docker-image://docker.io/2chat/ubuntu:xenial" shape="ellipse"];
  "sha256:d3506369f32ea53a891fbca6f5333123c4e544b194fed3d5e09f7597e5a08259" [label="/bin/sh -c apt-get install -y --no-install-recommends stuntman-server && apt-get install -y --no-install-recommends stuntman-client && apt-get clean -y && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:353e65247cd4dc6031b78924ca93384d53c66e847c0fd3f556cdf9c154d8230b" [label="sha256:353e65247cd4dc6031b78924ca93384d53c66e847c0fd3f556cdf9c154d8230b" shape="plaintext"];
  "sha256:3c3ac0c1756527c21834be213833cbf12e0a6eb4f93a3bfd27d353889cbb3d4c" -> "sha256:d3506369f32ea53a891fbca6f5333123c4e544b194fed3d5e09f7597e5a08259" [label=""];
  "sha256:d3506369f32ea53a891fbca6f5333123c4e544b194fed3d5e09f7597e5a08259" -> "sha256:353e65247cd4dc6031b78924ca93384d53c66e847c0fd3f556cdf9c154d8230b" [label=""];
}

