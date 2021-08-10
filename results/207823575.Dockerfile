[app/sources/207823575.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:087bb035c2868c3740fe974086132fa4327336ba0813cbe71e73b6ad069102f6" [label="local://context" shape="ellipse"];
  "sha256:e9a38c033fb7c2ad818aa555f01ded93c0c0e9922af6bb6f170b8bd1d734c0d1" [label="copy{src=/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:22b9becfdad995a29ca624e0e4e6d1b70d5479924d9bf5b98ab535d877d8d66d" [label="sha256:22b9becfdad995a29ca624e0e4e6d1b70d5479924d9bf5b98ab535d877d8d66d" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:e9a38c033fb7c2ad818aa555f01ded93c0c0e9922af6bb6f170b8bd1d734c0d1" [label=""];
  "sha256:087bb035c2868c3740fe974086132fa4327336ba0813cbe71e73b6ad069102f6" -> "sha256:e9a38c033fb7c2ad818aa555f01ded93c0c0e9922af6bb6f170b8bd1d734c0d1" [label=""];
  "sha256:e9a38c033fb7c2ad818aa555f01ded93c0c0e9922af6bb6f170b8bd1d734c0d1" -> "sha256:22b9becfdad995a29ca624e0e4e6d1b70d5479924d9bf5b98ab535d877d8d66d" [label=""];
}

