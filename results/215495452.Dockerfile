[app/sources/215495452.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:2071aa663e1738a42724f2ab263c17f4f728f2aa0545c87158b591aeefa76e08" [label="docker-image://docker.io/library/golang:1.10.4" shape="ellipse"];
  "sha256:e5ba898c70aef741600934fa657dd990c687a3cf8f09d4c13593efd28780c875" [label="mkdir{path=/go/src/github.com/heptio/contour}" shape="note"];
  "sha256:3c74ebf28dfd8018b2bd2bfe250fc3ef9d77ffd29e422e3f41b0abe0091154fd" [label="/bin/sh -c go get github.com/golang/dep/cmd/dep" shape="box"];
  "sha256:c08fe39e1620eb1296df8701ce0469f1d19a96586ebd61aa4997e50e6b979dcf" [label="local://context" shape="ellipse"];
  "sha256:a6deb8404d86ba8e21756721a969a5c44039c27848d45e0dc5cedb3cbf4de445" [label="copy{src=/Gopkg.toml, dest=/go/src/github.com/heptio/contour/},copy{src=/Gopkg.lock, dest=/go/src/github.com/heptio/contour/}" shape="note"];
  "sha256:1dfc77d97b259b349b8d8fcd4289bb7ffd7cf3ea2238fedd0475b712a7ea1cbd" [label="/bin/sh -c dep ensure -v -vendor-only" shape="box"];
  "sha256:53efa177d6a4fdbba7c41109bbf739074beccf8f55f726931567094938a9c62f" [label="copy{src=/cmd, dest=/go/src/github.com/heptio/contour/cmd}" shape="note"];
  "sha256:f8615cf226eee0856ee0b8189d8487c383172c80a476b2e390a04f68d5378126" [label="copy{src=/internal, dest=/go/src/github.com/heptio/contour/internal}" shape="note"];
  "sha256:0ba9505540872d106e53c890b4d3844f025ebc3cb4fa1e7d59c0c1cf6e6d8969" [label="copy{src=/apis, dest=/go/src/github.com/heptio/contour/apis}" shape="note"];
  "sha256:428609b51032d1d00b70eb68f53bba9dcab0b5aa4aec20a764538a55795dca43" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -o /go/bin/contour -ldflags=\"-w -s\" -v github.com/heptio/contour/cmd/contour" shape="box"];
  "sha256:452415e89db6dc4440d0056dc3a631e07d433431ef98877047ed54a1519078cf" [label="copy{src=/go/bin/contour, dest=/bin/contour}" shape="note"];
  "sha256:8df533cc4d7af0ceba4abb577696adbe773151b7a73205304dad7030f482384a" [label="sha256:8df533cc4d7af0ceba4abb577696adbe773151b7a73205304dad7030f482384a" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" [label=""];
  "sha256:2071aa663e1738a42724f2ab263c17f4f728f2aa0545c87158b591aeefa76e08" -> "sha256:e5ba898c70aef741600934fa657dd990c687a3cf8f09d4c13593efd28780c875" [label=""];
  "sha256:e5ba898c70aef741600934fa657dd990c687a3cf8f09d4c13593efd28780c875" -> "sha256:3c74ebf28dfd8018b2bd2bfe250fc3ef9d77ffd29e422e3f41b0abe0091154fd" [label=""];
  "sha256:3c74ebf28dfd8018b2bd2bfe250fc3ef9d77ffd29e422e3f41b0abe0091154fd" -> "sha256:a6deb8404d86ba8e21756721a969a5c44039c27848d45e0dc5cedb3cbf4de445" [label=""];
  "sha256:c08fe39e1620eb1296df8701ce0469f1d19a96586ebd61aa4997e50e6b979dcf" -> "sha256:a6deb8404d86ba8e21756721a969a5c44039c27848d45e0dc5cedb3cbf4de445" [label=""];
  "sha256:a6deb8404d86ba8e21756721a969a5c44039c27848d45e0dc5cedb3cbf4de445" -> "sha256:1dfc77d97b259b349b8d8fcd4289bb7ffd7cf3ea2238fedd0475b712a7ea1cbd" [label=""];
  "sha256:1dfc77d97b259b349b8d8fcd4289bb7ffd7cf3ea2238fedd0475b712a7ea1cbd" -> "sha256:53efa177d6a4fdbba7c41109bbf739074beccf8f55f726931567094938a9c62f" [label=""];
  "sha256:c08fe39e1620eb1296df8701ce0469f1d19a96586ebd61aa4997e50e6b979dcf" -> "sha256:53efa177d6a4fdbba7c41109bbf739074beccf8f55f726931567094938a9c62f" [label=""];
  "sha256:53efa177d6a4fdbba7c41109bbf739074beccf8f55f726931567094938a9c62f" -> "sha256:f8615cf226eee0856ee0b8189d8487c383172c80a476b2e390a04f68d5378126" [label=""];
  "sha256:c08fe39e1620eb1296df8701ce0469f1d19a96586ebd61aa4997e50e6b979dcf" -> "sha256:f8615cf226eee0856ee0b8189d8487c383172c80a476b2e390a04f68d5378126" [label=""];
  "sha256:f8615cf226eee0856ee0b8189d8487c383172c80a476b2e390a04f68d5378126" -> "sha256:0ba9505540872d106e53c890b4d3844f025ebc3cb4fa1e7d59c0c1cf6e6d8969" [label=""];
  "sha256:c08fe39e1620eb1296df8701ce0469f1d19a96586ebd61aa4997e50e6b979dcf" -> "sha256:0ba9505540872d106e53c890b4d3844f025ebc3cb4fa1e7d59c0c1cf6e6d8969" [label=""];
  "sha256:0ba9505540872d106e53c890b4d3844f025ebc3cb4fa1e7d59c0c1cf6e6d8969" -> "sha256:428609b51032d1d00b70eb68f53bba9dcab0b5aa4aec20a764538a55795dca43" [label=""];
  "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" -> "sha256:452415e89db6dc4440d0056dc3a631e07d433431ef98877047ed54a1519078cf" [label=""];
  "sha256:428609b51032d1d00b70eb68f53bba9dcab0b5aa4aec20a764538a55795dca43" -> "sha256:452415e89db6dc4440d0056dc3a631e07d433431ef98877047ed54a1519078cf" [label=""];
  "sha256:452415e89db6dc4440d0056dc3a631e07d433431ef98877047ed54a1519078cf" -> "sha256:8df533cc4d7af0ceba4abb577696adbe773151b7a73205304dad7030f482384a" [label=""];
}

