[app/sources/313084307.Dockerfile]
digraph {
  "sha256:530600c3796726322744703db6225dbbb337de53e10272b0bc64106acf42601b" [label="docker-image://docker.io/library/nginx:1.15.12-alpine" shape="ellipse"];
  "sha256:68c3278685506b909d41fc9b60c05f4cc126d06d7394444204ebc0abac918d5d" [label="local://context" shape="ellipse"];
  "sha256:b2fa7153c82a64ddc567678ec49347771e9c86e141671a3402f57a7c9a881ff3" [label="copy{src=/nginx/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:651d79f8ea9ca3771ffe5566948ff2aa746eec2755661cc7355a8b344af5b622" [label="copy{src=/nginx/conf.d/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:757dce9a9de4701e0bd8c6515177693ed068007d21a0bd7dcf99bffd5def7f0d" [label="copy{src=/_site, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:4d305468cf2e2ff461bfb6d4b27c399252741784eebe28b676a57feac71f2c32" [label="sha256:4d305468cf2e2ff461bfb6d4b27c399252741784eebe28b676a57feac71f2c32" shape="plaintext"];
  "sha256:530600c3796726322744703db6225dbbb337de53e10272b0bc64106acf42601b" -> "sha256:b2fa7153c82a64ddc567678ec49347771e9c86e141671a3402f57a7c9a881ff3" [label=""];
  "sha256:68c3278685506b909d41fc9b60c05f4cc126d06d7394444204ebc0abac918d5d" -> "sha256:b2fa7153c82a64ddc567678ec49347771e9c86e141671a3402f57a7c9a881ff3" [label=""];
  "sha256:b2fa7153c82a64ddc567678ec49347771e9c86e141671a3402f57a7c9a881ff3" -> "sha256:651d79f8ea9ca3771ffe5566948ff2aa746eec2755661cc7355a8b344af5b622" [label=""];
  "sha256:68c3278685506b909d41fc9b60c05f4cc126d06d7394444204ebc0abac918d5d" -> "sha256:651d79f8ea9ca3771ffe5566948ff2aa746eec2755661cc7355a8b344af5b622" [label=""];
  "sha256:651d79f8ea9ca3771ffe5566948ff2aa746eec2755661cc7355a8b344af5b622" -> "sha256:757dce9a9de4701e0bd8c6515177693ed068007d21a0bd7dcf99bffd5def7f0d" [label=""];
  "sha256:68c3278685506b909d41fc9b60c05f4cc126d06d7394444204ebc0abac918d5d" -> "sha256:757dce9a9de4701e0bd8c6515177693ed068007d21a0bd7dcf99bffd5def7f0d" [label=""];
  "sha256:757dce9a9de4701e0bd8c6515177693ed068007d21a0bd7dcf99bffd5def7f0d" -> "sha256:4d305468cf2e2ff461bfb6d4b27c399252741784eebe28b676a57feac71f2c32" [label=""];
}

