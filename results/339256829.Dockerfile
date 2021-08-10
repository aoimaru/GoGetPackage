[app/sources/339256829.Dockerfile]
digraph {
  "sha256:d1ad378a8a985ca3b55d7c5498133284a8e246495cec15ac59be700b26120b89" [label="docker-image://docker.io/library/nginx:1.13.9" shape="ellipse"];
  "sha256:0d5aea5d537343b3d2cda0fe2e5af3bcd35195e75fa43b5dd288550ad43e143a" [label="local://context" shape="ellipse"];
  "sha256:80606b6b26f3575f6e15a88f9cfdf79a0b4af8d15c47418616911674867cb937" [label="copy{src=/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:44ea0e1997fb03c7d05c1f9672e4b43ff160f18d3c0b9a8c91e529ef09f1732b" [label="copy{src=/nginx, dest=/etc/nginx/}" shape="note"];
  "sha256:2fa689f11c38b928c0f9e94ea0a557a7b89288603e044ad5378aa55a92e825cf" [label="sha256:2fa689f11c38b928c0f9e94ea0a557a7b89288603e044ad5378aa55a92e825cf" shape="plaintext"];
  "sha256:d1ad378a8a985ca3b55d7c5498133284a8e246495cec15ac59be700b26120b89" -> "sha256:80606b6b26f3575f6e15a88f9cfdf79a0b4af8d15c47418616911674867cb937" [label=""];
  "sha256:0d5aea5d537343b3d2cda0fe2e5af3bcd35195e75fa43b5dd288550ad43e143a" -> "sha256:80606b6b26f3575f6e15a88f9cfdf79a0b4af8d15c47418616911674867cb937" [label=""];
  "sha256:80606b6b26f3575f6e15a88f9cfdf79a0b4af8d15c47418616911674867cb937" -> "sha256:44ea0e1997fb03c7d05c1f9672e4b43ff160f18d3c0b9a8c91e529ef09f1732b" [label=""];
  "sha256:0d5aea5d537343b3d2cda0fe2e5af3bcd35195e75fa43b5dd288550ad43e143a" -> "sha256:44ea0e1997fb03c7d05c1f9672e4b43ff160f18d3c0b9a8c91e529ef09f1732b" [label=""];
  "sha256:44ea0e1997fb03c7d05c1f9672e4b43ff160f18d3c0b9a8c91e529ef09f1732b" -> "sha256:2fa689f11c38b928c0f9e94ea0a557a7b89288603e044ad5378aa55a92e825cf" [label=""];
}

