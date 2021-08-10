[app/sources/280449935.Dockerfile]
digraph {
  "sha256:a70c346430275aaca7d3795e2f4a8a4b840034062bdc4502363c1c7862fe7f10" [label="docker-image://docker.io/library/debian:9-slim" shape="ellipse"];
  "sha256:85046965d837ad9a25d7983bbe1a0f63ad060eb28ee8ba6895d80ec511814c0d" [label="local://context" shape="ellipse"];
  "sha256:e763830b8df76b7cb6ebee159ca4d2b0fc212b993ba28cea000b3719bc053ab7" [label="copy{src=/web, dest=/usr/local/bin/web}" shape="note"];
  "sha256:c2fdc37ac8b369266ef2a23fbd6c5dc4389195b579199e07381ae984195662ad" [label="/bin/sh -c chmod +x /usr/local/bin/web" shape="box"];
  "sha256:aaf6b8a7e1d8f705c03197b84b084357848bbe2ac46b3a5a45952efedfa0b60f" [label="sha256:aaf6b8a7e1d8f705c03197b84b084357848bbe2ac46b3a5a45952efedfa0b60f" shape="plaintext"];
  "sha256:a70c346430275aaca7d3795e2f4a8a4b840034062bdc4502363c1c7862fe7f10" -> "sha256:e763830b8df76b7cb6ebee159ca4d2b0fc212b993ba28cea000b3719bc053ab7" [label=""];
  "sha256:85046965d837ad9a25d7983bbe1a0f63ad060eb28ee8ba6895d80ec511814c0d" -> "sha256:e763830b8df76b7cb6ebee159ca4d2b0fc212b993ba28cea000b3719bc053ab7" [label=""];
  "sha256:e763830b8df76b7cb6ebee159ca4d2b0fc212b993ba28cea000b3719bc053ab7" -> "sha256:c2fdc37ac8b369266ef2a23fbd6c5dc4389195b579199e07381ae984195662ad" [label=""];
  "sha256:c2fdc37ac8b369266ef2a23fbd6c5dc4389195b579199e07381ae984195662ad" -> "sha256:aaf6b8a7e1d8f705c03197b84b084357848bbe2ac46b3a5a45952efedfa0b60f" [label=""];
}

