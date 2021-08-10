[app/sources/324277087.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:97df99e7344be24d2b6d9296f25ef9566130262ed8a6adda4fce40b748247781" [label="/bin/sh -c apk add --update git" shape="box"];
  "sha256:6164dd0e78f9ce7a6064a9c6b0e427d9c0452f2788b27b9ea9cbf849c01ae3d4" [label="/bin/sh -c mkdir -p /root/src" shape="box"];
  "sha256:e767865c001c0f5c1905a5ffa6623d391941d5a777b63bdbcdd9607fcb4fe435" [label="mkdir{path=/root/src}" shape="note"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:065bff162ec39c35a7b8ee04de34a2d35ae69a9e355c0b8f78529a98b8938eb0" [label="mkdir{path=/go/src/component-alpine-cmd}" shape="note"];
  "sha256:80c86887c878907f52273c6e4275f952d52deffa1c30d5a7fa0ad978eab07f57" [label="local://context" shape="ellipse"];
  "sha256:76b2ec35d24165fee2a4e15fd25afc18d750cdcf3731ae579340828e539a45f4" [label="copy{src=/, dest=/go/src/component-alpine-cmd}" shape="note"];
  "sha256:f58bd1532ab8ce8ee9007ce6d2c9498a17044e205706892735bc1d56e9a04301" [label="/bin/sh -c set -ex && go build -v -o /go/bin/component-alpine-cmd -gcflags '-N -l' ./*.go" shape="box"];
  "sha256:c353e84d8cf0ae259ad3d2e89d7e707ecd4458612c4a139d392675551278dca7" [label="copy{src=/go/bin/component-alpine-cmd, dest=/usr/bin/}" shape="note"];
  "sha256:fd32e338d57297fd4ee90481f9db792fbe34333fdb33abc232093ddcc00a1509" [label="sha256:fd32e338d57297fd4ee90481f9db792fbe34333fdb33abc232093ddcc00a1509" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:97df99e7344be24d2b6d9296f25ef9566130262ed8a6adda4fce40b748247781" [label=""];
  "sha256:97df99e7344be24d2b6d9296f25ef9566130262ed8a6adda4fce40b748247781" -> "sha256:6164dd0e78f9ce7a6064a9c6b0e427d9c0452f2788b27b9ea9cbf849c01ae3d4" [label=""];
  "sha256:6164dd0e78f9ce7a6064a9c6b0e427d9c0452f2788b27b9ea9cbf849c01ae3d4" -> "sha256:e767865c001c0f5c1905a5ffa6623d391941d5a777b63bdbcdd9607fcb4fe435" [label=""];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:065bff162ec39c35a7b8ee04de34a2d35ae69a9e355c0b8f78529a98b8938eb0" [label=""];
  "sha256:065bff162ec39c35a7b8ee04de34a2d35ae69a9e355c0b8f78529a98b8938eb0" -> "sha256:76b2ec35d24165fee2a4e15fd25afc18d750cdcf3731ae579340828e539a45f4" [label=""];
  "sha256:80c86887c878907f52273c6e4275f952d52deffa1c30d5a7fa0ad978eab07f57" -> "sha256:76b2ec35d24165fee2a4e15fd25afc18d750cdcf3731ae579340828e539a45f4" [label=""];
  "sha256:76b2ec35d24165fee2a4e15fd25afc18d750cdcf3731ae579340828e539a45f4" -> "sha256:f58bd1532ab8ce8ee9007ce6d2c9498a17044e205706892735bc1d56e9a04301" [label=""];
  "sha256:e767865c001c0f5c1905a5ffa6623d391941d5a777b63bdbcdd9607fcb4fe435" -> "sha256:c353e84d8cf0ae259ad3d2e89d7e707ecd4458612c4a139d392675551278dca7" [label=""];
  "sha256:f58bd1532ab8ce8ee9007ce6d2c9498a17044e205706892735bc1d56e9a04301" -> "sha256:c353e84d8cf0ae259ad3d2e89d7e707ecd4458612c4a139d392675551278dca7" [label=""];
  "sha256:c353e84d8cf0ae259ad3d2e89d7e707ecd4458612c4a139d392675551278dca7" -> "sha256:fd32e338d57297fd4ee90481f9db792fbe34333fdb33abc232093ddcc00a1509" [label=""];
}

