[app/sources/324522522.Dockerfile]
digraph {
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" [label="docker-image://docker.io/library/ruby:latest" shape="ellipse"];
  "sha256:59cbecdd0649509d7d5254b64b848351f25b25d3771650392f33bcaab9020f1a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:d8285b7ccd06087e9ae092a16b2488835c617f45511dd94d5fd86ccefafc3858" [label="local://context" shape="ellipse"];
  "sha256:d14d7322cffe8dda58141f7b86b19f3efdb095d27f415ed26196e1030574f55b" [label="copy{src=/src, dest=/usr/src/app/}" shape="note"];
  "sha256:8d207008ba02d216fb61d4ac01138db98c5609eed98aa047cf080cf9f4f91090" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:8872fe07ef2d1d4f57e89eec8abc834fe429fe94eee06d7ba2f79aac6eb16f00" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:af8a296ebd8d88f2cdb4cccbfd4f6fa56ac954490fd076016e0fe1d0bc8a34c2" [label="sha256:af8a296ebd8d88f2cdb4cccbfd4f6fa56ac954490fd076016e0fe1d0bc8a34c2" shape="plaintext"];
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" -> "sha256:59cbecdd0649509d7d5254b64b848351f25b25d3771650392f33bcaab9020f1a" [label=""];
  "sha256:59cbecdd0649509d7d5254b64b848351f25b25d3771650392f33bcaab9020f1a" -> "sha256:d14d7322cffe8dda58141f7b86b19f3efdb095d27f415ed26196e1030574f55b" [label=""];
  "sha256:d8285b7ccd06087e9ae092a16b2488835c617f45511dd94d5fd86ccefafc3858" -> "sha256:d14d7322cffe8dda58141f7b86b19f3efdb095d27f415ed26196e1030574f55b" [label=""];
  "sha256:d14d7322cffe8dda58141f7b86b19f3efdb095d27f415ed26196e1030574f55b" -> "sha256:8d207008ba02d216fb61d4ac01138db98c5609eed98aa047cf080cf9f4f91090" [label=""];
  "sha256:8d207008ba02d216fb61d4ac01138db98c5609eed98aa047cf080cf9f4f91090" -> "sha256:8872fe07ef2d1d4f57e89eec8abc834fe429fe94eee06d7ba2f79aac6eb16f00" [label=""];
  "sha256:8872fe07ef2d1d4f57e89eec8abc834fe429fe94eee06d7ba2f79aac6eb16f00" -> "sha256:af8a296ebd8d88f2cdb4cccbfd4f6fa56ac954490fd076016e0fe1d0bc8a34c2" [label=""];
}

