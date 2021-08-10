[app/sources/358665037.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:aa82503ddd95b0d815f3d4cdfff34f19f1fc5990c99529c89875f37465026d83" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:4e1ce2c4eda862a24dea336076ad27d2620391a4fd0fc7893608f3a18e2e3cba" [label="local://context" shape="ellipse"];
  "sha256:3dcb300dca90a7978c3b48d865f0c7e437055da8246028f9007efd8756af1ec5" [label="copy{src=/, dest=/src/github.com/msoap/shell2telegram}" shape="note"];
  "sha256:f38cdfc08297da2d09424df89fe3a03e7182090fb91b0dea4dda691f0b2a7404" [label="mkdir{path=/src/github.com/msoap/shell2telegram}" shape="note"];
  "sha256:26ffc5fc3540bbf7a275b3dbd1b159f5d9147807938b40fa8809d96e1b7fdc63" [label="/bin/sh -c go get -t -v ./..." shape="box"];
  "sha256:0ac15e9a2683702ca8ab32592eede88fd068519dffd4e9db059940355ad6b901" [label="/bin/sh -c go install -a -v -ldflags=\"-w -s\" ./..." shape="box"];
  "sha256:44eb3a6d398d7c97acc6ad083c91b5701be6189e724fb231f2d5477c3328a3eb" [label="copy{src=/go/bin/shell2telegram, dest=/app/shell2telegram}" shape="note"];
  "sha256:7db0072eda222b422be7b67ae0df5e886c5d07d27d621c595582e510367be8de" [label="sha256:7db0072eda222b422be7b67ae0df5e886c5d07d27d621c595582e510367be8de" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label=""];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:aa82503ddd95b0d815f3d4cdfff34f19f1fc5990c99529c89875f37465026d83" [label=""];
  "sha256:aa82503ddd95b0d815f3d4cdfff34f19f1fc5990c99529c89875f37465026d83" -> "sha256:3dcb300dca90a7978c3b48d865f0c7e437055da8246028f9007efd8756af1ec5" [label=""];
  "sha256:4e1ce2c4eda862a24dea336076ad27d2620391a4fd0fc7893608f3a18e2e3cba" -> "sha256:3dcb300dca90a7978c3b48d865f0c7e437055da8246028f9007efd8756af1ec5" [label=""];
  "sha256:3dcb300dca90a7978c3b48d865f0c7e437055da8246028f9007efd8756af1ec5" -> "sha256:f38cdfc08297da2d09424df89fe3a03e7182090fb91b0dea4dda691f0b2a7404" [label=""];
  "sha256:f38cdfc08297da2d09424df89fe3a03e7182090fb91b0dea4dda691f0b2a7404" -> "sha256:26ffc5fc3540bbf7a275b3dbd1b159f5d9147807938b40fa8809d96e1b7fdc63" [label=""];
  "sha256:26ffc5fc3540bbf7a275b3dbd1b159f5d9147807938b40fa8809d96e1b7fdc63" -> "sha256:0ac15e9a2683702ca8ab32592eede88fd068519dffd4e9db059940355ad6b901" [label=""];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" -> "sha256:44eb3a6d398d7c97acc6ad083c91b5701be6189e724fb231f2d5477c3328a3eb" [label=""];
  "sha256:0ac15e9a2683702ca8ab32592eede88fd068519dffd4e9db059940355ad6b901" -> "sha256:44eb3a6d398d7c97acc6ad083c91b5701be6189e724fb231f2d5477c3328a3eb" [label=""];
  "sha256:44eb3a6d398d7c97acc6ad083c91b5701be6189e724fb231f2d5477c3328a3eb" -> "sha256:7db0072eda222b422be7b67ae0df5e886c5d07d27d621c595582e510367be8de" [label=""];
}

