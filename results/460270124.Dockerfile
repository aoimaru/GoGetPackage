[app/sources/460270124.Dockerfile]
digraph {
  "sha256:951c2712c041636321e64eb8f8adecec9155cf8f397ddf9237b9127147dfc7a6" [label="https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64" shape="ellipse"];
  "sha256:07e885f2c70df78065d7d59f3956c1ec668a776b3d36b0206da8554891dc5c44" [label="docker-image://docker.io/library/rethinkdb:2.3.5" shape="ellipse"];
  "sha256:2b174b2e11c880bedb3a40368b86ef6bc479549193f85186b32419c21ab10cdb" [label="/bin/sh -c apt-get update &&     apt-get install -yq curl &&     rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2ca509aa76e8d321a06a1c6ef73c5de1d596119253d9ccf45be054b5f83d4e9a" [label="http://stedolan.github.io/jq/download/linux64/jq" shape="ellipse"];
  "sha256:ef8619d9c7f3e0fc8ae2907eab14b55293416f380559770a7ef81da5b0617b1a" [label="copy{src=/jq, dest=/usr/bin/jq}" shape="note"];
  "sha256:eb3433eed74cdcd7c0db43c6e72aaab866829b4c894d2049936b5a4962798822" [label="/bin/sh -c chmod +x /usr/bin/jq" shape="box"];
  "sha256:0ed6afa1cd809a36b4bd1c82420063d38696bd43eaa0712666316c0c9d50e6c9" [label="copy{src=/dumb-init_1.2.0_amd64, dest=/usr/local/bin/dumb-init}" shape="note"];
  "sha256:031768c46ebe287ad0270ba2ff63cb56cb2eb99d5367b5ee71d82086f1a0c7b9" [label="/bin/sh -c chmod +x /usr/local/bin/dumb-init" shape="box"];
  "sha256:ca5a79248f57db55934705563330a361765ab4ad4232e995e4659963f8d56f80" [label="local://context" shape="ellipse"];
  "sha256:725f78d9786adc81dbe2879c02edaba5a805f554081a4115fc35bae4ac31f1aa" [label="copy{src=/files/run.sh, dest=/},copy{src=/rethinkdb-probe/rethinkdb-probe, dest=/}" shape="note"];
  "sha256:3b302d34ad2e6adfd54cacabacebe13f344756f513e04ca766c460069c64ee58" [label="/bin/sh -c chmod u+x /run.sh /rethinkdb-probe" shape="box"];
  "sha256:9d68be72a0418401b40e23046fbc088f2a84a8fea20ec0a6e72de3feaf7abe0d" [label="sha256:9d68be72a0418401b40e23046fbc088f2a84a8fea20ec0a6e72de3feaf7abe0d" shape="plaintext"];
  "sha256:07e885f2c70df78065d7d59f3956c1ec668a776b3d36b0206da8554891dc5c44" -> "sha256:2b174b2e11c880bedb3a40368b86ef6bc479549193f85186b32419c21ab10cdb" [label=""];
  "sha256:2b174b2e11c880bedb3a40368b86ef6bc479549193f85186b32419c21ab10cdb" -> "sha256:ef8619d9c7f3e0fc8ae2907eab14b55293416f380559770a7ef81da5b0617b1a" [label=""];
  "sha256:2ca509aa76e8d321a06a1c6ef73c5de1d596119253d9ccf45be054b5f83d4e9a" -> "sha256:ef8619d9c7f3e0fc8ae2907eab14b55293416f380559770a7ef81da5b0617b1a" [label=""];
  "sha256:ef8619d9c7f3e0fc8ae2907eab14b55293416f380559770a7ef81da5b0617b1a" -> "sha256:eb3433eed74cdcd7c0db43c6e72aaab866829b4c894d2049936b5a4962798822" [label=""];
  "sha256:eb3433eed74cdcd7c0db43c6e72aaab866829b4c894d2049936b5a4962798822" -> "sha256:0ed6afa1cd809a36b4bd1c82420063d38696bd43eaa0712666316c0c9d50e6c9" [label=""];
  "sha256:951c2712c041636321e64eb8f8adecec9155cf8f397ddf9237b9127147dfc7a6" -> "sha256:0ed6afa1cd809a36b4bd1c82420063d38696bd43eaa0712666316c0c9d50e6c9" [label=""];
  "sha256:0ed6afa1cd809a36b4bd1c82420063d38696bd43eaa0712666316c0c9d50e6c9" -> "sha256:031768c46ebe287ad0270ba2ff63cb56cb2eb99d5367b5ee71d82086f1a0c7b9" [label=""];
  "sha256:031768c46ebe287ad0270ba2ff63cb56cb2eb99d5367b5ee71d82086f1a0c7b9" -> "sha256:725f78d9786adc81dbe2879c02edaba5a805f554081a4115fc35bae4ac31f1aa" [label=""];
  "sha256:ca5a79248f57db55934705563330a361765ab4ad4232e995e4659963f8d56f80" -> "sha256:725f78d9786adc81dbe2879c02edaba5a805f554081a4115fc35bae4ac31f1aa" [label=""];
  "sha256:725f78d9786adc81dbe2879c02edaba5a805f554081a4115fc35bae4ac31f1aa" -> "sha256:3b302d34ad2e6adfd54cacabacebe13f344756f513e04ca766c460069c64ee58" [label=""];
  "sha256:3b302d34ad2e6adfd54cacabacebe13f344756f513e04ca766c460069c64ee58" -> "sha256:9d68be72a0418401b40e23046fbc088f2a84a8fea20ec0a6e72de3feaf7abe0d" [label=""];
}

