[app/sources/345355681.Dockerfile]
digraph {
  "sha256:4b260d25a5da33874eae0eecb2377cb92a90095151e6b76ea816e9d8353ce5d4" [label="docker-image://docker.io/balenalib/armv7hf-debian:jessie-build" shape="ellipse"];
  "sha256:bd9a9973bcf9dfc7c4d260669ed9a478cca3d3f6ba796d558b8ea4149e346b7a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9db91a52128ed6e4138848b136d12d2947810066abb95d7454f8e32224b94de3" [label="sha256:9db91a52128ed6e4138848b136d12d2947810066abb95d7454f8e32224b94de3" shape="plaintext"];
  "sha256:4b260d25a5da33874eae0eecb2377cb92a90095151e6b76ea816e9d8353ce5d4" -> "sha256:bd9a9973bcf9dfc7c4d260669ed9a478cca3d3f6ba796d558b8ea4149e346b7a" [label=""];
  "sha256:bd9a9973bcf9dfc7c4d260669ed9a478cca3d3f6ba796d558b8ea4149e346b7a" -> "sha256:9db91a52128ed6e4138848b136d12d2947810066abb95d7454f8e32224b94de3" [label=""];
}

