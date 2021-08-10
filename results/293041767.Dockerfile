[app/sources/293041767.Dockerfile]
digraph {
  "sha256:1dd6d75ab3953b905f1782fda70b95cc1957b0d8c51380fabb70efed9885deed" [label="docker-image://docker.io/tutum/apache-php:latest" shape="ellipse"];
  "sha256:655efb9331c2af6481ca4d5a78b0fcac57a820a2b9297bcdccc039239a47b78c" [label="/bin/sh -c apt-get update && apt-get install -yq git && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4e1dc878bdc5ee64d6a1bb969c9ae4e79d808b08d5927442e2f10cf853532fb7" [label="/bin/sh -c rm -fr /app" shape="box"];
  "sha256:3e5e121d5d49b5132009a112c49bede13a2b67dd70392da2c97c6efa4618236f" [label="local://context" shape="ellipse"];
  "sha256:e2334fb340c8d1dc89ba7b75d8dcddc678dcbbcd5b17407874519e7a97daaddd" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:0936fcef1c7aba2b4c95e8eda2d59e2e8dadee3561de5c87889ed34eb9efb83b" [label="sha256:0936fcef1c7aba2b4c95e8eda2d59e2e8dadee3561de5c87889ed34eb9efb83b" shape="plaintext"];
  "sha256:1dd6d75ab3953b905f1782fda70b95cc1957b0d8c51380fabb70efed9885deed" -> "sha256:655efb9331c2af6481ca4d5a78b0fcac57a820a2b9297bcdccc039239a47b78c" [label=""];
  "sha256:655efb9331c2af6481ca4d5a78b0fcac57a820a2b9297bcdccc039239a47b78c" -> "sha256:4e1dc878bdc5ee64d6a1bb969c9ae4e79d808b08d5927442e2f10cf853532fb7" [label=""];
  "sha256:4e1dc878bdc5ee64d6a1bb969c9ae4e79d808b08d5927442e2f10cf853532fb7" -> "sha256:e2334fb340c8d1dc89ba7b75d8dcddc678dcbbcd5b17407874519e7a97daaddd" [label=""];
  "sha256:3e5e121d5d49b5132009a112c49bede13a2b67dd70392da2c97c6efa4618236f" -> "sha256:e2334fb340c8d1dc89ba7b75d8dcddc678dcbbcd5b17407874519e7a97daaddd" [label=""];
  "sha256:e2334fb340c8d1dc89ba7b75d8dcddc678dcbbcd5b17407874519e7a97daaddd" -> "sha256:0936fcef1c7aba2b4c95e8eda2d59e2e8dadee3561de5c87889ed34eb9efb83b" [label=""];
}

