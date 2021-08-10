[app/sources/428756857.Dockerfile]
digraph {
  "sha256:4f7ea685f6587cb3a05cf08d363c3097e4b76c251f9da7903b9a0a28dc8be5c5" [label="docker-image://docker.io/library/alpine@sha256:46e71df1e5191ab8b8034c5189e325258ec44ea739bba1e5645cff83c9048ff1" shape="ellipse"];
  "sha256:e18682bbf4b5907cd74bad48562587ab71396d9d7adddb576889b00764d5efe1" [label="/bin/sh -c apk update && apk add ca-certificates && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:b3a05f15eff62addef8bfb7833fa5540683b378f5161b8af92805e8b96213a08" [label="local://context" shape="ellipse"];
  "sha256:2d3344bcdecb059be4c9704a7213f5ab3dc6cd76197596ca3e1851cc2aea7a6c" [label="copy{src=/vendor, dest=/go/src}" shape="note"];
  "sha256:e69dcd01d8aebcfec8a9bdb96a55df318bc3030a78e82fcf50f85d443a20622a" [label="copy{src=/pkg, dest=/go/src/github.com/toricls/ecs-taskmetadata-cloudwatch/pkg/}" shape="note"];
  "sha256:4e1958a3a521865260ffcd391a78f6084d2ad57a3020a7d2bc309c999e3d687b" [label="copy{src=/taskmetadata-cloudwatch.go, dest=/in/taskmetadata-cloudwatch.go}" shape="note"];
  "sha256:02f18ed7712c1e82dc45ef44d66249e0b14ba9c686acb0cf958a97d79b63f836" [label="/bin/sh -c CGO_ENABLED=0 GO_PATH=/go go build -a -x -ldflags '-s' -o /out/taskmetadata-cloudwatch /in/taskmetadata-cloudwatch.go" shape="box"];
  "sha256:c38171cefaad89af415d922590f1155e09c8dd0b395bdabf5fd77aaa62bb9233" [label="copy{src=/out/taskmetadata-cloudwatch, dest=/}" shape="note"];
  "sha256:ae23f59d84e85a27b71053ba80c97f050e3f7c67172bbd6069397a0c39f4a86b" [label="sha256:ae23f59d84e85a27b71053ba80c97f050e3f7c67172bbd6069397a0c39f4a86b" shape="plaintext"];
  "sha256:4f7ea685f6587cb3a05cf08d363c3097e4b76c251f9da7903b9a0a28dc8be5c5" -> "sha256:e18682bbf4b5907cd74bad48562587ab71396d9d7adddb576889b00764d5efe1" [label=""];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:2d3344bcdecb059be4c9704a7213f5ab3dc6cd76197596ca3e1851cc2aea7a6c" [label=""];
  "sha256:b3a05f15eff62addef8bfb7833fa5540683b378f5161b8af92805e8b96213a08" -> "sha256:2d3344bcdecb059be4c9704a7213f5ab3dc6cd76197596ca3e1851cc2aea7a6c" [label=""];
  "sha256:2d3344bcdecb059be4c9704a7213f5ab3dc6cd76197596ca3e1851cc2aea7a6c" -> "sha256:e69dcd01d8aebcfec8a9bdb96a55df318bc3030a78e82fcf50f85d443a20622a" [label=""];
  "sha256:b3a05f15eff62addef8bfb7833fa5540683b378f5161b8af92805e8b96213a08" -> "sha256:e69dcd01d8aebcfec8a9bdb96a55df318bc3030a78e82fcf50f85d443a20622a" [label=""];
  "sha256:e69dcd01d8aebcfec8a9bdb96a55df318bc3030a78e82fcf50f85d443a20622a" -> "sha256:4e1958a3a521865260ffcd391a78f6084d2ad57a3020a7d2bc309c999e3d687b" [label=""];
  "sha256:b3a05f15eff62addef8bfb7833fa5540683b378f5161b8af92805e8b96213a08" -> "sha256:4e1958a3a521865260ffcd391a78f6084d2ad57a3020a7d2bc309c999e3d687b" [label=""];
  "sha256:4e1958a3a521865260ffcd391a78f6084d2ad57a3020a7d2bc309c999e3d687b" -> "sha256:02f18ed7712c1e82dc45ef44d66249e0b14ba9c686acb0cf958a97d79b63f836" [label=""];
  "sha256:e18682bbf4b5907cd74bad48562587ab71396d9d7adddb576889b00764d5efe1" -> "sha256:c38171cefaad89af415d922590f1155e09c8dd0b395bdabf5fd77aaa62bb9233" [label=""];
  "sha256:02f18ed7712c1e82dc45ef44d66249e0b14ba9c686acb0cf958a97d79b63f836" -> "sha256:c38171cefaad89af415d922590f1155e09c8dd0b395bdabf5fd77aaa62bb9233" [label=""];
  "sha256:c38171cefaad89af415d922590f1155e09c8dd0b395bdabf5fd77aaa62bb9233" -> "sha256:ae23f59d84e85a27b71053ba80c97f050e3f7c67172bbd6069397a0c39f4a86b" [label=""];
}

