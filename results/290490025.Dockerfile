[app/sources/290490025.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:00381d9f6732800356b1760afbf0809757ace91bdfd4713d04024abe1e8326b6" [label="mkdir{path=/root}" shape="note"];
  "sha256:2071aa663e1738a42724f2ab263c17f4f728f2aa0545c87158b591aeefa76e08" [label="docker-image://docker.io/library/golang:1.10.4" shape="ellipse"];
  "sha256:3a78f870be3e322d8b87ee549b1b5a3e7a887cfa1a9e43f69676cfb8facd7ec9" [label="/bin/sh -c mkdir -p /go/src/github.com/openfaas/faas-swarm/" shape="box"];
  "sha256:4ad354caee5c45acfd71e0ae41d536aee84ef901b767e551e51b88bdbfd79361" [label="mkdir{path=/go/src/github.com/openfaas/faas-swarm}" shape="note"];
  "sha256:280d55d35812a0dc5eff7c49e1758c940893ec37b956fcb91945c1cb1492d8b1" [label="local://context" shape="ellipse"];
  "sha256:954c23351a6c096cf0ca5739f5adb55c354384fa93d33c35c2fb8655b2ac7860" [label="copy{src=/, dest=/go/src/github.com/openfaas/faas-swarm/}" shape="note"];
  "sha256:bcbf63e2527dac54436a2354d241199646ff28099b75dc5d87a9a7c91e5b0eec" [label="/bin/sh -c gofmt -l -d $(find . -type f -name '*.go' -not -path \"./vendor/*\")   && go test $(go list ./... | grep -v /vendor/) -cover   && VERSION=$(git describe --all --exact-match `git rev-parse HEAD` | grep tags | sed 's/tags\\///')   && GIT_COMMIT=$(git rev-list -1 HEAD)   && CGO_ENABLED=0 GOOS=linux go build --ldflags \"-s -w   -X github.com/openfaas/faas-swarm/version.GitCommit=${GIT_COMMIT}  -X github.com/openfaas/faas-swarm/version.Version=${VERSION}\"   -a -installsuffix cgo -o faas-swarm ." shape="box"];
  "sha256:5046e61ef4a6c1ac9ad5d67749ee5230892341156d49788758ec04ea001fc650" [label="copy{src=/go/src/github.com/openfaas/faas-swarm/faas-swarm, dest=/root/}" shape="note"];
  "sha256:9412bca4cf627cc0c4dc2076ab85e44564abcee5388bd0ed4302aaca8b4843e8" [label="sha256:9412bca4cf627cc0c4dc2076ab85e44564abcee5388bd0ed4302aaca8b4843e8" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" [label=""];
  "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" -> "sha256:00381d9f6732800356b1760afbf0809757ace91bdfd4713d04024abe1e8326b6" [label=""];
  "sha256:2071aa663e1738a42724f2ab263c17f4f728f2aa0545c87158b591aeefa76e08" -> "sha256:3a78f870be3e322d8b87ee549b1b5a3e7a887cfa1a9e43f69676cfb8facd7ec9" [label=""];
  "sha256:3a78f870be3e322d8b87ee549b1b5a3e7a887cfa1a9e43f69676cfb8facd7ec9" -> "sha256:4ad354caee5c45acfd71e0ae41d536aee84ef901b767e551e51b88bdbfd79361" [label=""];
  "sha256:4ad354caee5c45acfd71e0ae41d536aee84ef901b767e551e51b88bdbfd79361" -> "sha256:954c23351a6c096cf0ca5739f5adb55c354384fa93d33c35c2fb8655b2ac7860" [label=""];
  "sha256:280d55d35812a0dc5eff7c49e1758c940893ec37b956fcb91945c1cb1492d8b1" -> "sha256:954c23351a6c096cf0ca5739f5adb55c354384fa93d33c35c2fb8655b2ac7860" [label=""];
  "sha256:954c23351a6c096cf0ca5739f5adb55c354384fa93d33c35c2fb8655b2ac7860" -> "sha256:bcbf63e2527dac54436a2354d241199646ff28099b75dc5d87a9a7c91e5b0eec" [label=""];
  "sha256:00381d9f6732800356b1760afbf0809757ace91bdfd4713d04024abe1e8326b6" -> "sha256:5046e61ef4a6c1ac9ad5d67749ee5230892341156d49788758ec04ea001fc650" [label=""];
  "sha256:bcbf63e2527dac54436a2354d241199646ff28099b75dc5d87a9a7c91e5b0eec" -> "sha256:5046e61ef4a6c1ac9ad5d67749ee5230892341156d49788758ec04ea001fc650" [label=""];
  "sha256:5046e61ef4a6c1ac9ad5d67749ee5230892341156d49788758ec04ea001fc650" -> "sha256:9412bca4cf627cc0c4dc2076ab85e44564abcee5388bd0ed4302aaca8b4843e8" [label=""];
}

