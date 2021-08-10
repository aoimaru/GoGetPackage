[app/sources/347094257.Dockerfile]
digraph {
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" [label="docker-image://docker.io/tutum/nginx:latest" shape="ellipse"];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:22a41987bc1a5130b048a1643a5195454f8e09f444bf8a2475d2d2868524c9ab" [label="local://context" shape="ellipse"];
  "sha256:651a5041d0ed99a526cf06c5284b4002cfde4556f9e99cacf3e6d66a85b30636" [label="copy{src=/sites-enabled, dest=/etc/nginx/sites-enabled}" shape="note"];
  "sha256:0991e065dcb4ec3c2954019d8fad9d8f7a115539fd916d572b96368fda1eff7f" [label="sha256:0991e065dcb4ec3c2954019d8fad9d8f7a115539fd916d572b96368fda1eff7f" shape="plaintext"];
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" -> "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label=""];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" -> "sha256:651a5041d0ed99a526cf06c5284b4002cfde4556f9e99cacf3e6d66a85b30636" [label=""];
  "sha256:22a41987bc1a5130b048a1643a5195454f8e09f444bf8a2475d2d2868524c9ab" -> "sha256:651a5041d0ed99a526cf06c5284b4002cfde4556f9e99cacf3e6d66a85b30636" [label=""];
  "sha256:651a5041d0ed99a526cf06c5284b4002cfde4556f9e99cacf3e6d66a85b30636" -> "sha256:0991e065dcb4ec3c2954019d8fad9d8f7a115539fd916d572b96368fda1eff7f" [label=""];
}

