[app/sources/286122877.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:096047481b337ce84fc0be476643151cb340a52fd893ef849324698264980108" [label="docker-image://docker.io/library/golang:1.8-alpine" shape="ellipse"];
  "sha256:d55b7acc0f2788b1f1fd3a5055c1d4fdeadb594baea5825b8e0db0f58b820842" [label="/bin/sh -c apk --no-cache add make git" shape="box"];
  "sha256:3e0e7ebcfa097bf72c3a6becaf2eebc58da26044d991a45510a9f07c99d39057" [label="/bin/sh -c mkdir -p /go/src/github.com/garethr/kubetest/" shape="box"];
  "sha256:debddea6a238f7a8c3b71230752fb6207cead72dc2a2ac3da1801ddad43e6fe3" [label="local://context" shape="ellipse"];
  "sha256:5b3ce15a37eb7079a466647bf37acb808a167d617d0b532fd6503096c68b0acf" [label="copy{src=/, dest=/go/src/github.com/garethr/kubetest/}" shape="note"];
  "sha256:c956b92ad831f82859ef20f1621f9f1153cc80ca8fd066745e19fa7a183aec43" [label="mkdir{path=/go/src/github.com/garethr/kubetest}" shape="note"];
  "sha256:6d4125fa697c719a35d01563f24e9e7ddc7937d479d2d3759474046127d1b9e0" [label="/bin/sh -c make linux" shape="box"];
  "sha256:d4e0238f3735e74d9a1fe717b0a062cccbac8d0f4c89a9892acb8f59e850661b" [label="copy{src=/go/src/github.com/garethr/kubetest/bin/linux/amd64/kubetest, dest=/}" shape="note"];
  "sha256:60615a77733bd54e6725da8d311004697a3fc325aad70c92dabfcfe01bf4b5cd" [label="sha256:60615a77733bd54e6725da8d311004697a3fc325aad70c92dabfcfe01bf4b5cd" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label=""];
  "sha256:096047481b337ce84fc0be476643151cb340a52fd893ef849324698264980108" -> "sha256:d55b7acc0f2788b1f1fd3a5055c1d4fdeadb594baea5825b8e0db0f58b820842" [label=""];
  "sha256:d55b7acc0f2788b1f1fd3a5055c1d4fdeadb594baea5825b8e0db0f58b820842" -> "sha256:3e0e7ebcfa097bf72c3a6becaf2eebc58da26044d991a45510a9f07c99d39057" [label=""];
  "sha256:3e0e7ebcfa097bf72c3a6becaf2eebc58da26044d991a45510a9f07c99d39057" -> "sha256:5b3ce15a37eb7079a466647bf37acb808a167d617d0b532fd6503096c68b0acf" [label=""];
  "sha256:debddea6a238f7a8c3b71230752fb6207cead72dc2a2ac3da1801ddad43e6fe3" -> "sha256:5b3ce15a37eb7079a466647bf37acb808a167d617d0b532fd6503096c68b0acf" [label=""];
  "sha256:5b3ce15a37eb7079a466647bf37acb808a167d617d0b532fd6503096c68b0acf" -> "sha256:c956b92ad831f82859ef20f1621f9f1153cc80ca8fd066745e19fa7a183aec43" [label=""];
  "sha256:c956b92ad831f82859ef20f1621f9f1153cc80ca8fd066745e19fa7a183aec43" -> "sha256:6d4125fa697c719a35d01563f24e9e7ddc7937d479d2d3759474046127d1b9e0" [label=""];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" -> "sha256:d4e0238f3735e74d9a1fe717b0a062cccbac8d0f4c89a9892acb8f59e850661b" [label=""];
  "sha256:6d4125fa697c719a35d01563f24e9e7ddc7937d479d2d3759474046127d1b9e0" -> "sha256:d4e0238f3735e74d9a1fe717b0a062cccbac8d0f4c89a9892acb8f59e850661b" [label=""];
  "sha256:d4e0238f3735e74d9a1fe717b0a062cccbac8d0f4c89a9892acb8f59e850661b" -> "sha256:60615a77733bd54e6725da8d311004697a3fc325aad70c92dabfcfe01bf4b5cd" [label=""];
}

