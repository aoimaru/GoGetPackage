[app/sources/474460561.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:bee58fdb9425975cafe0f94eec1692fca4af527f549c2566a3848dab5862a4ed" [label="/bin/sh -c apt-get update &&     apt-get install -y python3 python3-dev python3-pip openjdk-8-jdk-headless     curl unzip git locales pkg-config zlib1g-dev &&     apt-get clean" shape="box"];
  "sha256:e1723c9f475ca4f152502995feaa9c29097d02c46e40008b6feb66dd26975a17" [label="/bin/sh -c curl -fsSL https://dl.google.com/go/go1.12.5.linux-amd64.tar.gz | tar -xzC /usr/local" shape="box"];
  "sha256:48693e52024ab9d04ac1ef0bebff71cd5fce6aa4e3b031e230f20ff56058836f" [label="/bin/sh -c ln -s /usr/local/go/bin/go /usr/local/bin/go && ln -s /usr/local/go/bin/gofmt /usr/local/bin/gofmt" shape="box"];
  "sha256:e37d2701966b5c13227e42ebfb08a92851182877986b224e8618c184ca89b0da" [label="/bin/sh -c go get golang.org/x/lint/golint && mv ~/go/bin/golint /usr/local/bin && rm -rf ~/go" shape="box"];
  "sha256:f649613e73b7a396f2a15123f386957f71b5f6116b42369495f2590ca9df2994" [label="/bin/sh -c locale-gen en_GB.UTF-8" shape="box"];
  "sha256:4bff0e82a5e796dd0a16c8f73756ef5df13f95ff187f46a4cd3eac95ca62a571" [label="local://context" shape="ellipse"];
  "sha256:5effe351e86d5d1df73fb7225b7dcce83566ee951537a4eb967ebdb82b31b998" [label="copy{src=/motd.txt, dest=/etc/motd}" shape="note"];
  "sha256:28c221e10bacbc7d2b3123ced3ff5607e23706d5bb81cda9eea0fc45bd040495" [label="/bin/sh -c echo 'cat /etc/motd' >> /etc/bash.bashrc" shape="box"];
  "sha256:9782b8e1933fd875b43a07f4ed689882f456afaafa9ea832dfe689a17aecd692" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:f3d8e811cf0b98bfa13b1294c17f96d127a2cfbf73eab3b955e1a2c6a16010f6" [label="sha256:f3d8e811cf0b98bfa13b1294c17f96d127a2cfbf73eab3b955e1a2c6a16010f6" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:bee58fdb9425975cafe0f94eec1692fca4af527f549c2566a3848dab5862a4ed" [label=""];
  "sha256:bee58fdb9425975cafe0f94eec1692fca4af527f549c2566a3848dab5862a4ed" -> "sha256:e1723c9f475ca4f152502995feaa9c29097d02c46e40008b6feb66dd26975a17" [label=""];
  "sha256:e1723c9f475ca4f152502995feaa9c29097d02c46e40008b6feb66dd26975a17" -> "sha256:48693e52024ab9d04ac1ef0bebff71cd5fce6aa4e3b031e230f20ff56058836f" [label=""];
  "sha256:48693e52024ab9d04ac1ef0bebff71cd5fce6aa4e3b031e230f20ff56058836f" -> "sha256:e37d2701966b5c13227e42ebfb08a92851182877986b224e8618c184ca89b0da" [label=""];
  "sha256:e37d2701966b5c13227e42ebfb08a92851182877986b224e8618c184ca89b0da" -> "sha256:f649613e73b7a396f2a15123f386957f71b5f6116b42369495f2590ca9df2994" [label=""];
  "sha256:f649613e73b7a396f2a15123f386957f71b5f6116b42369495f2590ca9df2994" -> "sha256:5effe351e86d5d1df73fb7225b7dcce83566ee951537a4eb967ebdb82b31b998" [label=""];
  "sha256:4bff0e82a5e796dd0a16c8f73756ef5df13f95ff187f46a4cd3eac95ca62a571" -> "sha256:5effe351e86d5d1df73fb7225b7dcce83566ee951537a4eb967ebdb82b31b998" [label=""];
  "sha256:5effe351e86d5d1df73fb7225b7dcce83566ee951537a4eb967ebdb82b31b998" -> "sha256:28c221e10bacbc7d2b3123ced3ff5607e23706d5bb81cda9eea0fc45bd040495" [label=""];
  "sha256:28c221e10bacbc7d2b3123ced3ff5607e23706d5bb81cda9eea0fc45bd040495" -> "sha256:9782b8e1933fd875b43a07f4ed689882f456afaafa9ea832dfe689a17aecd692" [label=""];
  "sha256:9782b8e1933fd875b43a07f4ed689882f456afaafa9ea832dfe689a17aecd692" -> "sha256:f3d8e811cf0b98bfa13b1294c17f96d127a2cfbf73eab3b955e1a2c6a16010f6" [label=""];
}

