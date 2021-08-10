[app/sources/305995048.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:e3a81190a6fa93dfaa99450880b5440e40b8d2d756e59f07d05ba5cca54db805" [label="local://context" shape="ellipse"];
  "sha256:de0c19244d13079ac5cd8aeca69624ee6c77abd86caad1968ca2483c48912b08" [label="copy{src=/site, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:bbbbeadabdee775a12d1d2b7517883345b908b1204944122558590f655fa6f0b" [label="sha256:bbbbeadabdee775a12d1d2b7517883345b908b1204944122558590f655fa6f0b" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:de0c19244d13079ac5cd8aeca69624ee6c77abd86caad1968ca2483c48912b08" [label=""];
  "sha256:e3a81190a6fa93dfaa99450880b5440e40b8d2d756e59f07d05ba5cca54db805" -> "sha256:de0c19244d13079ac5cd8aeca69624ee6c77abd86caad1968ca2483c48912b08" [label=""];
  "sha256:de0c19244d13079ac5cd8aeca69624ee6c77abd86caad1968ca2483c48912b08" -> "sha256:bbbbeadabdee775a12d1d2b7517883345b908b1204944122558590f655fa6f0b" [label=""];
}

