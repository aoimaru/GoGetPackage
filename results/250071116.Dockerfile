[app/sources/250071116.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:ed6c61fc2106242fa411a45cd5ea4363c262e9d97501ff69f0fa0a91c753dbc3" [label="/bin/sh -c apk upgrade --update     && apk add tzdata     && ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime     && echo ${TZ} > /etc/timezone     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:ba44741d810803d10159ec2e2192508d4f99a9e6ccef8d0d9235f7c612850ac1" [label="docker-image://docker.io/library/golang:1.12.5-alpine3.9" shape="ellipse"];
  "sha256:065d92a31486ce1aa575693b4b870d28764d2d289c1c5dd41f3257e08e6aa4e8" [label="/bin/sh -c apk upgrade     && apk add git     && go get github.com/shadowsocks/go-shadowsocks2" shape="box"];
  "sha256:a327eee691aeb3c8693d0ed6d2dad0450b6fb266a2514191929e6ae81570cc08" [label="copy{src=/go/bin/go-shadowsocks2, dest=/usr/bin/shadowsocks}" shape="note"];
  "sha256:c06b6636ead37da06deaad1caf22e4c4aa940588dc1300f3ea407731c70ccb4c" [label="local://context" shape="ellipse"];
  "sha256:a4b5410ec6a5b56729bbff6249288241e055be822f02d77632d68efe07be0569" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:5fbcbef3aeed1d95871ec6df68110b825267b3056c0e50fb157228279e2e0f56" [label="sha256:5fbcbef3aeed1d95871ec6df68110b825267b3056c0e50fb157228279e2e0f56" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:ed6c61fc2106242fa411a45cd5ea4363c262e9d97501ff69f0fa0a91c753dbc3" [label=""];
  "sha256:ba44741d810803d10159ec2e2192508d4f99a9e6ccef8d0d9235f7c612850ac1" -> "sha256:065d92a31486ce1aa575693b4b870d28764d2d289c1c5dd41f3257e08e6aa4e8" [label=""];
  "sha256:ed6c61fc2106242fa411a45cd5ea4363c262e9d97501ff69f0fa0a91c753dbc3" -> "sha256:a327eee691aeb3c8693d0ed6d2dad0450b6fb266a2514191929e6ae81570cc08" [label=""];
  "sha256:065d92a31486ce1aa575693b4b870d28764d2d289c1c5dd41f3257e08e6aa4e8" -> "sha256:a327eee691aeb3c8693d0ed6d2dad0450b6fb266a2514191929e6ae81570cc08" [label=""];
  "sha256:a327eee691aeb3c8693d0ed6d2dad0450b6fb266a2514191929e6ae81570cc08" -> "sha256:a4b5410ec6a5b56729bbff6249288241e055be822f02d77632d68efe07be0569" [label=""];
  "sha256:c06b6636ead37da06deaad1caf22e4c4aa940588dc1300f3ea407731c70ccb4c" -> "sha256:a4b5410ec6a5b56729bbff6249288241e055be822f02d77632d68efe07be0569" [label=""];
  "sha256:a4b5410ec6a5b56729bbff6249288241e055be822f02d77632d68efe07be0569" -> "sha256:5fbcbef3aeed1d95871ec6df68110b825267b3056c0e50fb157228279e2e0f56" [label=""];
}

