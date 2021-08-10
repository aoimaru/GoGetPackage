[app/sources/345356387.Dockerfile]
digraph {
  "sha256:86b35d0009b675aad62d6f5a141b588948e2803cb6355f5599d0aa463cfac924" [label="docker-image://docker.io/balenalib/aarch64-debian:jessie-build@sha256:ea218a323b9ab655ba4ff423b37ce2b8745cab076433c0434b8d23e642ac151f" shape="ellipse"];
  "sha256:171ea291778088a04c513decdc309a6b82897c755b658add58c732c4a07148e7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6deb2b1d11f11cef29c876d3a9f6a8e857235a4f8999e1a4e0b6829b0c9bf5b9" [label="sha256:6deb2b1d11f11cef29c876d3a9f6a8e857235a4f8999e1a4e0b6829b0c9bf5b9" shape="plaintext"];
  "sha256:86b35d0009b675aad62d6f5a141b588948e2803cb6355f5599d0aa463cfac924" -> "sha256:171ea291778088a04c513decdc309a6b82897c755b658add58c732c4a07148e7" [label=""];
  "sha256:171ea291778088a04c513decdc309a6b82897c755b658add58c732c4a07148e7" -> "sha256:6deb2b1d11f11cef29c876d3a9f6a8e857235a4f8999e1a4e0b6829b0c9bf5b9" [label=""];
}

