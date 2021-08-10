[app/sources/273089463.Dockerfile]
digraph {
  "sha256:610cfd68f79d188ce229309af192bb3354b8f9656a42fcfe8d785f62af38b20f" [label="local://context" shape="ellipse"];
  "sha256:0d4590bd976ffd522407d76076ed306b431abf0bdc3326d6159f30a96eccd6c9" [label="copy{src=/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:63459f2e98bf9684f1e2ea0a0ace3e98697966d14c9a7a7756d22791c24d69a3" [label="copy{src=/h2demo, dest=/}" shape="note"];
  "sha256:422e6e0c7ce16d4931bcff04156c3501e5ff6dace0922de1c9a9ad6acefa262d" [label="sha256:422e6e0c7ce16d4931bcff04156c3501e5ff6dace0922de1c9a9ad6acefa262d" shape="plaintext"];
  "sha256:610cfd68f79d188ce229309af192bb3354b8f9656a42fcfe8d785f62af38b20f" -> "sha256:0d4590bd976ffd522407d76076ed306b431abf0bdc3326d6159f30a96eccd6c9" [label=""];
  "sha256:0d4590bd976ffd522407d76076ed306b431abf0bdc3326d6159f30a96eccd6c9" -> "sha256:63459f2e98bf9684f1e2ea0a0ace3e98697966d14c9a7a7756d22791c24d69a3" [label=""];
  "sha256:610cfd68f79d188ce229309af192bb3354b8f9656a42fcfe8d785f62af38b20f" -> "sha256:63459f2e98bf9684f1e2ea0a0ace3e98697966d14c9a7a7756d22791c24d69a3" [label=""];
  "sha256:63459f2e98bf9684f1e2ea0a0ace3e98697966d14c9a7a7756d22791c24d69a3" -> "sha256:422e6e0c7ce16d4931bcff04156c3501e5ff6dace0922de1c9a9ad6acefa262d" [label=""];
}

