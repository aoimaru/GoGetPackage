[app/sources/395127761.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:4b1e20b4d585c98bcd158635a7e90721c22c14f4870f57b9b192ffee4f14067b" [label="/bin/sh -c apt-get update &&     apt-get install --yes               $BUILD_PACKAGES               python-pip &&     pip install htseq==$PACKAGE_VERSION &&     apt clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:879e60d3825dfa1f974690d606f555027e132fe06e49a6d947af251ba25d9d42" [label="sha256:879e60d3825dfa1f974690d606f555027e132fe06e49a6d947af251ba25d9d42" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:4b1e20b4d585c98bcd158635a7e90721c22c14f4870f57b9b192ffee4f14067b" [label=""];
  "sha256:4b1e20b4d585c98bcd158635a7e90721c22c14f4870f57b9b192ffee4f14067b" -> "sha256:879e60d3825dfa1f974690d606f555027e132fe06e49a6d947af251ba25d9d42" [label=""];
}

