[app/sources/481774931.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:d1ba40c80c7d8390dd92669c09c946101594b6be21a0e4043199fcb70b3e44d1" [label="/bin/sh -c echo $DOCKER_TIMEZONE > /etc/timezone; dpkg-reconfigure -f noninteractive tzdata" shape="box"];
  "sha256:0b4a9b45f6904a867f1432f0af46026150c773051c31f0f91deb854d501e3b23" [label="/bin/sh -c apt-get update &&     apt-get install -y     apt-transport-https     curl     vim     htop     procps     net-tools;" shape="box"];
  "sha256:6d85e021a513a5ff34eb755c8fc788260cf359a807d30fbfedb1f367c366a220" [label="/bin/sh -c curl https://repo.varnish-cache.org/GPG-key.txt | apt-key add - &&     echo \"deb http://repo.varnish-cache.org/debian/ wheezy varnish-4.1\" >> /etc/apt/sources.list &&     apt-get update &&     apt-get install -y     varnish varnish-agent;" shape="box"];
  "sha256:7098de79503d7464f5d706c065e31a2e3ad2dbb4a5b0fef17a9a7f307008669e" [label="local://context" shape="ellipse"];
  "sha256:256d6fb96d93256cd77d89cecf329522123f7c208adf50d402c47e770c8440d0" [label="copy{src=/etc/default/varnish, dest=/etc/default/varnish}" shape="note"];
  "sha256:7540fdced9e92009334acd991df1ecd084a580b2aee228409391ab804bdcadea" [label="copy{src=/etc/default/varnishncsa, dest=/etc/default/varnishncsa}" shape="note"];
  "sha256:73d266b133c914567c986aae6c7076d59ba07c015945d4d187c447ffe407ff0c" [label="/bin/sh -c echo \"varnish:CacheMeIfYouCan\" > /etc/varnish/agent_secret" shape="box"];
  "sha256:41cb42179f20a031012c141c262d31b52aa68b52a52c0cc5982381f66d792be9" [label="copy{src=/bootstrap.sh, dest=/root/bootstrap.sh}" shape="note"];
  "sha256:f16b9e2d11313f6d95dc806e961d3189745dda27878a89e828cd8e712c00b805" [label="/bin/sh -c chmod 755 /root/bootstrap.sh" shape="box"];
  "sha256:4b3e17b41cd806dd99470462ba70a8967415c08f9c2777bb94507cfb1aaf88ae" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:98ded712642de461505ccb1975af7dffa859fc83d398269da5980c4b91ceac26" [label="sha256:98ded712642de461505ccb1975af7dffa859fc83d398269da5980c4b91ceac26" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:d1ba40c80c7d8390dd92669c09c946101594b6be21a0e4043199fcb70b3e44d1" [label=""];
  "sha256:d1ba40c80c7d8390dd92669c09c946101594b6be21a0e4043199fcb70b3e44d1" -> "sha256:0b4a9b45f6904a867f1432f0af46026150c773051c31f0f91deb854d501e3b23" [label=""];
  "sha256:0b4a9b45f6904a867f1432f0af46026150c773051c31f0f91deb854d501e3b23" -> "sha256:6d85e021a513a5ff34eb755c8fc788260cf359a807d30fbfedb1f367c366a220" [label=""];
  "sha256:6d85e021a513a5ff34eb755c8fc788260cf359a807d30fbfedb1f367c366a220" -> "sha256:256d6fb96d93256cd77d89cecf329522123f7c208adf50d402c47e770c8440d0" [label=""];
  "sha256:7098de79503d7464f5d706c065e31a2e3ad2dbb4a5b0fef17a9a7f307008669e" -> "sha256:256d6fb96d93256cd77d89cecf329522123f7c208adf50d402c47e770c8440d0" [label=""];
  "sha256:256d6fb96d93256cd77d89cecf329522123f7c208adf50d402c47e770c8440d0" -> "sha256:7540fdced9e92009334acd991df1ecd084a580b2aee228409391ab804bdcadea" [label=""];
  "sha256:7098de79503d7464f5d706c065e31a2e3ad2dbb4a5b0fef17a9a7f307008669e" -> "sha256:7540fdced9e92009334acd991df1ecd084a580b2aee228409391ab804bdcadea" [label=""];
  "sha256:7540fdced9e92009334acd991df1ecd084a580b2aee228409391ab804bdcadea" -> "sha256:73d266b133c914567c986aae6c7076d59ba07c015945d4d187c447ffe407ff0c" [label=""];
  "sha256:73d266b133c914567c986aae6c7076d59ba07c015945d4d187c447ffe407ff0c" -> "sha256:41cb42179f20a031012c141c262d31b52aa68b52a52c0cc5982381f66d792be9" [label=""];
  "sha256:7098de79503d7464f5d706c065e31a2e3ad2dbb4a5b0fef17a9a7f307008669e" -> "sha256:41cb42179f20a031012c141c262d31b52aa68b52a52c0cc5982381f66d792be9" [label=""];
  "sha256:41cb42179f20a031012c141c262d31b52aa68b52a52c0cc5982381f66d792be9" -> "sha256:f16b9e2d11313f6d95dc806e961d3189745dda27878a89e828cd8e712c00b805" [label=""];
  "sha256:f16b9e2d11313f6d95dc806e961d3189745dda27878a89e828cd8e712c00b805" -> "sha256:4b3e17b41cd806dd99470462ba70a8967415c08f9c2777bb94507cfb1aaf88ae" [label=""];
  "sha256:4b3e17b41cd806dd99470462ba70a8967415c08f9c2777bb94507cfb1aaf88ae" -> "sha256:98ded712642de461505ccb1975af7dffa859fc83d398269da5980c4b91ceac26" [label=""];
}

