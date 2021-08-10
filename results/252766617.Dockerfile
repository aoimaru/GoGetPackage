[app/sources/252766617.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:5a4c36cded3d360e60c86efec74370931b462dd52a449cf337ce4dfbb8e1c83c" [label="local://context" shape="ellipse"];
  "sha256:11c0acb9b7d508cbb4998195fc5871d4e5c43994d61b2f0d3c4bbcfc23148762" [label="copy{src=/lib/install-nginx.sh, dest=/tmp/install-nginx.sh}" shape="note"];
  "sha256:c46b37d5895532eb8328303db999593b07c127c7734e262a6455b9ce2846b933" [label="/bin/sh -c bash /tmp/install-nginx.sh" shape="box"];
  "sha256:ad04d1d2c030a0db1f298ea95370e431c38f84289cbdce133ee091d3a74e3bbc" [label="/bin/sh -c rm /tmp/install-nginx.sh" shape="box"];
  "sha256:5869d00e5f2922da76b188f5768f694b7084817af0d81acf0056d092e8236055" [label="copy{src=/lib, dest=/tmp/lib}" shape="note"];
  "sha256:4f82767143f05eab1c0defffa70acadb3bc934ccd37c8892761f7c9519b6d28f" [label="/bin/sh -c bash /tmp/lib/copy-files.sh" shape="box"];
  "sha256:6d92bd8e10327c876cb9187ccb4ba90a27434cfb30e41c8f774e1ec9e501735e" [label="/bin/sh -c chmod +x /verify.sh /start.sh" shape="box"];
  "sha256:f41d5e5598de5b2d0d4bf9f6ab803f0b13b21bb410d9854dc87eba6ffca66d5f" [label="sha256:f41d5e5598de5b2d0d4bf9f6ab803f0b13b21bb410d9854dc87eba6ffca66d5f" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:11c0acb9b7d508cbb4998195fc5871d4e5c43994d61b2f0d3c4bbcfc23148762" [label=""];
  "sha256:5a4c36cded3d360e60c86efec74370931b462dd52a449cf337ce4dfbb8e1c83c" -> "sha256:11c0acb9b7d508cbb4998195fc5871d4e5c43994d61b2f0d3c4bbcfc23148762" [label=""];
  "sha256:11c0acb9b7d508cbb4998195fc5871d4e5c43994d61b2f0d3c4bbcfc23148762" -> "sha256:c46b37d5895532eb8328303db999593b07c127c7734e262a6455b9ce2846b933" [label=""];
  "sha256:c46b37d5895532eb8328303db999593b07c127c7734e262a6455b9ce2846b933" -> "sha256:ad04d1d2c030a0db1f298ea95370e431c38f84289cbdce133ee091d3a74e3bbc" [label=""];
  "sha256:ad04d1d2c030a0db1f298ea95370e431c38f84289cbdce133ee091d3a74e3bbc" -> "sha256:5869d00e5f2922da76b188f5768f694b7084817af0d81acf0056d092e8236055" [label=""];
  "sha256:5a4c36cded3d360e60c86efec74370931b462dd52a449cf337ce4dfbb8e1c83c" -> "sha256:5869d00e5f2922da76b188f5768f694b7084817af0d81acf0056d092e8236055" [label=""];
  "sha256:5869d00e5f2922da76b188f5768f694b7084817af0d81acf0056d092e8236055" -> "sha256:4f82767143f05eab1c0defffa70acadb3bc934ccd37c8892761f7c9519b6d28f" [label=""];
  "sha256:4f82767143f05eab1c0defffa70acadb3bc934ccd37c8892761f7c9519b6d28f" -> "sha256:6d92bd8e10327c876cb9187ccb4ba90a27434cfb30e41c8f774e1ec9e501735e" [label=""];
  "sha256:6d92bd8e10327c876cb9187ccb4ba90a27434cfb30e41c8f774e1ec9e501735e" -> "sha256:f41d5e5598de5b2d0d4bf9f6ab803f0b13b21bb410d9854dc87eba6ffca66d5f" [label=""];
}

