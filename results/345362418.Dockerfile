[app/sources/345362418.Dockerfile]
digraph {
  "sha256:24b4415583ceae39468ffa1b241c1bb51fd8a06927c43cf7a2a658ded7d7d123" [label="docker-image://docker.io/balenalib/aarch64-ubuntu:bionic-build" shape="ellipse"];
  "sha256:85bed9d722d9311509dae69d9d48153376f73f9ad2139e7dc5731de0d46ba22b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a846be340bb18473c747f45506f69196f00d26986e1d2ce36f5b9f838fb97115" [label="sha256:a846be340bb18473c747f45506f69196f00d26986e1d2ce36f5b9f838fb97115" shape="plaintext"];
  "sha256:24b4415583ceae39468ffa1b241c1bb51fd8a06927c43cf7a2a658ded7d7d123" -> "sha256:85bed9d722d9311509dae69d9d48153376f73f9ad2139e7dc5731de0d46ba22b" [label=""];
  "sha256:85bed9d722d9311509dae69d9d48153376f73f9ad2139e7dc5731de0d46ba22b" -> "sha256:a846be340bb18473c747f45506f69196f00d26986e1d2ce36f5b9f838fb97115" [label=""];
}

