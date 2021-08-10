[app/sources/268106001.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:98f9a56829a013fe548314d8602cfae7dae675275e0a8a45b5ddd48ca4dc0912" [label="/bin/sh -c apk --no-cache add ca-certificates shared-mime-info mailcap git build-base &&  go get -u github.com/go-openapi/runtime &&  go get -u github.com/asaskevich/govalidator &&  go get -u golang.org/x/net/context &&  go get -u github.com/jessevdk/go-flags &&  go get -u golang.org/x/net/context/ctxhttp" shape="box"];
  "sha256:3078139ed255c5557c365672b73fa59033ca681739f4c0ec8f644c18eb5c88ef" [label="local://context" shape="ellipse"];
  "sha256:5b9b9f74219e76492119bd21fd8d7f515cf230bdee29411afd30f0f231aca150" [label="copy{src=/swagger-musl, dest=/usr/bin/swagger}" shape="note"];
  "sha256:5e4477aeda1fe7f3bfcdb6fb1b885aab5b9dcede84668d5ea4a441aee2ffeb96" [label="sha256:5e4477aeda1fe7f3bfcdb6fb1b885aab5b9dcede84668d5ea4a441aee2ffeb96" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:98f9a56829a013fe548314d8602cfae7dae675275e0a8a45b5ddd48ca4dc0912" [label=""];
  "sha256:98f9a56829a013fe548314d8602cfae7dae675275e0a8a45b5ddd48ca4dc0912" -> "sha256:5b9b9f74219e76492119bd21fd8d7f515cf230bdee29411afd30f0f231aca150" [label=""];
  "sha256:3078139ed255c5557c365672b73fa59033ca681739f4c0ec8f644c18eb5c88ef" -> "sha256:5b9b9f74219e76492119bd21fd8d7f515cf230bdee29411afd30f0f231aca150" [label=""];
  "sha256:5b9b9f74219e76492119bd21fd8d7f515cf230bdee29411afd30f0f231aca150" -> "sha256:5e4477aeda1fe7f3bfcdb6fb1b885aab5b9dcede84668d5ea4a441aee2ffeb96" [label=""];
}

