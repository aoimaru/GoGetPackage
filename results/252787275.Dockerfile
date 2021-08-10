[app/sources/252787275.Dockerfile]
digraph {
  "sha256:ab36b3ec43f6cf621c5b782f1898ad53b3fe05bf2b8549722a4a431fd2a47499" [label="docker-image://docker.io/library/postgres:latest" shape="ellipse"];
  "sha256:b66df69e34090b4d0b448a11fce3a5e1a1b93988ac4e01c849019f01a531d221" [label="local://context" shape="ellipse"];
  "sha256:e1f06c40f5f035c9947614a66527e27357ad9b7ab10da544e7ec2b0cbbfb09b7" [label="copy{src=/init.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:f0cacd0791c6f64cae11962e5897f6ee704ff568f5d45be01574d57fcb4f7ec3" [label="sha256:f0cacd0791c6f64cae11962e5897f6ee704ff568f5d45be01574d57fcb4f7ec3" shape="plaintext"];
  "sha256:ab36b3ec43f6cf621c5b782f1898ad53b3fe05bf2b8549722a4a431fd2a47499" -> "sha256:e1f06c40f5f035c9947614a66527e27357ad9b7ab10da544e7ec2b0cbbfb09b7" [label=""];
  "sha256:b66df69e34090b4d0b448a11fce3a5e1a1b93988ac4e01c849019f01a531d221" -> "sha256:e1f06c40f5f035c9947614a66527e27357ad9b7ab10da544e7ec2b0cbbfb09b7" [label=""];
  "sha256:e1f06c40f5f035c9947614a66527e27357ad9b7ab10da544e7ec2b0cbbfb09b7" -> "sha256:f0cacd0791c6f64cae11962e5897f6ee704ff568f5d45be01574d57fcb4f7ec3" [label=""];
}

