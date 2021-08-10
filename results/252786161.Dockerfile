[app/sources/252786161.Dockerfile]
digraph {
  "sha256:af4f1e4331947a1b213ea91361fc7c77e8b84bf3b4106498f95e5004dd2c38ac" [label="docker-image://docker.io/crosbymichael/golang@sha256:0cc5ab1b17058bd6042b3e3f1d38a1522508727da98cbe9c8fbd0132f40d73d1" shape="ellipse"];
  "sha256:d1844002239fca8682511bdd4e07b90a490fc082a257fa5f77d45356537a482d" [label="local://context" shape="ellipse"];
  "sha256:93143d4638e113b6f49940541d1f7684b00b33fd3b85939475809412ee6e612f" [label="copy{src=/, dest=/go/src/github.com/skynetservices/skydns}" shape="note"];
  "sha256:24ab19aa626e71d2cb6852b2f61b3c7cd4feacb26a1e08c2df72200ff6aab64d" [label="/bin/sh -c go get github.com/skynetservices/skydns" shape="box"];
  "sha256:e7a04b335d1e2cbca7369dbf05cf624c4eae66867475de4ae2e12137151767f2" [label="sha256:e7a04b335d1e2cbca7369dbf05cf624c4eae66867475de4ae2e12137151767f2" shape="plaintext"];
  "sha256:af4f1e4331947a1b213ea91361fc7c77e8b84bf3b4106498f95e5004dd2c38ac" -> "sha256:93143d4638e113b6f49940541d1f7684b00b33fd3b85939475809412ee6e612f" [label=""];
  "sha256:d1844002239fca8682511bdd4e07b90a490fc082a257fa5f77d45356537a482d" -> "sha256:93143d4638e113b6f49940541d1f7684b00b33fd3b85939475809412ee6e612f" [label=""];
  "sha256:93143d4638e113b6f49940541d1f7684b00b33fd3b85939475809412ee6e612f" -> "sha256:24ab19aa626e71d2cb6852b2f61b3c7cd4feacb26a1e08c2df72200ff6aab64d" [label=""];
  "sha256:24ab19aa626e71d2cb6852b2f61b3c7cd4feacb26a1e08c2df72200ff6aab64d" -> "sha256:e7a04b335d1e2cbca7369dbf05cf624c4eae66867475de4ae2e12137151767f2" [label=""];
}

