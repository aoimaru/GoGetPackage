[app/sources/222025175.Dockerfile]
digraph {
  "sha256:8aeddc6744225bd4f23d9bb83e74088d2fb3359ee9a96f89e340e7b9d4fd96af" [label="docker-image://docker.io/library/open-intent-integration:latest" shape="ellipse"];
  "sha256:cb0dd41eb912850f9bbb0b726434df9472a68c0877bfa44afe9885ea25ff5010" [label="local://context" shape="ellipse"];
  "sha256:7274ef88a40f9083a7874daa5f5c9680bcfd1d99f5c8e260e22d255c9f6bbb68" [label="copy{src=/res, dest=/chatbot/res}" shape="note"];
  "sha256:f8c9b34a1d02c8ad3236c9ced5b0418e1708ae336a5e3b0b7a8cea9abc98817a" [label="copy{src=/test, dest=/chatbot/test}" shape="note"];
  "sha256:09575e896fc0b9a061544d29c3228c65db0eba7d6d4b5a5dcccede7d85704093" [label="sha256:09575e896fc0b9a061544d29c3228c65db0eba7d6d4b5a5dcccede7d85704093" shape="plaintext"];
  "sha256:8aeddc6744225bd4f23d9bb83e74088d2fb3359ee9a96f89e340e7b9d4fd96af" -> "sha256:7274ef88a40f9083a7874daa5f5c9680bcfd1d99f5c8e260e22d255c9f6bbb68" [label=""];
  "sha256:cb0dd41eb912850f9bbb0b726434df9472a68c0877bfa44afe9885ea25ff5010" -> "sha256:7274ef88a40f9083a7874daa5f5c9680bcfd1d99f5c8e260e22d255c9f6bbb68" [label=""];
  "sha256:7274ef88a40f9083a7874daa5f5c9680bcfd1d99f5c8e260e22d255c9f6bbb68" -> "sha256:f8c9b34a1d02c8ad3236c9ced5b0418e1708ae336a5e3b0b7a8cea9abc98817a" [label=""];
  "sha256:cb0dd41eb912850f9bbb0b726434df9472a68c0877bfa44afe9885ea25ff5010" -> "sha256:f8c9b34a1d02c8ad3236c9ced5b0418e1708ae336a5e3b0b7a8cea9abc98817a" [label=""];
  "sha256:f8c9b34a1d02c8ad3236c9ced5b0418e1708ae336a5e3b0b7a8cea9abc98817a" -> "sha256:09575e896fc0b9a061544d29c3228c65db0eba7d6d4b5a5dcccede7d85704093" [label=""];
}

