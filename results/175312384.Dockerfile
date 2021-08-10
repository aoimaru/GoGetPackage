[app/sources/175312384.Dockerfile]
digraph {
  "sha256:5a91f8501d8261981450f43b7d02155a8b2c38d8a1e9d4b68f30d157e1af23ed" [label="docker-image://docker.io/gobblin/gobblin-distributions:ubuntu-gobblin-0.10.0" shape="ellipse"];
  "sha256:1497557f0d680ee8b78a49d10e72276126b9296244d44b5a8260cca5d0c6c353" [label="/bin/sh -c mkdir -p /etc/opt/job-conf" shape="box"];
  "sha256:a1de0b4c6749d0305613cbd64aadf223d81a54723f2c0e86faeab4978e583e3f" [label="/bin/sh -c mkdir -p /home/gobblin/work-dir" shape="box"];
  "sha256:52550ad1243fc7cd4bfbf39ec89f2b06ae6d6a965c1e9dde249052b6ac488565" [label="sha256:52550ad1243fc7cd4bfbf39ec89f2b06ae6d6a965c1e9dde249052b6ac488565" shape="plaintext"];
  "sha256:5a91f8501d8261981450f43b7d02155a8b2c38d8a1e9d4b68f30d157e1af23ed" -> "sha256:1497557f0d680ee8b78a49d10e72276126b9296244d44b5a8260cca5d0c6c353" [label=""];
  "sha256:1497557f0d680ee8b78a49d10e72276126b9296244d44b5a8260cca5d0c6c353" -> "sha256:a1de0b4c6749d0305613cbd64aadf223d81a54723f2c0e86faeab4978e583e3f" [label=""];
  "sha256:a1de0b4c6749d0305613cbd64aadf223d81a54723f2c0e86faeab4978e583e3f" -> "sha256:52550ad1243fc7cd4bfbf39ec89f2b06ae6d6a965c1e9dde249052b6ac488565" [label=""];
}

