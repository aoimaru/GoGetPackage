[app/sources/335951346.Dockerfile]
digraph {
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:ca4114933f79b43705acc9fe32d4b9a550ca4a82d26483333ffed688f0c89839" [label="/bin/sh -c curl $DEP_URL -L -o $GOPATH/bin/dep && echo \"$DEP_HASH $GOPATH/bin/dep\" | sha256sum -c - && chmod 755 $GOPATH/bin/dep" shape="box"];
  "sha256:5d9e756d100ce044531a36252cc99efe2bf07ab5691db17afe03ebf830b5dc50" [label="/bin/sh -c go get -u github.com/revel/cmd/revel" shape="box"];
  "sha256:a3f58fed3fae30b27b59ff75522203ab4e15479c08d8a92b4dd621b713b3f844" [label="mkdir{path=/src/github.com/magoo/www-forecast}" shape="note"];
  "sha256:361a12ddf98f684e4585a0e9c23d7fcd59ca221541ff84f1ce22ad25ef4d9b29" [label="local://context" shape="ellipse"];
  "sha256:f8132d3b15f7d6b0c327014638392a06ce545798ee220caee4dfb65c22342b01" [label="copy{src=/Gopkg.toml, dest=/src/github.com/magoo/www-forecast/},copy{src=/Gopkg.lock, dest=/src/github.com/magoo/www-forecast/}" shape="note"];
  "sha256:c266928084ac51f1bdf252c41c95ffb34e7c752ecce487c50b12db1b7f094cd8" [label="/bin/sh -c dep ensure --vendor-only" shape="box"];
  "sha256:17c6e565b4cc16c3652ccc65d95115ff5dc7bd67d991df43da94db846ea5d757" [label="copy{src=/, dest=/src/github.com/magoo/www-forecast}" shape="note"];
  "sha256:85ed0b7eab21f8e7d3b0254396c92f048b158fa5edab8c1e36ba983dea6cefc4" [label="/bin/sh -c revel build github.com/magoo/www-forecast $GOPATH/bin/www-forecast prod" shape="box"];
  "sha256:6daec363dbc427d9d436d6bb5ea74faeee30ae4fde29ec9d1f299c98b739c4b8" [label="/bin/sh -c chmod +x $GOPATH/bin/www-forecast" shape="box"];
  "sha256:c0243400b136293b5da613a5f5980e3e5a151f10f1f2b0e5eac6880f6675d861" [label="/bin/sh -c rm -rf $GOPATH/src" shape="box"];
  "sha256:f5cda836f7b64b744480f639b1ca84e34860a279f42514172cf0e8f008e5223c" [label="sha256:f5cda836f7b64b744480f639b1ca84e34860a279f42514172cf0e8f008e5223c" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:ca4114933f79b43705acc9fe32d4b9a550ca4a82d26483333ffed688f0c89839" [label=""];
  "sha256:ca4114933f79b43705acc9fe32d4b9a550ca4a82d26483333ffed688f0c89839" -> "sha256:5d9e756d100ce044531a36252cc99efe2bf07ab5691db17afe03ebf830b5dc50" [label=""];
  "sha256:5d9e756d100ce044531a36252cc99efe2bf07ab5691db17afe03ebf830b5dc50" -> "sha256:a3f58fed3fae30b27b59ff75522203ab4e15479c08d8a92b4dd621b713b3f844" [label=""];
  "sha256:a3f58fed3fae30b27b59ff75522203ab4e15479c08d8a92b4dd621b713b3f844" -> "sha256:f8132d3b15f7d6b0c327014638392a06ce545798ee220caee4dfb65c22342b01" [label=""];
  "sha256:361a12ddf98f684e4585a0e9c23d7fcd59ca221541ff84f1ce22ad25ef4d9b29" -> "sha256:f8132d3b15f7d6b0c327014638392a06ce545798ee220caee4dfb65c22342b01" [label=""];
  "sha256:f8132d3b15f7d6b0c327014638392a06ce545798ee220caee4dfb65c22342b01" -> "sha256:c266928084ac51f1bdf252c41c95ffb34e7c752ecce487c50b12db1b7f094cd8" [label=""];
  "sha256:c266928084ac51f1bdf252c41c95ffb34e7c752ecce487c50b12db1b7f094cd8" -> "sha256:17c6e565b4cc16c3652ccc65d95115ff5dc7bd67d991df43da94db846ea5d757" [label=""];
  "sha256:361a12ddf98f684e4585a0e9c23d7fcd59ca221541ff84f1ce22ad25ef4d9b29" -> "sha256:17c6e565b4cc16c3652ccc65d95115ff5dc7bd67d991df43da94db846ea5d757" [label=""];
  "sha256:17c6e565b4cc16c3652ccc65d95115ff5dc7bd67d991df43da94db846ea5d757" -> "sha256:85ed0b7eab21f8e7d3b0254396c92f048b158fa5edab8c1e36ba983dea6cefc4" [label=""];
  "sha256:85ed0b7eab21f8e7d3b0254396c92f048b158fa5edab8c1e36ba983dea6cefc4" -> "sha256:6daec363dbc427d9d436d6bb5ea74faeee30ae4fde29ec9d1f299c98b739c4b8" [label=""];
  "sha256:6daec363dbc427d9d436d6bb5ea74faeee30ae4fde29ec9d1f299c98b739c4b8" -> "sha256:c0243400b136293b5da613a5f5980e3e5a151f10f1f2b0e5eac6880f6675d861" [label=""];
  "sha256:c0243400b136293b5da613a5f5980e3e5a151f10f1f2b0e5eac6880f6675d861" -> "sha256:f5cda836f7b64b744480f639b1ca84e34860a279f42514172cf0e8f008e5223c" [label=""];
}

