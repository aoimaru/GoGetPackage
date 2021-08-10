[app/sources/277080790.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hpcloud/tail/" shape="box"];
  "sha256:e9db467cee13ce70c83e9c093f45fa636250d9bd7d4fbd007a6261152f147112" [label="local://context" shape="ellipse"];
  "sha256:6fac5f6068f48f0d9eb025aa50b936ca758c61b5a8b6acc170970f90864c983e" [label="copy{src=/, dest=/src/github.com/hpcloud/tail/}" shape="note"];
  "sha256:47b5091d8e7402d3cc1cf574112bafa286023eb5193eb3c9b7fe824caec66696" [label="/bin/sh -c go get -v github.com/hpcloud/tail" shape="box"];
  "sha256:1527fbf1e7ddf1f654fd7a1316611cceebb3455a921ea258b69ee47beee1f9e2" [label="/bin/sh -c go test -v github.com/hpcloud/tail" shape="box"];
  "sha256:4ba274fb97dc24ddc32928758ed3964073a7d9c820cac63834cf69ac58e0407e" [label="/bin/sh -c go install -v github.com/hpcloud/tail" shape="box"];
  "sha256:d64249af0713d312be353cfb4e9218972d72fd05f6264cc0da18774d1cd10d48" [label="/bin/sh -c go install -v github.com/hpcloud/tail/cmd/gotail" shape="box"];
  "sha256:75c4a8179fefde867c7e9c8bc97217d8e357fde7d45436c17014f312b7a97ce6" [label="/bin/sh -c $GOPATH/bin/gotail -h || true" shape="box"];
  "sha256:17ea24c12db4da5681d75fc42d87f29834d45a5cf8ed31277bf791abd9b9e954" [label="sha256:17ea24c12db4da5681d75fc42d87f29834d45a5cf8ed31277bf791abd9b9e954" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label=""];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" -> "sha256:6fac5f6068f48f0d9eb025aa50b936ca758c61b5a8b6acc170970f90864c983e" [label=""];
  "sha256:e9db467cee13ce70c83e9c093f45fa636250d9bd7d4fbd007a6261152f147112" -> "sha256:6fac5f6068f48f0d9eb025aa50b936ca758c61b5a8b6acc170970f90864c983e" [label=""];
  "sha256:6fac5f6068f48f0d9eb025aa50b936ca758c61b5a8b6acc170970f90864c983e" -> "sha256:47b5091d8e7402d3cc1cf574112bafa286023eb5193eb3c9b7fe824caec66696" [label=""];
  "sha256:47b5091d8e7402d3cc1cf574112bafa286023eb5193eb3c9b7fe824caec66696" -> "sha256:1527fbf1e7ddf1f654fd7a1316611cceebb3455a921ea258b69ee47beee1f9e2" [label=""];
  "sha256:1527fbf1e7ddf1f654fd7a1316611cceebb3455a921ea258b69ee47beee1f9e2" -> "sha256:4ba274fb97dc24ddc32928758ed3964073a7d9c820cac63834cf69ac58e0407e" [label=""];
  "sha256:4ba274fb97dc24ddc32928758ed3964073a7d9c820cac63834cf69ac58e0407e" -> "sha256:d64249af0713d312be353cfb4e9218972d72fd05f6264cc0da18774d1cd10d48" [label=""];
  "sha256:d64249af0713d312be353cfb4e9218972d72fd05f6264cc0da18774d1cd10d48" -> "sha256:75c4a8179fefde867c7e9c8bc97217d8e357fde7d45436c17014f312b7a97ce6" [label=""];
  "sha256:75c4a8179fefde867c7e9c8bc97217d8e357fde7d45436c17014f312b7a97ce6" -> "sha256:17ea24c12db4da5681d75fc42d87f29834d45a5cf8ed31277bf791abd9b9e954" [label=""];
}

