[app/sources/268343078.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:a4e9a1766894af2b6aa5701c2435e34eec44506d0afce52ef98eb8b6dfc13ff4" [label="/bin/sh -c apk --no-cache add ca-certificates && update-ca-certificates" shape="box"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:08848a14696a2f38f6655044afff5a7b8f689edb656ed2ace86ada0db20f1c79" [label="mkdir{path=/src/github.com/containerum/chkit}" shape="note"];
  "sha256:5e3213d79d4a01e693c49260e23d10b98e8a605b69974041b2b1838d37d50c5d" [label="local://context" shape="ellipse"];
  "sha256:9fe0263e0c79662af9e8adb4742dc85a3f395ee17f2c14703e7ada844464c8e2" [label="copy{src=/, dest=/src/github.com/containerum/chkit/}" shape="note"];
  "sha256:05c62f08e13976258ce1a4d509fcf7125d13f5bf825ab622b34cfd3e98ecb4ff" [label="/bin/sh -c apk --no-cache add zip make openssl" shape="box"];
  "sha256:99a7ce63bb97c504ff90bdeac987b2e1c1bedd422f8e745ecf88c7e7aa459b0c" [label="/bin/sh -c apk --no-cache add git" shape="box"];
  "sha256:8c1fbf61c295bd8f80aaf1acab5c0496dc16a788eae912eae10636e877adfa45" [label="/bin/sh -c go get -u -v -d github.com/UnnoTed/fileb0x &&     cd $GOPATH/src/github.com/UnnoTed/fileb0x &&     git checkout 033c2ecc1c0f93d04afe94186f15193dd4441646 &&     go install  &&     cp $GOPATH/bin/fileb0x /bin" shape="box"];
  "sha256:a9810e3e36b0ba2072ae01566bd5229fd4923bb90d5e700bc7d8024238ce55af" [label="copy{src=/bin/fileb0x, dest=/bin}" shape="note"];
  "sha256:c4047be61b31927f1c9a651f256dd808bde408f3b49031b3c99b3cf141662c8b" [label="/bin/sh -c make build" shape="box"];
  "sha256:e9420bf2187848324204a4080d6c6e257824d07ecfb56e248d2e33e869d6c0cd" [label="copy{src=/go/src/github.com/containerum/chkit/build/chkit, dest=/chkit}" shape="note"];
  "sha256:a33f276d3caae7577b92d7c66291340c42367115231346c466533f9d1014e28c" [label="sha256:a33f276d3caae7577b92d7c66291340c42367115231346c466533f9d1014e28c" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:a4e9a1766894af2b6aa5701c2435e34eec44506d0afce52ef98eb8b6dfc13ff4" [label=""];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:08848a14696a2f38f6655044afff5a7b8f689edb656ed2ace86ada0db20f1c79" [label=""];
  "sha256:08848a14696a2f38f6655044afff5a7b8f689edb656ed2ace86ada0db20f1c79" -> "sha256:9fe0263e0c79662af9e8adb4742dc85a3f395ee17f2c14703e7ada844464c8e2" [label=""];
  "sha256:5e3213d79d4a01e693c49260e23d10b98e8a605b69974041b2b1838d37d50c5d" -> "sha256:9fe0263e0c79662af9e8adb4742dc85a3f395ee17f2c14703e7ada844464c8e2" [label=""];
  "sha256:9fe0263e0c79662af9e8adb4742dc85a3f395ee17f2c14703e7ada844464c8e2" -> "sha256:05c62f08e13976258ce1a4d509fcf7125d13f5bf825ab622b34cfd3e98ecb4ff" [label=""];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:99a7ce63bb97c504ff90bdeac987b2e1c1bedd422f8e745ecf88c7e7aa459b0c" [label=""];
  "sha256:99a7ce63bb97c504ff90bdeac987b2e1c1bedd422f8e745ecf88c7e7aa459b0c" -> "sha256:8c1fbf61c295bd8f80aaf1acab5c0496dc16a788eae912eae10636e877adfa45" [label=""];
  "sha256:05c62f08e13976258ce1a4d509fcf7125d13f5bf825ab622b34cfd3e98ecb4ff" -> "sha256:a9810e3e36b0ba2072ae01566bd5229fd4923bb90d5e700bc7d8024238ce55af" [label=""];
  "sha256:8c1fbf61c295bd8f80aaf1acab5c0496dc16a788eae912eae10636e877adfa45" -> "sha256:a9810e3e36b0ba2072ae01566bd5229fd4923bb90d5e700bc7d8024238ce55af" [label=""];
  "sha256:a9810e3e36b0ba2072ae01566bd5229fd4923bb90d5e700bc7d8024238ce55af" -> "sha256:c4047be61b31927f1c9a651f256dd808bde408f3b49031b3c99b3cf141662c8b" [label=""];
  "sha256:a4e9a1766894af2b6aa5701c2435e34eec44506d0afce52ef98eb8b6dfc13ff4" -> "sha256:e9420bf2187848324204a4080d6c6e257824d07ecfb56e248d2e33e869d6c0cd" [label=""];
  "sha256:c4047be61b31927f1c9a651f256dd808bde408f3b49031b3c99b3cf141662c8b" -> "sha256:e9420bf2187848324204a4080d6c6e257824d07ecfb56e248d2e33e869d6c0cd" [label=""];
  "sha256:e9420bf2187848324204a4080d6c6e257824d07ecfb56e248d2e33e869d6c0cd" -> "sha256:a33f276d3caae7577b92d7c66291340c42367115231346c466533f9d1014e28c" [label=""];
}

