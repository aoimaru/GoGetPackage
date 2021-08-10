[app/sources/286152203.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:ffb464dc6065dbda2bda6908868c5fde33bbce789d71eb1a3b656cc86912421a" [label="local://context" shape="ellipse"];
  "sha256:028de380de59576509bc1c3a5dcd92bca679bd2646490b7278c2adeba5a950a9" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:6743235da05c01c290564e5cd38b7c48fd06a568f08b1ce02a5a12df60b986b4" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:89a750abbfc257d10aad6f1dfc4f30d2f158d160315664c879f181581e117a27" [label="/bin/sh -c gcc -g -Wall -static nnp-test.c -o /usr/bin/nnp-test" shape="box"];
  "sha256:8903a1c6f491514cda6ece1f5fb343e666d3c9e4c2973615a6cd4f2f86c9e1a5" [label="/bin/sh -c chmod +s /usr/bin/nnp-test" shape="box"];
  "sha256:783440875d4bcb2116ac70db092cb3973e1a0cfaee708d714f8a112c8ec6b5c0" [label="sha256:783440875d4bcb2116ac70db092cb3973e1a0cfaee708d714f8a112c8ec6b5c0" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:028de380de59576509bc1c3a5dcd92bca679bd2646490b7278c2adeba5a950a9" [label=""];
  "sha256:ffb464dc6065dbda2bda6908868c5fde33bbce789d71eb1a3b656cc86912421a" -> "sha256:028de380de59576509bc1c3a5dcd92bca679bd2646490b7278c2adeba5a950a9" [label=""];
  "sha256:028de380de59576509bc1c3a5dcd92bca679bd2646490b7278c2adeba5a950a9" -> "sha256:6743235da05c01c290564e5cd38b7c48fd06a568f08b1ce02a5a12df60b986b4" [label=""];
  "sha256:6743235da05c01c290564e5cd38b7c48fd06a568f08b1ce02a5a12df60b986b4" -> "sha256:89a750abbfc257d10aad6f1dfc4f30d2f158d160315664c879f181581e117a27" [label=""];
  "sha256:89a750abbfc257d10aad6f1dfc4f30d2f158d160315664c879f181581e117a27" -> "sha256:8903a1c6f491514cda6ece1f5fb343e666d3c9e4c2973615a6cd4f2f86c9e1a5" [label=""];
  "sha256:8903a1c6f491514cda6ece1f5fb343e666d3c9e4c2973615a6cd4f2f86c9e1a5" -> "sha256:783440875d4bcb2116ac70db092cb3973e1a0cfaee708d714f8a112c8ec6b5c0" [label=""];
}

