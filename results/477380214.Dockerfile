[app/sources/477380214.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:07e223b5934b8d91f1ed0c551e401603ec68cbe6488bb85b897e006d4dd005d9" [label="/bin/sh -c mkdir -p \"$GOPATH/src/\" \"$GOPATH/bin\"" shape="box"];
  "sha256:e21b01bcfe0117d6d9b9efa0eb76180c25476fee3c202d898708ea2858b0a009" [label="/bin/sh -c go get -u -v github.com/BurntSushi/toml" shape="box"];
  "sha256:724a74427daec5f84b4a5811490bb180d4b06c0b333692a763d6f96181f5a35f" [label="/bin/sh -c go get -u -v github.com/golang/glog" shape="box"];
  "sha256:afb8aaa8313379e57c2c4f33fd5f9d71258b395e6f41cb2d76451858733b3c19" [label="/bin/sh -c go get -u -v github.com/golang/protobuf/proto" shape="box"];
  "sha256:d34f6564727d105c4cbf46f718851536778470d93c85ca9f679351d72eb6ddfa" [label="/bin/sh -c go get -u -v github.com/coreos/etcd/clientv3" shape="box"];
  "sha256:d5a47f9da50b2cb597acca430ba502dcdd036d5d65153baf5b18df21ff52bbb8" [label="/bin/sh -c go get -u -v gopkg.in/mgo.v2" shape="box"];
  "sha256:8212814c75e95788de846d82a8e2577920a909ce33ef6e73d9deae1943544ed8" [label="/bin/sh -c go get -u -v github.com/Shopify/sarama" shape="box"];
  "sha256:4d10ed59e77dd26b5341c6ac83a14bbed022b910c420c9803e5d779d7132e822" [label="/bin/sh -c go get -u -v github.com/wvanbergen/kafka/consumergroup" shape="box"];
  "sha256:44afb4181bbef521cf106f26e96666e2e65eb2f7943cb575f3257ee2acdc6e6a" [label="/bin/sh -c go get -u -v gopkg.in/olivere/elastic.v5" shape="box"];
  "sha256:6e00a6b2a178a08dde71febb58def42efda336bc91d23419fd5c0a4e759e8e3f" [label="/bin/sh -c go get -u -v github.com/oikomi/FishChatServer2" shape="box"];
  "sha256:ee8f36a0405ac8e07c06bca2ad56e3d410074b8becba2bada7d0262d9b69b9dd" [label="/bin/sh -c cd \"$GOPATH/src/github.com/oikomi/FishChatServer2/server/logic\" &&  go build" shape="box"];
  "sha256:99c19cdaedfc78aa4dfa1bdab4864ca4eea98eb785f6ec2efb7881a529eea179" [label="/bin/sh -c cp \"$GOPATH/src/github.com/oikomi/FishChatServer2/server/logic/logic\" \"/bin/\"" shape="box"];
  "sha256:972090c396ce19fa1ec3601482bf953e596a472f5c7ea4c395f5e2db06dcd81d" [label="/bin/sh -c cp \"$GOPATH/src/github.com/oikomi/FishChatServer2/server/logic/logic.toml\" \"/etc/\"" shape="box"];
  "sha256:d066dec96bb09d3f00aedca86501dfd886e69afea2fe00d7c85988de3a0a1847" [label="sha256:d066dec96bb09d3f00aedca86501dfd886e69afea2fe00d7c85988de3a0a1847" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:07e223b5934b8d91f1ed0c551e401603ec68cbe6488bb85b897e006d4dd005d9" [label=""];
  "sha256:07e223b5934b8d91f1ed0c551e401603ec68cbe6488bb85b897e006d4dd005d9" -> "sha256:e21b01bcfe0117d6d9b9efa0eb76180c25476fee3c202d898708ea2858b0a009" [label=""];
  "sha256:e21b01bcfe0117d6d9b9efa0eb76180c25476fee3c202d898708ea2858b0a009" -> "sha256:724a74427daec5f84b4a5811490bb180d4b06c0b333692a763d6f96181f5a35f" [label=""];
  "sha256:724a74427daec5f84b4a5811490bb180d4b06c0b333692a763d6f96181f5a35f" -> "sha256:afb8aaa8313379e57c2c4f33fd5f9d71258b395e6f41cb2d76451858733b3c19" [label=""];
  "sha256:afb8aaa8313379e57c2c4f33fd5f9d71258b395e6f41cb2d76451858733b3c19" -> "sha256:d34f6564727d105c4cbf46f718851536778470d93c85ca9f679351d72eb6ddfa" [label=""];
  "sha256:d34f6564727d105c4cbf46f718851536778470d93c85ca9f679351d72eb6ddfa" -> "sha256:d5a47f9da50b2cb597acca430ba502dcdd036d5d65153baf5b18df21ff52bbb8" [label=""];
  "sha256:d5a47f9da50b2cb597acca430ba502dcdd036d5d65153baf5b18df21ff52bbb8" -> "sha256:8212814c75e95788de846d82a8e2577920a909ce33ef6e73d9deae1943544ed8" [label=""];
  "sha256:8212814c75e95788de846d82a8e2577920a909ce33ef6e73d9deae1943544ed8" -> "sha256:4d10ed59e77dd26b5341c6ac83a14bbed022b910c420c9803e5d779d7132e822" [label=""];
  "sha256:4d10ed59e77dd26b5341c6ac83a14bbed022b910c420c9803e5d779d7132e822" -> "sha256:44afb4181bbef521cf106f26e96666e2e65eb2f7943cb575f3257ee2acdc6e6a" [label=""];
  "sha256:44afb4181bbef521cf106f26e96666e2e65eb2f7943cb575f3257ee2acdc6e6a" -> "sha256:6e00a6b2a178a08dde71febb58def42efda336bc91d23419fd5c0a4e759e8e3f" [label=""];
  "sha256:6e00a6b2a178a08dde71febb58def42efda336bc91d23419fd5c0a4e759e8e3f" -> "sha256:ee8f36a0405ac8e07c06bca2ad56e3d410074b8becba2bada7d0262d9b69b9dd" [label=""];
  "sha256:ee8f36a0405ac8e07c06bca2ad56e3d410074b8becba2bada7d0262d9b69b9dd" -> "sha256:99c19cdaedfc78aa4dfa1bdab4864ca4eea98eb785f6ec2efb7881a529eea179" [label=""];
  "sha256:99c19cdaedfc78aa4dfa1bdab4864ca4eea98eb785f6ec2efb7881a529eea179" -> "sha256:972090c396ce19fa1ec3601482bf953e596a472f5c7ea4c395f5e2db06dcd81d" [label=""];
  "sha256:972090c396ce19fa1ec3601482bf953e596a472f5c7ea4c395f5e2db06dcd81d" -> "sha256:d066dec96bb09d3f00aedca86501dfd886e69afea2fe00d7c85988de3a0a1847" [label=""];
}

