[app/sources/436753707.Dockerfile]
digraph {
  "sha256:b6a54e3c3d2b8f21695c9a3fdc51c8aae7e95b58d04fddaaf16f5f4968358483" [label="local://context" shape="ellipse"];
  "sha256:cd6821d47eaac0121761f94c6e88cea89a65715ef8eea6d36d9c624cdb168d1f" [label="docker-image://docker.io/library/nginx:1.13-alpine" shape="ellipse"];
  "sha256:a6f3e5dd50ec3e43ee82eb40228452bf114049eee909f6d0ffa9a5348ade7b64" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:d3168ca9c7230b89985f3c74b5d17f7f979f718ed0a3b6b89153163ebf143aa6" [label="copy{src=/webrec.conf, dest=/etc/nginx/webrec.conf}" shape="note"];
  "sha256:3074d69be6cf1c943db9481fe988217765a69fea3d162289968cce2e68111344" [label="copy{src=/502.html, dest=/usr/share/nginx/html/502.html}" shape="note"];
  "sha256:b88e66bc8dba03c9bc9e5cfbfdedeaddeb3d10317f6f4c41eaead382de36bb0d" [label="sha256:b88e66bc8dba03c9bc9e5cfbfdedeaddeb3d10317f6f4c41eaead382de36bb0d" shape="plaintext"];
  "sha256:cd6821d47eaac0121761f94c6e88cea89a65715ef8eea6d36d9c624cdb168d1f" -> "sha256:a6f3e5dd50ec3e43ee82eb40228452bf114049eee909f6d0ffa9a5348ade7b64" [label=""];
  "sha256:b6a54e3c3d2b8f21695c9a3fdc51c8aae7e95b58d04fddaaf16f5f4968358483" -> "sha256:a6f3e5dd50ec3e43ee82eb40228452bf114049eee909f6d0ffa9a5348ade7b64" [label=""];
  "sha256:a6f3e5dd50ec3e43ee82eb40228452bf114049eee909f6d0ffa9a5348ade7b64" -> "sha256:d3168ca9c7230b89985f3c74b5d17f7f979f718ed0a3b6b89153163ebf143aa6" [label=""];
  "sha256:b6a54e3c3d2b8f21695c9a3fdc51c8aae7e95b58d04fddaaf16f5f4968358483" -> "sha256:d3168ca9c7230b89985f3c74b5d17f7f979f718ed0a3b6b89153163ebf143aa6" [label=""];
  "sha256:d3168ca9c7230b89985f3c74b5d17f7f979f718ed0a3b6b89153163ebf143aa6" -> "sha256:3074d69be6cf1c943db9481fe988217765a69fea3d162289968cce2e68111344" [label=""];
  "sha256:b6a54e3c3d2b8f21695c9a3fdc51c8aae7e95b58d04fddaaf16f5f4968358483" -> "sha256:3074d69be6cf1c943db9481fe988217765a69fea3d162289968cce2e68111344" [label=""];
  "sha256:3074d69be6cf1c943db9481fe988217765a69fea3d162289968cce2e68111344" -> "sha256:b88e66bc8dba03c9bc9e5cfbfdedeaddeb3d10317f6f4c41eaead382de36bb0d" [label=""];
}

