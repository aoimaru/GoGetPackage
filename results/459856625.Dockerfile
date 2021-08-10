[app/sources/459856625.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:2500ee248d5c1ae1f135ce1986c9c880c7e3e6004a7ddd6738c843c5c94aad33" [label="local://context" shape="ellipse"];
  "sha256:9bd8d158d46e1e21aac3b7b02d15f1d127b967ff62458cb508d04dc5fd36fc5c" [label="copy{src=/run-tests, dest=/bin/run-tests}" shape="note"];
  "sha256:5ef24dd2e7e5fe6c25c01909b7c89f01531f79564cb58770216185e575301c42" [label="sha256:5ef24dd2e7e5fe6c25c01909b7c89f01531f79564cb58770216185e575301c42" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:9bd8d158d46e1e21aac3b7b02d15f1d127b967ff62458cb508d04dc5fd36fc5c" [label=""];
  "sha256:2500ee248d5c1ae1f135ce1986c9c880c7e3e6004a7ddd6738c843c5c94aad33" -> "sha256:9bd8d158d46e1e21aac3b7b02d15f1d127b967ff62458cb508d04dc5fd36fc5c" [label=""];
  "sha256:9bd8d158d46e1e21aac3b7b02d15f1d127b967ff62458cb508d04dc5fd36fc5c" -> "sha256:5ef24dd2e7e5fe6c25c01909b7c89f01531f79564cb58770216185e575301c42" [label=""];
}

