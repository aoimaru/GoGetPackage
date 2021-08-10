[app/sources/260616774.Dockerfile]
digraph {
  "sha256:f83ecc646e2a9c93b51f05c91aab4dc8fee3bf5916f404a6add3283ccdf1a97e" [label="docker-image://docker.io/library/lestrrat-goxc:go1.4" shape="ellipse"];
  "sha256:ae6f95797f47560cef27eda5f27bef46a7361cf907711bf97fa50642d75d188b" [label="local://context" shape="ellipse"];
  "sha256:6df5f98478a33969a209ae4ed1af5142729fbd44854f003e181b8f6c816224b5" [label="copy{src=/build-server_starter.sh, dest=/}" shape="note"];
  "sha256:a6839a1200b6e39e1090f6a8b521ded8e9cd2594c3bce5a10eada853a34d6ddc" [label="copy{src=/release-server_starter.sh, dest=/}" shape="note"];
  "sha256:ae7a977ead337edec4452b1bdadb40624df804f5510b1aa9a10716ffb776d586" [label="sha256:ae7a977ead337edec4452b1bdadb40624df804f5510b1aa9a10716ffb776d586" shape="plaintext"];
  "sha256:f83ecc646e2a9c93b51f05c91aab4dc8fee3bf5916f404a6add3283ccdf1a97e" -> "sha256:6df5f98478a33969a209ae4ed1af5142729fbd44854f003e181b8f6c816224b5" [label=""];
  "sha256:ae6f95797f47560cef27eda5f27bef46a7361cf907711bf97fa50642d75d188b" -> "sha256:6df5f98478a33969a209ae4ed1af5142729fbd44854f003e181b8f6c816224b5" [label=""];
  "sha256:6df5f98478a33969a209ae4ed1af5142729fbd44854f003e181b8f6c816224b5" -> "sha256:a6839a1200b6e39e1090f6a8b521ded8e9cd2594c3bce5a10eada853a34d6ddc" [label=""];
  "sha256:ae6f95797f47560cef27eda5f27bef46a7361cf907711bf97fa50642d75d188b" -> "sha256:a6839a1200b6e39e1090f6a8b521ded8e9cd2594c3bce5a10eada853a34d6ddc" [label=""];
  "sha256:a6839a1200b6e39e1090f6a8b521ded8e9cd2594c3bce5a10eada853a34d6ddc" -> "sha256:ae7a977ead337edec4452b1bdadb40624df804f5510b1aa9a10716ffb776d586" [label=""];
}

