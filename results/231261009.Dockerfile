[app/sources/231261009.Dockerfile]
digraph {
  "sha256:b766c8d202e7584c0401f899eab1ff0d57dcaa84a3e596af19ca75e816f7d10f" [label="docker-image://docker.io/library/fissile-cf-solo:latest" shape="ellipse"];
  "sha256:5dfb4737f87a06b0e2c6984e19fc4e62c0426796ee2d819929f6a47e96e40b2b" [label="local://context" shape="ellipse"];
  "sha256:636e78b6c6aee8ff7c90ed805c941ab00d661ca2f9a8910f4c3ce79d8316d80c" [label="copy{src=/solo-status.sh, dest=/opt/hcf/}" shape="note"];
  "sha256:42480cb16e44dc5733d1136978b1b02f106ae985d9fa5447fb2c465713003de1" [label="copy{src=/run-solo.sh, dest=/opt/hcf/}" shape="note"];
  "sha256:36e388a638eabdb4579dc720c6b05254a2117412e7328ee2b4c4cabddc49b80d" [label="sha256:36e388a638eabdb4579dc720c6b05254a2117412e7328ee2b4c4cabddc49b80d" shape="plaintext"];
  "sha256:b766c8d202e7584c0401f899eab1ff0d57dcaa84a3e596af19ca75e816f7d10f" -> "sha256:636e78b6c6aee8ff7c90ed805c941ab00d661ca2f9a8910f4c3ce79d8316d80c" [label=""];
  "sha256:5dfb4737f87a06b0e2c6984e19fc4e62c0426796ee2d819929f6a47e96e40b2b" -> "sha256:636e78b6c6aee8ff7c90ed805c941ab00d661ca2f9a8910f4c3ce79d8316d80c" [label=""];
  "sha256:636e78b6c6aee8ff7c90ed805c941ab00d661ca2f9a8910f4c3ce79d8316d80c" -> "sha256:42480cb16e44dc5733d1136978b1b02f106ae985d9fa5447fb2c465713003de1" [label=""];
  "sha256:5dfb4737f87a06b0e2c6984e19fc4e62c0426796ee2d819929f6a47e96e40b2b" -> "sha256:42480cb16e44dc5733d1136978b1b02f106ae985d9fa5447fb2c465713003de1" [label=""];
  "sha256:42480cb16e44dc5733d1136978b1b02f106ae985d9fa5447fb2c465713003de1" -> "sha256:36e388a638eabdb4579dc720c6b05254a2117412e7328ee2b4c4cabddc49b80d" [label=""];
}

