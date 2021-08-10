[app/sources/365178565.Dockerfile]
digraph {
  "sha256:ad7deede01a64fb8b8e80e93dfe1a8de497e69e1383b650ee24dbad02d075dfb" [label="docker-image://docker.io/library/debian:jessie@sha256:32ad5050caffb2c7e969dac873bce2c370015c2256ff984b70c1c08b3a2816a0" shape="ellipse"];
  "sha256:8756131482c7690d6b1dda9e945f61db89eb880abcbfab92417837bf3bb9552e" [label="/bin/sh -c apt-get update   && apt-get install -y --no-install-recommends     ca-certificates     curl     file     g++     gcc     gdb     libc6-dev     libssl-dev     make   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:90ad22670a6308c95ae03dae862b4deb09ab515c30d9fd85f4010bf3dcd6e788" [label="/bin/sh -c curl -s https://static.rust-lang.org/rustup.sh   | sh -s -- --yes --disable-sudo --revision=$RUST_VERSION   && rustc --version && cargo --version" shape="box"];
  "sha256:42c21c10365bc1e38ffaeeb50bf4702587ed4ea9dc45edddbdec529cf95828ea" [label="/bin/sh -c mkdir -p \"$CARGO_HOME\" \"$SRC_PATH\"" shape="box"];
  "sha256:45915b81f095d195926a9239a52ea2e0cd04f1f245c887781ae76afd19202235" [label="mkdir{path=/src}" shape="note"];
  "sha256:75f5db81d2e187c2326a936f88a4ccef942175c6f974b0381b0534801fa44709" [label="sha256:75f5db81d2e187c2326a936f88a4ccef942175c6f974b0381b0534801fa44709" shape="plaintext"];
  "sha256:ad7deede01a64fb8b8e80e93dfe1a8de497e69e1383b650ee24dbad02d075dfb" -> "sha256:8756131482c7690d6b1dda9e945f61db89eb880abcbfab92417837bf3bb9552e" [label=""];
  "sha256:8756131482c7690d6b1dda9e945f61db89eb880abcbfab92417837bf3bb9552e" -> "sha256:90ad22670a6308c95ae03dae862b4deb09ab515c30d9fd85f4010bf3dcd6e788" [label=""];
  "sha256:90ad22670a6308c95ae03dae862b4deb09ab515c30d9fd85f4010bf3dcd6e788" -> "sha256:42c21c10365bc1e38ffaeeb50bf4702587ed4ea9dc45edddbdec529cf95828ea" [label=""];
  "sha256:42c21c10365bc1e38ffaeeb50bf4702587ed4ea9dc45edddbdec529cf95828ea" -> "sha256:45915b81f095d195926a9239a52ea2e0cd04f1f245c887781ae76afd19202235" [label=""];
  "sha256:45915b81f095d195926a9239a52ea2e0cd04f1f245c887781ae76afd19202235" -> "sha256:75f5db81d2e187c2326a936f88a4ccef942175c6f974b0381b0534801fa44709" [label=""];
}

