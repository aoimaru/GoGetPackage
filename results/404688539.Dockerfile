[app/sources/404688539.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:f4f9684f8a8a2a70c83b5bc1ed64bc68173f771354769c0fb6ba89d952e444a3" [label="/bin/sh -c apk add --update ca-certificates && mkdir -p /nats/bin && mkdir /nats/conf" shape="box"];
  "sha256:f664e7dfd161a199138aa43b72a9f2ba6ea3112202308fb7e8aea095e4767978" [label="local://context" shape="ellipse"];
  "sha256:b0295e1e5dda4a259a56cf0052ff310a333d684d48260b35f0f13c2efd722f6f" [label="copy{src=/docker/nats-server.conf, dest=/nats/conf/nats-server.conf}" shape="note"];
  "sha256:5efc39dda20d088b93c6e1d622edb0f21a6a6db915bb668bb8311ac28033ec5a" [label="docker-image://docker.io/library/golang:1.11-alpine3.8" shape="ellipse"];
  "sha256:8b43d012880a9ee81cba632efdc1725174199c9f53b4f3093354de65a6d38f99" [label="mkdir{path=/src/github.com/nats-io/nats-server}" shape="note"];
  "sha256:5b1cce87b5012da6b32d174c42e2390344b2e8229e6cee418cd34203080bbb81" [label="/bin/sh -c apk add --update git" shape="box"];
  "sha256:962e38dc0069efc9b9945fae979d67151ccc903d43029aec8e6f048bb1029e2f" [label="copy{src=/, dest=/src/github.com/nats-io/nats-server/}" shape="note"];
  "sha256:d15d2f540fab46cf41dd68bdc8b881473a8914fa86443c82756900d4cbc614e9" [label="/bin/sh -c CGO_ENABLED=0 GO111MODULE=off go build -v -a -tags netgo -installsuffix netgo -ldflags \"-s -w -X github.com/nats-io/nats-server/server.gitCommit=`git rev-parse --short HEAD`\" -o /nats-server" shape="box"];
  "sha256:ac0934682f52dfcdcaf7158f0f70991d33a0327ce09a0e668188442d73926873" [label="copy{src=/nats-server, dest=/nats/bin/nats-server}" shape="note"];
  "sha256:d8b08815bc56f53d2f21f5e9884229628ee5f492fd80040ac9b5bc211443eb20" [label="/bin/sh -c ln -ns /nats/bin/nats-server /bin/nats-server && ln -ns /nats/bin/nats-server /nats-server && ln -ns /nats/bin/nats-server /gnatsd" shape="box"];
  "sha256:f649a11bd77c92d3188ee8ffd947a7ab809caa9784f4a6380029f837071a605e" [label="sha256:f649a11bd77c92d3188ee8ffd947a7ab809caa9784f4a6380029f837071a605e" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:f4f9684f8a8a2a70c83b5bc1ed64bc68173f771354769c0fb6ba89d952e444a3" [label=""];
  "sha256:f4f9684f8a8a2a70c83b5bc1ed64bc68173f771354769c0fb6ba89d952e444a3" -> "sha256:b0295e1e5dda4a259a56cf0052ff310a333d684d48260b35f0f13c2efd722f6f" [label=""];
  "sha256:f664e7dfd161a199138aa43b72a9f2ba6ea3112202308fb7e8aea095e4767978" -> "sha256:b0295e1e5dda4a259a56cf0052ff310a333d684d48260b35f0f13c2efd722f6f" [label=""];
  "sha256:5efc39dda20d088b93c6e1d622edb0f21a6a6db915bb668bb8311ac28033ec5a" -> "sha256:8b43d012880a9ee81cba632efdc1725174199c9f53b4f3093354de65a6d38f99" [label=""];
  "sha256:8b43d012880a9ee81cba632efdc1725174199c9f53b4f3093354de65a6d38f99" -> "sha256:5b1cce87b5012da6b32d174c42e2390344b2e8229e6cee418cd34203080bbb81" [label=""];
  "sha256:5b1cce87b5012da6b32d174c42e2390344b2e8229e6cee418cd34203080bbb81" -> "sha256:962e38dc0069efc9b9945fae979d67151ccc903d43029aec8e6f048bb1029e2f" [label=""];
  "sha256:f664e7dfd161a199138aa43b72a9f2ba6ea3112202308fb7e8aea095e4767978" -> "sha256:962e38dc0069efc9b9945fae979d67151ccc903d43029aec8e6f048bb1029e2f" [label=""];
  "sha256:962e38dc0069efc9b9945fae979d67151ccc903d43029aec8e6f048bb1029e2f" -> "sha256:d15d2f540fab46cf41dd68bdc8b881473a8914fa86443c82756900d4cbc614e9" [label=""];
  "sha256:b0295e1e5dda4a259a56cf0052ff310a333d684d48260b35f0f13c2efd722f6f" -> "sha256:ac0934682f52dfcdcaf7158f0f70991d33a0327ce09a0e668188442d73926873" [label=""];
  "sha256:d15d2f540fab46cf41dd68bdc8b881473a8914fa86443c82756900d4cbc614e9" -> "sha256:ac0934682f52dfcdcaf7158f0f70991d33a0327ce09a0e668188442d73926873" [label=""];
  "sha256:ac0934682f52dfcdcaf7158f0f70991d33a0327ce09a0e668188442d73926873" -> "sha256:d8b08815bc56f53d2f21f5e9884229628ee5f492fd80040ac9b5bc211443eb20" [label=""];
  "sha256:d8b08815bc56f53d2f21f5e9884229628ee5f492fd80040ac9b5bc211443eb20" -> "sha256:f649a11bd77c92d3188ee8ffd947a7ab809caa9784f4a6380029f837071a605e" [label=""];
}

