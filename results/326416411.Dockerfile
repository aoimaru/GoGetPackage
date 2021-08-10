[app/sources/326416411.Dockerfile]
digraph {
  "sha256:1219779c4770a77467e26ec10e8debdcf4027479410a8038647dfb7bc7afcd82" [label="docker-image://docker.io/library/golang:1.12.1-alpine3.9" shape="ellipse"];
  "sha256:502b9415955bddb6703d75bc42e9fa568b01afc32a691f05240ea1916c6f2861" [label="/bin/sh -c apk -U add bash git gcc musl-dev docker vim less file curl wget ca-certificates" shape="box"];
  "sha256:2526a968833c0d1f1a3a66df16c7ed457510129a2dd829ee9e86a3444f6ede12" [label="/bin/sh -c go get -d golang.org/x/lint/golint &&     git -C /go/src/golang.org/x/lint/golint checkout -b current 06c8688daad7faa9da5a0c2f163a3d14aac986ca &&     go install golang.org/x/lint/golint &&     rm -rf /go/src /go/pkg" shape="box"];
  "sha256:7c105130a01ad425aa307ec94b40251ec8e66811751f6d1195fd190a1f6058a5" [label="/bin/sh -c mkdir -p /go/src/golang.org/x &&     cd /go/src/golang.org/x && git clone https://github.com/golang/tools &&     git -C /go/src/golang.org/x/tools checkout -b current aa82965741a9fecd12b026fbb3d3c6ed3231b8f8 &&     go install golang.org/x/tools/cmd/goimports" shape="box"];
  "sha256:a5566dd130c5c485193a01cd30111d76777c5e607caf44f1d4c9c4b950d57924" [label="/bin/sh -c rm -rf /go/src /go/pkg" shape="box"];
  "sha256:e8c7a0e382b3e20dd6de2ce39a7e2cb12a4594abe079271c04080f109ed442cd" [label="/bin/sh -c if [ \"${ARCH}\" == \"amd64\" ]; then         curl -sL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s v1.15.0;     fi" shape="box"];
  "sha256:60444781898acc213da3c6814bbe9647c1113f5cce95e179d70eadd3182faf6a" [label="mkdir{path=/go/src/github.com/rancher/gitwatcher}" shape="note"];
  "sha256:6896d610be71014b8e2b030020c2c75c3e5be1f15c6da674df8fbb3590a4c829" [label="sha256:6896d610be71014b8e2b030020c2c75c3e5be1f15c6da674df8fbb3590a4c829" shape="plaintext"];
  "sha256:1219779c4770a77467e26ec10e8debdcf4027479410a8038647dfb7bc7afcd82" -> "sha256:502b9415955bddb6703d75bc42e9fa568b01afc32a691f05240ea1916c6f2861" [label=""];
  "sha256:502b9415955bddb6703d75bc42e9fa568b01afc32a691f05240ea1916c6f2861" -> "sha256:2526a968833c0d1f1a3a66df16c7ed457510129a2dd829ee9e86a3444f6ede12" [label=""];
  "sha256:2526a968833c0d1f1a3a66df16c7ed457510129a2dd829ee9e86a3444f6ede12" -> "sha256:7c105130a01ad425aa307ec94b40251ec8e66811751f6d1195fd190a1f6058a5" [label=""];
  "sha256:7c105130a01ad425aa307ec94b40251ec8e66811751f6d1195fd190a1f6058a5" -> "sha256:a5566dd130c5c485193a01cd30111d76777c5e607caf44f1d4c9c4b950d57924" [label=""];
  "sha256:a5566dd130c5c485193a01cd30111d76777c5e607caf44f1d4c9c4b950d57924" -> "sha256:e8c7a0e382b3e20dd6de2ce39a7e2cb12a4594abe079271c04080f109ed442cd" [label=""];
  "sha256:e8c7a0e382b3e20dd6de2ce39a7e2cb12a4594abe079271c04080f109ed442cd" -> "sha256:60444781898acc213da3c6814bbe9647c1113f5cce95e179d70eadd3182faf6a" [label=""];
  "sha256:60444781898acc213da3c6814bbe9647c1113f5cce95e179d70eadd3182faf6a" -> "sha256:6896d610be71014b8e2b030020c2c75c3e5be1f15c6da674df8fbb3590a4c829" [label=""];
}

