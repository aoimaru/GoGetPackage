[app/sources/345356888.Dockerfile]
digraph {
  "sha256:b6b1668988980e35b16f294c06fbae60f91a61a8f347fe944de7ef32d5b5fd41" [label="docker-image://docker.io/balenalib/i386-debian:jessie-run" shape="ellipse"];
  "sha256:43e7ec46bea15e849a9fcaadecfc2060e5dcf1cc84a677371f219fb6c56c7658" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9b94cee87fb8bb8ff41f6e67a0f3d42afb9ce8baaca2b48ad2465919173c7c0f" [label="sha256:9b94cee87fb8bb8ff41f6e67a0f3d42afb9ce8baaca2b48ad2465919173c7c0f" shape="plaintext"];
  "sha256:b6b1668988980e35b16f294c06fbae60f91a61a8f347fe944de7ef32d5b5fd41" -> "sha256:43e7ec46bea15e849a9fcaadecfc2060e5dcf1cc84a677371f219fb6c56c7658" [label=""];
  "sha256:43e7ec46bea15e849a9fcaadecfc2060e5dcf1cc84a677371f219fb6c56c7658" -> "sha256:9b94cee87fb8bb8ff41f6e67a0f3d42afb9ce8baaca2b48ad2465919173c7c0f" [label=""];
}

