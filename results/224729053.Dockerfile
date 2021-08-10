[app/sources/224729053.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:b82d72d47ff5fee27a2a56d06a2f01f22c3f126b62acb627b7b5ff819a36ed59" [label="/bin/sh -c apk --no-cache update &&     apk --no-cache upgrade &&     apk add --no-cache ca-certificates tzdata &&     adduser -D tidepool" shape="box"];
  "sha256:a0fde005863248f36ca54230957068d280333cc0dff611dd54a7163a5a5977cd" [label="mkdir{path=/home/tidepool}" shape="note"];
  "sha256:8bc8228007706f7f147b67d4de0ca14514c6924c0fd9289b4ce246df327f188a" [label="docker-image://docker.io/library/golang:1.11.4-alpine" shape="ellipse"];
  "sha256:484404adec36169a879244aef36fef4c520e458ab08522c34404770a58ba9186" [label="apk add --no-cache git make tzdata" shape="box"];
  "sha256:9620e945bff1f8c0ba36c46c4c66a4ca7a4388c4aab56ecdd7711f36df7c4284" [label="go get github.com/githubnemo/CompileDaemon" shape="box"];
  "sha256:ef7a9a052723cc3dd4afca2765cdb2010c61ac167193c612f9eea95d99c73dea" [label="mkdir{path=/go/src/github.com/tidepool-org/platform}" shape="note"];
  "sha256:269bbb4c227e214528c0c479aab75c67e2ab8d025809ccc98c83bc84b3dec07a" [label="local://context" shape="ellipse"];
  "sha256:cda1eb601aaf8c93e7a7ecd56210c4037a9df81d6e61fefde30dff0750f6c71b" [label="copy{src=/, dest=/go/src/github.com/tidepool-org/platform/}" shape="note"];
  "sha256:856a8640607732cb26b98a5807c4aaeb2f80b190b72b3f43c47b5b32ec4d9cbc" [label="make service-build" shape="box"];
  "sha256:9e466950f329ea4117c7949644993adcd76bdef82abd9742e031737fb73a1376" [label="copy{src=/go/src/github.com/tidepool-org/platform/_bin/services/notification, dest=/home/tidepool/}" shape="note"];
  "sha256:3982c78462d396e94197c031880854a6f03dfd95dfc01b70ff678f7d4fa75468" [label="sha256:3982c78462d396e94197c031880854a6f03dfd95dfc01b70ff678f7d4fa75468" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:b82d72d47ff5fee27a2a56d06a2f01f22c3f126b62acb627b7b5ff819a36ed59" [label=""];
  "sha256:b82d72d47ff5fee27a2a56d06a2f01f22c3f126b62acb627b7b5ff819a36ed59" -> "sha256:a0fde005863248f36ca54230957068d280333cc0dff611dd54a7163a5a5977cd" [label=""];
  "sha256:8bc8228007706f7f147b67d4de0ca14514c6924c0fd9289b4ce246df327f188a" -> "sha256:484404adec36169a879244aef36fef4c520e458ab08522c34404770a58ba9186" [label=""];
  "sha256:484404adec36169a879244aef36fef4c520e458ab08522c34404770a58ba9186" -> "sha256:9620e945bff1f8c0ba36c46c4c66a4ca7a4388c4aab56ecdd7711f36df7c4284" [label=""];
  "sha256:9620e945bff1f8c0ba36c46c4c66a4ca7a4388c4aab56ecdd7711f36df7c4284" -> "sha256:ef7a9a052723cc3dd4afca2765cdb2010c61ac167193c612f9eea95d99c73dea" [label=""];
  "sha256:ef7a9a052723cc3dd4afca2765cdb2010c61ac167193c612f9eea95d99c73dea" -> "sha256:cda1eb601aaf8c93e7a7ecd56210c4037a9df81d6e61fefde30dff0750f6c71b" [label=""];
  "sha256:269bbb4c227e214528c0c479aab75c67e2ab8d025809ccc98c83bc84b3dec07a" -> "sha256:cda1eb601aaf8c93e7a7ecd56210c4037a9df81d6e61fefde30dff0750f6c71b" [label=""];
  "sha256:cda1eb601aaf8c93e7a7ecd56210c4037a9df81d6e61fefde30dff0750f6c71b" -> "sha256:856a8640607732cb26b98a5807c4aaeb2f80b190b72b3f43c47b5b32ec4d9cbc" [label=""];
  "sha256:a0fde005863248f36ca54230957068d280333cc0dff611dd54a7163a5a5977cd" -> "sha256:9e466950f329ea4117c7949644993adcd76bdef82abd9742e031737fb73a1376" [label=""];
  "sha256:856a8640607732cb26b98a5807c4aaeb2f80b190b72b3f43c47b5b32ec4d9cbc" -> "sha256:9e466950f329ea4117c7949644993adcd76bdef82abd9742e031737fb73a1376" [label=""];
  "sha256:9e466950f329ea4117c7949644993adcd76bdef82abd9742e031737fb73a1376" -> "sha256:3982c78462d396e94197c031880854a6f03dfd95dfc01b70ff678f7d4fa75468" [label=""];
}

