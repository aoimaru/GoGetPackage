[app/sources/463807602.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:af0c3e60990a7b4b3d1043e1d15596525ea36896631b65e2eee87e0c27fb2c5d" [label="mkdir{path=/app}" shape="note"];
  "sha256:47fee6339b5066a1187dc71ce2174a4a797a06127030c7abb7bc9b3032a0063a" [label="docker-image://docker.io/library/golang:1.10-alpine3.8" shape="ellipse"];
  "sha256:7769783773df81986fa8fc3680d5acfaf1b21f1efb0f632fe2b9bb961f765652" [label="/bin/sh -c apk add --update make git" shape="box"];
  "sha256:e08f95a992f1b440260b05c943bb42303d7a7cd9778c0da5d8565720a1e0359f" [label="mkdir{path=/go/src/github.com/mhamrah/grpc-example}" shape="note"];
  "sha256:9b16636a7147bab85201b524109f6101719d18748c252400ae6f353d91be88b4" [label="local://context" shape="ellipse"];
  "sha256:54ca85166b20f1300772c2b3b10779aa26403bad5158ec1a26dbaa4ae8b98228" [label="copy{src=/, dest=/go/src/github.com/mhamrah/grpc-example/}" shape="note"];
  "sha256:4d0d2a87cdf586f465c3d89a1049e87c0635fbe4b0872c5a7a890b561a6575db" [label="/bin/sh -c make deps" shape="box"];
  "sha256:f576055ef5010c43e244f2f4f4fd4fbc6f0a6dee4f0a41b8ede51dafb69a0a21" [label="/bin/sh -c go build -o bin/todos-server todos/server/cmd/main.go" shape="box"];
  "sha256:715fdc9be8983e5799c9733cb27bc767234745aa880dcba2cf1279d74bab322a" [label="/bin/sh -c go build -o bin/todos-client todos/client/cmd/main.go" shape="box"];
  "sha256:367cd1f74c5ece1ec79080218a2ef66edef6b73a9751553991157d85161e6eac" [label="copy{src=/go/src/github.com/mhamrah/grpc-example/bin/todos-client, dest=/app/client}" shape="note"];
  "sha256:398ea1ef8cb1d807a74ab303797ad54ff41a9005275503f82dae04d3f7c4f087" [label="sha256:398ea1ef8cb1d807a74ab303797ad54ff41a9005275503f82dae04d3f7c4f087" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:af0c3e60990a7b4b3d1043e1d15596525ea36896631b65e2eee87e0c27fb2c5d" [label=""];
  "sha256:47fee6339b5066a1187dc71ce2174a4a797a06127030c7abb7bc9b3032a0063a" -> "sha256:7769783773df81986fa8fc3680d5acfaf1b21f1efb0f632fe2b9bb961f765652" [label=""];
  "sha256:7769783773df81986fa8fc3680d5acfaf1b21f1efb0f632fe2b9bb961f765652" -> "sha256:e08f95a992f1b440260b05c943bb42303d7a7cd9778c0da5d8565720a1e0359f" [label=""];
  "sha256:e08f95a992f1b440260b05c943bb42303d7a7cd9778c0da5d8565720a1e0359f" -> "sha256:54ca85166b20f1300772c2b3b10779aa26403bad5158ec1a26dbaa4ae8b98228" [label=""];
  "sha256:9b16636a7147bab85201b524109f6101719d18748c252400ae6f353d91be88b4" -> "sha256:54ca85166b20f1300772c2b3b10779aa26403bad5158ec1a26dbaa4ae8b98228" [label=""];
  "sha256:54ca85166b20f1300772c2b3b10779aa26403bad5158ec1a26dbaa4ae8b98228" -> "sha256:4d0d2a87cdf586f465c3d89a1049e87c0635fbe4b0872c5a7a890b561a6575db" [label=""];
  "sha256:4d0d2a87cdf586f465c3d89a1049e87c0635fbe4b0872c5a7a890b561a6575db" -> "sha256:f576055ef5010c43e244f2f4f4fd4fbc6f0a6dee4f0a41b8ede51dafb69a0a21" [label=""];
  "sha256:f576055ef5010c43e244f2f4f4fd4fbc6f0a6dee4f0a41b8ede51dafb69a0a21" -> "sha256:715fdc9be8983e5799c9733cb27bc767234745aa880dcba2cf1279d74bab322a" [label=""];
  "sha256:af0c3e60990a7b4b3d1043e1d15596525ea36896631b65e2eee87e0c27fb2c5d" -> "sha256:367cd1f74c5ece1ec79080218a2ef66edef6b73a9751553991157d85161e6eac" [label=""];
  "sha256:715fdc9be8983e5799c9733cb27bc767234745aa880dcba2cf1279d74bab322a" -> "sha256:367cd1f74c5ece1ec79080218a2ef66edef6b73a9751553991157d85161e6eac" [label=""];
  "sha256:367cd1f74c5ece1ec79080218a2ef66edef6b73a9751553991157d85161e6eac" -> "sha256:398ea1ef8cb1d807a74ab303797ad54ff41a9005275503f82dae04d3f7c4f087" [label=""];
}

