[app/sources/252775562.Dockerfile]
digraph {
  "sha256:a673142ea14215bfb9f732cb830b53d451cec005b71b7fdaaef66aac21d4489d" [label="docker-image://docker.io/library/haproxy:1.7" shape="ellipse"];
  "sha256:5be1b6f22829affba4c7a89c3285cb5c8eb8e4beb8e7191d85526e473fed5e34" [label="local://context" shape="ellipse"];
  "sha256:000997dd08621481e53b883858c21ba4d0d2af62f78a59e8343c14def33665ae" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:b74b0dec2ca5b82a92ae3f70942b361458b7dcc252b89ebcfc00c75439e95d4e" [label="copy{src=/makeconfig.sh, dest=/makeconfig.sh}" shape="note"];
  "sha256:03cec4aa0ea8b9f9ea8768b206175820bd2dd53fc6494436f20977940dfb486c" [label="sha256:03cec4aa0ea8b9f9ea8768b206175820bd2dd53fc6494436f20977940dfb486c" shape="plaintext"];
  "sha256:a673142ea14215bfb9f732cb830b53d451cec005b71b7fdaaef66aac21d4489d" -> "sha256:000997dd08621481e53b883858c21ba4d0d2af62f78a59e8343c14def33665ae" [label=""];
  "sha256:5be1b6f22829affba4c7a89c3285cb5c8eb8e4beb8e7191d85526e473fed5e34" -> "sha256:000997dd08621481e53b883858c21ba4d0d2af62f78a59e8343c14def33665ae" [label=""];
  "sha256:000997dd08621481e53b883858c21ba4d0d2af62f78a59e8343c14def33665ae" -> "sha256:b74b0dec2ca5b82a92ae3f70942b361458b7dcc252b89ebcfc00c75439e95d4e" [label=""];
  "sha256:5be1b6f22829affba4c7a89c3285cb5c8eb8e4beb8e7191d85526e473fed5e34" -> "sha256:b74b0dec2ca5b82a92ae3f70942b361458b7dcc252b89ebcfc00c75439e95d4e" [label=""];
  "sha256:b74b0dec2ca5b82a92ae3f70942b361458b7dcc252b89ebcfc00c75439e95d4e" -> "sha256:03cec4aa0ea8b9f9ea8768b206175820bd2dd53fc6494436f20977940dfb486c" [label=""];
}

