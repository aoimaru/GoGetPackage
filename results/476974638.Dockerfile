[app/sources/476974638.Dockerfile]
digraph {
  "sha256:67ca87eacda16dfedf0a605cc15deed25d6cece0d5397b5f244f751f6d913187" [label="docker-image://docker.io/easypi/alpine-arm:latest" shape="ellipse"];
  "sha256:7c81324d91827e76d626cdd5a5c6714771d4e416fba33d1f7847fa1ceac7cc99" [label="local://context" shape="ellipse"];
  "sha256:93473ce83978e40d0d8bda5812c525c8ef46c83a14065027f3210893ed0db486" [label="copy{src=/qemu-arm-static, dest=/usr/bin/qemu-arm-static}" shape="note"];
  "sha256:4e737041613705e46b6566f221b6fca2a2f6a76c3d7aa7d6b115dcb00d300ebb" [label="sha256:4e737041613705e46b6566f221b6fca2a2f6a76c3d7aa7d6b115dcb00d300ebb" shape="plaintext"];
  "sha256:67ca87eacda16dfedf0a605cc15deed25d6cece0d5397b5f244f751f6d913187" -> "sha256:93473ce83978e40d0d8bda5812c525c8ef46c83a14065027f3210893ed0db486" [label=""];
  "sha256:7c81324d91827e76d626cdd5a5c6714771d4e416fba33d1f7847fa1ceac7cc99" -> "sha256:93473ce83978e40d0d8bda5812c525c8ef46c83a14065027f3210893ed0db486" [label=""];
  "sha256:93473ce83978e40d0d8bda5812c525c8ef46c83a14065027f3210893ed0db486" -> "sha256:4e737041613705e46b6566f221b6fca2a2f6a76c3d7aa7d6b115dcb00d300ebb" [label=""];
}

