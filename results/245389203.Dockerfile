[app/sources/245389203.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:2bf9e93f240e15847c7bb8434caa53dbf49130eb3faa2df4a68c120a6173ea16" [label="mkdir{path=/go/src/github.com/hunterhug/rabbit}" shape="note"];
  "sha256:9725ba841ac0686b53ef895247363abde32fdbe2421c82135085e9a53fb15e1d" [label="local://context" shape="ellipse"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:b73f64bbdf65f769b4d53bcd0f7e5fee38cdb00131017000c4e8cc7fba75dd1d" [label="mkdir{path=/go/src/github.com/hunterhug/rabbit}" shape="note"];
  "sha256:719a1cd9820e964a86bb44b687599033c2aaffc6e9155ebccb9889c1d0de0e2c" [label="copy{src=/, dest=/go/src/github.com/hunterhug/rabbit/}" shape="note"];
  "sha256:ee5ee9b905e9a1b69b3e196a4f6d4351bfec74362cdbd5c79482ca0de68c253e" [label="/bin/sh -c go build -ldflags \"-s -w\" -v -o rabbit main.go" shape="box"];
  "sha256:2b6de386809d6a5511c87a590512648ec6f255c143ac9b857e9ccd155e92aab1" [label="copy{src=/go/src/github.com/hunterhug/rabbit/rabbit, dest=/go/src/github.com/hunterhug/rabbit/rabbit}" shape="note"];
  "sha256:2527d2455d8bdd99dca8cf04d4778fbb1902bc30e112faea12663949c492fb19" [label="copy{src=/, dest=/go/src/github.com/hunterhug/rabbit/}" shape="note"];
  "sha256:c5154c2687db16afe60df0a05f6c499491bb6a9f1b0a0678e65d661248cc4023" [label="/bin/sh -c chmod 777 /go/src/github.com/hunterhug/rabbit/rabbit" shape="box"];
  "sha256:0f30b70914c21ad96e7b52b8dbb4dcb97d5f92a9de03d01f14b102ec4d4c902c" [label="sha256:0f30b70914c21ad96e7b52b8dbb4dcb97d5f92a9de03d01f14b102ec4d4c902c" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:2bf9e93f240e15847c7bb8434caa53dbf49130eb3faa2df4a68c120a6173ea16" [label=""];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:b73f64bbdf65f769b4d53bcd0f7e5fee38cdb00131017000c4e8cc7fba75dd1d" [label=""];
  "sha256:b73f64bbdf65f769b4d53bcd0f7e5fee38cdb00131017000c4e8cc7fba75dd1d" -> "sha256:719a1cd9820e964a86bb44b687599033c2aaffc6e9155ebccb9889c1d0de0e2c" [label=""];
  "sha256:9725ba841ac0686b53ef895247363abde32fdbe2421c82135085e9a53fb15e1d" -> "sha256:719a1cd9820e964a86bb44b687599033c2aaffc6e9155ebccb9889c1d0de0e2c" [label=""];
  "sha256:719a1cd9820e964a86bb44b687599033c2aaffc6e9155ebccb9889c1d0de0e2c" -> "sha256:ee5ee9b905e9a1b69b3e196a4f6d4351bfec74362cdbd5c79482ca0de68c253e" [label=""];
  "sha256:2bf9e93f240e15847c7bb8434caa53dbf49130eb3faa2df4a68c120a6173ea16" -> "sha256:2b6de386809d6a5511c87a590512648ec6f255c143ac9b857e9ccd155e92aab1" [label=""];
  "sha256:ee5ee9b905e9a1b69b3e196a4f6d4351bfec74362cdbd5c79482ca0de68c253e" -> "sha256:2b6de386809d6a5511c87a590512648ec6f255c143ac9b857e9ccd155e92aab1" [label=""];
  "sha256:2b6de386809d6a5511c87a590512648ec6f255c143ac9b857e9ccd155e92aab1" -> "sha256:2527d2455d8bdd99dca8cf04d4778fbb1902bc30e112faea12663949c492fb19" [label=""];
  "sha256:9725ba841ac0686b53ef895247363abde32fdbe2421c82135085e9a53fb15e1d" -> "sha256:2527d2455d8bdd99dca8cf04d4778fbb1902bc30e112faea12663949c492fb19" [label=""];
  "sha256:2527d2455d8bdd99dca8cf04d4778fbb1902bc30e112faea12663949c492fb19" -> "sha256:c5154c2687db16afe60df0a05f6c499491bb6a9f1b0a0678e65d661248cc4023" [label=""];
  "sha256:c5154c2687db16afe60df0a05f6c499491bb6a9f1b0a0678e65d661248cc4023" -> "sha256:0f30b70914c21ad96e7b52b8dbb4dcb97d5f92a9de03d01f14b102ec4d4c902c" [label=""];
}

