[app/sources/357082635.Dockerfile]
digraph {
  "sha256:bb1e0f7b0037bbbeb13e4d97ec7e993323863ef77dc09e76b4428a3a1f8e18d4" [label="docker-image://docker.io/lewuathe/hadoop-base:latest" shape="ellipse"];
  "sha256:763dbaa99e0eba7805d4db0c3f16e037d2bb58102eec15117c6ad3f357b906d2" [label="local://context" shape="ellipse"];
  "sha256:6fffd356833209f96a133a1e894f830e2532d76ed82c525f7550ac15fb6a534a" [label="copy{src=/bootstrap.sh, dest=/etc/bootstrap.sh}" shape="note"];
  "sha256:731083eaebc4cd599202616d65b72843ea7fd9db35fccb526382d829528a7da5" [label="/bin/sh -c chown root:root /etc/bootstrap.sh" shape="box"];
  "sha256:e76571bf25a20422dacc13f65a49edddbe93fb03419f6e827871460313639e76" [label="/bin/sh -c chmod 700 /etc/bootstrap.sh" shape="box"];
  "sha256:0694341bf4f2d53fc1ec1ba48be143bfddde9b45d6b728d033bb33801a5cfa38" [label="sha256:0694341bf4f2d53fc1ec1ba48be143bfddde9b45d6b728d033bb33801a5cfa38" shape="plaintext"];
  "sha256:bb1e0f7b0037bbbeb13e4d97ec7e993323863ef77dc09e76b4428a3a1f8e18d4" -> "sha256:6fffd356833209f96a133a1e894f830e2532d76ed82c525f7550ac15fb6a534a" [label=""];
  "sha256:763dbaa99e0eba7805d4db0c3f16e037d2bb58102eec15117c6ad3f357b906d2" -> "sha256:6fffd356833209f96a133a1e894f830e2532d76ed82c525f7550ac15fb6a534a" [label=""];
  "sha256:6fffd356833209f96a133a1e894f830e2532d76ed82c525f7550ac15fb6a534a" -> "sha256:731083eaebc4cd599202616d65b72843ea7fd9db35fccb526382d829528a7da5" [label=""];
  "sha256:731083eaebc4cd599202616d65b72843ea7fd9db35fccb526382d829528a7da5" -> "sha256:e76571bf25a20422dacc13f65a49edddbe93fb03419f6e827871460313639e76" [label=""];
  "sha256:e76571bf25a20422dacc13f65a49edddbe93fb03419f6e827871460313639e76" -> "sha256:0694341bf4f2d53fc1ec1ba48be143bfddde9b45d6b728d033bb33801a5cfa38" [label=""];
}

