[app/sources/305363826.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:e8d9e984b62de05a7786d630d01e38529bfe69a0783c3f4bd20bdce8e70b3b41" [label="/bin/sh -c sed -i.bak \"s/\\([[:space:]]\\{1,\\}sendfile[[:space:]]\\{1,\\}\\)on/\\1off/\" /etc/nginx/nginx.conf" shape="box"];
  "sha256:311ae0da38ee4baf26252fedb9fd6070ec01479f1bb8c0a5346c0723c4d7df3f" [label="local://context" shape="ellipse"];
  "sha256:b5ac49660e9017d5c72913be6041d999b70f7d0d23b5b81c4c5233560ca69a58" [label="copy{src=/, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:4ec4df3e9230961e1ac6b85689cd98d147049896424086ba237f57cd80952fe7" [label="sha256:4ec4df3e9230961e1ac6b85689cd98d147049896424086ba237f57cd80952fe7" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:e8d9e984b62de05a7786d630d01e38529bfe69a0783c3f4bd20bdce8e70b3b41" [label=""];
  "sha256:e8d9e984b62de05a7786d630d01e38529bfe69a0783c3f4bd20bdce8e70b3b41" -> "sha256:b5ac49660e9017d5c72913be6041d999b70f7d0d23b5b81c4c5233560ca69a58" [label=""];
  "sha256:311ae0da38ee4baf26252fedb9fd6070ec01479f1bb8c0a5346c0723c4d7df3f" -> "sha256:b5ac49660e9017d5c72913be6041d999b70f7d0d23b5b81c4c5233560ca69a58" [label=""];
  "sha256:b5ac49660e9017d5c72913be6041d999b70f7d0d23b5b81c4c5233560ca69a58" -> "sha256:4ec4df3e9230961e1ac6b85689cd98d147049896424086ba237f57cd80952fe7" [label=""];
}

