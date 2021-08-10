[app/sources/251161291.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:3d563a9af8b994ffe3906464633e19f54a20bc408be1567f3ed287bda59f7e48" [label="docker-image://docker.io/library/golang:1.8.3-alpine3.6" shape="ellipse"];
  "sha256:0fc49c2fe5b9960111e71ffb47196049911e780df8ddee39f0c26de32ecb1274" [label="/bin/sh -c apk update && apk upgrade &&     apk add --no-cache bash git openssh" shape="box"];
  "sha256:5bbf65bda319605348aa0422ededfeee35f37ea2c863011efe5eb159d3b07974" [label="local://context" shape="ellipse"];
  "sha256:d435d3ed320b47b763a4e5859e4662c36c250add66b8bee721b1ec4a9d6675d1" [label="copy{src=/*.go, dest=/go/src/github/agocs/rabbit-mq-stress-tester/}" shape="note"];
  "sha256:07ec4e5f8681ca55b70d3a006f7a2852500c34f49896bec64a312e693ad99a33" [label="/bin/sh -c cd $SRC && go get ./... && CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-extldflags \"-static\"' -o /rabbit-mq-stress-tester" shape="box"];
  "sha256:793dd6d803a3feb31d107079713a3b25855f0208fe115de259f4c7728037c377" [label="copy{src=/rabbit-mq-stress-tester, dest=/app/}" shape="note"];
  "sha256:05d68c00b9d373faec97c4a5b155d2acafefa3be7c779720267433681c6543b8" [label="mkdir{path=/app}" shape="note"];
  "sha256:146259dbe4ae25ecabc0cf782c54b5083884e8888c544e97daf8ad653c1d649b" [label="sha256:146259dbe4ae25ecabc0cf782c54b5083884e8888c544e97daf8ad653c1d649b" shape="plaintext"];
  "sha256:3d563a9af8b994ffe3906464633e19f54a20bc408be1567f3ed287bda59f7e48" -> "sha256:0fc49c2fe5b9960111e71ffb47196049911e780df8ddee39f0c26de32ecb1274" [label=""];
  "sha256:0fc49c2fe5b9960111e71ffb47196049911e780df8ddee39f0c26de32ecb1274" -> "sha256:d435d3ed320b47b763a4e5859e4662c36c250add66b8bee721b1ec4a9d6675d1" [label=""];
  "sha256:5bbf65bda319605348aa0422ededfeee35f37ea2c863011efe5eb159d3b07974" -> "sha256:d435d3ed320b47b763a4e5859e4662c36c250add66b8bee721b1ec4a9d6675d1" [label=""];
  "sha256:d435d3ed320b47b763a4e5859e4662c36c250add66b8bee721b1ec4a9d6675d1" -> "sha256:07ec4e5f8681ca55b70d3a006f7a2852500c34f49896bec64a312e693ad99a33" [label=""];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:793dd6d803a3feb31d107079713a3b25855f0208fe115de259f4c7728037c377" [label=""];
  "sha256:07ec4e5f8681ca55b70d3a006f7a2852500c34f49896bec64a312e693ad99a33" -> "sha256:793dd6d803a3feb31d107079713a3b25855f0208fe115de259f4c7728037c377" [label=""];
  "sha256:793dd6d803a3feb31d107079713a3b25855f0208fe115de259f4c7728037c377" -> "sha256:05d68c00b9d373faec97c4a5b155d2acafefa3be7c779720267433681c6543b8" [label=""];
  "sha256:05d68c00b9d373faec97c4a5b155d2acafefa3be7c779720267433681c6543b8" -> "sha256:146259dbe4ae25ecabc0cf782c54b5083884e8888c544e97daf8ad653c1d649b" [label=""];
}

