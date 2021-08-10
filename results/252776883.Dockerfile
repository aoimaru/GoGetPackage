[app/sources/252776883.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:e4c77f0ea8f2e24ffe1dfa80cf6f62f00c412e3fdfb7a097e0287fcfbb295945" [label="local://context" shape="ellipse"];
  "sha256:7073d1256f10faa56682e1ace2e9fac33f260669f6c3ee43cc93db0516af20b7" [label="copy{src=/_site, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:1429e9e5ebf42c6192b3a7736f29093eee23709610a2a5955eb6c3e530b3c03d" [label="sha256:1429e9e5ebf42c6192b3a7736f29093eee23709610a2a5955eb6c3e530b3c03d" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:7073d1256f10faa56682e1ace2e9fac33f260669f6c3ee43cc93db0516af20b7" [label=""];
  "sha256:e4c77f0ea8f2e24ffe1dfa80cf6f62f00c412e3fdfb7a097e0287fcfbb295945" -> "sha256:7073d1256f10faa56682e1ace2e9fac33f260669f6c3ee43cc93db0516af20b7" [label=""];
  "sha256:7073d1256f10faa56682e1ace2e9fac33f260669f6c3ee43cc93db0516af20b7" -> "sha256:1429e9e5ebf42c6192b3a7736f29093eee23709610a2a5955eb6c3e530b3c03d" [label=""];
}

