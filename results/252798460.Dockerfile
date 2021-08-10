[app/sources/252798460.Dockerfile]
digraph {
  "sha256:4abbedfb18feb2cbdc0ddadc63d90b76334c41e044379017cee0c54fe20cd390" [label="docker-image://docker.io/denr/sdkman:latest" shape="ellipse"];
  "sha256:3aa07be85f954776f8d3ef4c4303c835abca166877d8162cefe2cfb2c00c2e48" [label="/bin/sh -c apk add --update libc6-compat" shape="box"];
  "sha256:1b959ff8c53f58bba99e38593dcb44095cba21fc5b8a4e0632901b4720936df2" [label="/bin/sh -c source \"$SDKMAN_DIR/bin/sdkman-init.sh\" && sdk install asciidoctorj" shape="box"];
  "sha256:bf35bd2851504fd184962fe400acff2f23baf8033a6d2d73177ab515041a07a9" [label="/bin/sh -c mkdir /documents" shape="box"];
  "sha256:8d97aaf89cb134837a224e19f5dbac212ed13f2b8225b573bb504e1455e8e1e8" [label="mkdir{path=/documents}" shape="note"];
  "sha256:a112db32ae8a94ad03a87e14977dfb1305c52a7ad68a5921d57f18946b0366c7" [label="sha256:a112db32ae8a94ad03a87e14977dfb1305c52a7ad68a5921d57f18946b0366c7" shape="plaintext"];
  "sha256:4abbedfb18feb2cbdc0ddadc63d90b76334c41e044379017cee0c54fe20cd390" -> "sha256:3aa07be85f954776f8d3ef4c4303c835abca166877d8162cefe2cfb2c00c2e48" [label=""];
  "sha256:3aa07be85f954776f8d3ef4c4303c835abca166877d8162cefe2cfb2c00c2e48" -> "sha256:1b959ff8c53f58bba99e38593dcb44095cba21fc5b8a4e0632901b4720936df2" [label=""];
  "sha256:1b959ff8c53f58bba99e38593dcb44095cba21fc5b8a4e0632901b4720936df2" -> "sha256:bf35bd2851504fd184962fe400acff2f23baf8033a6d2d73177ab515041a07a9" [label=""];
  "sha256:bf35bd2851504fd184962fe400acff2f23baf8033a6d2d73177ab515041a07a9" -> "sha256:8d97aaf89cb134837a224e19f5dbac212ed13f2b8225b573bb504e1455e8e1e8" [label=""];
  "sha256:8d97aaf89cb134837a224e19f5dbac212ed13f2b8225b573bb504e1455e8e1e8" -> "sha256:a112db32ae8a94ad03a87e14977dfb1305c52a7ad68a5921d57f18946b0366c7" [label=""];
}

