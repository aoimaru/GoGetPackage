[app/sources/445129682.Dockerfile]
digraph {
  "sha256:d545ae15bb7e6a1f9d42efeeb862588ed623a248b4df5b4c5d331a198a2942ab" [label="docker-image://docker.io/library/openjdk:latest" shape="ellipse"];
  "sha256:9ec094f521f58ed9567f865af1c3029ec9b4765cc5d1f1d06d2161b5a8f5a342" [label="local://context" shape="ellipse"];
  "sha256:046315c8755fdbd257fb5ba07aeedb19a23f80888d1f10803f81ab6b4b6dc1a9" [label="copy{src=/build/libs/starbucks-all.jar, dest=/srv/starbucks-all.jar}" shape="note"];
  "sha256:efa9f9d8f223b29ba6c473e0c03cc8a2e9f65d210c5eb90092734d4ab32e7f77" [label="sha256:efa9f9d8f223b29ba6c473e0c03cc8a2e9f65d210c5eb90092734d4ab32e7f77" shape="plaintext"];
  "sha256:d545ae15bb7e6a1f9d42efeeb862588ed623a248b4df5b4c5d331a198a2942ab" -> "sha256:046315c8755fdbd257fb5ba07aeedb19a23f80888d1f10803f81ab6b4b6dc1a9" [label=""];
  "sha256:9ec094f521f58ed9567f865af1c3029ec9b4765cc5d1f1d06d2161b5a8f5a342" -> "sha256:046315c8755fdbd257fb5ba07aeedb19a23f80888d1f10803f81ab6b4b6dc1a9" [label=""];
  "sha256:046315c8755fdbd257fb5ba07aeedb19a23f80888d1f10803f81ab6b4b6dc1a9" -> "sha256:efa9f9d8f223b29ba6c473e0c03cc8a2e9f65d210c5eb90092734d4ab32e7f77" [label=""];
}

