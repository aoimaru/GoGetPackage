[app/sources/281942957.Dockerfile]
digraph {
  "sha256:478bac54eff54d37c3683bb48ff13970ae359c3ece87bbcf62e06466d5162c9c" [label="https://github.com/ufoscout/docker-compose-wait/releases/download/2.4.0/wait" shape="ellipse"];
  "sha256:e6873b0f3da47a1226f46292119f9700092dfab839020533d5d0853b7e417795" [label="docker-image://docker.io/library/node:10.14.1" shape="ellipse"];
  "sha256:9a78f503988fa3649477dd02b1f4975864dfd1a5592193d6467787f2f63890c7" [label="/bin/sh -c apt-get update -y && apt-get install libsecret-1-dev -y" shape="box"];
  "sha256:2d30ed0ba5d06c827437f94434b609ddc98e86a1e51a7326854be1f6435f784b" [label="copy{src=/wait, dest=/wait}" shape="note"];
  "sha256:2597425d259a184a84ef01d39eb6ac9ec9ac2a87944019d32e50a26783726540" [label="/bin/sh -c chmod +x /wait" shape="box"];
  "sha256:93d4923bc7f558f584fd7fcd0d532049d77a0c7e4b4643914c1625c59e8082b2" [label="local://context" shape="ellipse"];
  "sha256:b79045783f93b7ba6fcab19946f4e5cd3b062d6bd1669766caf0ba2d46647b74" [label="copy{src=/, dest=/alchemy}" shape="note"];
  "sha256:1b1b5269a15611c5e5c51f1ab2d4016cbf629849729e783df4a21f28b21db67b" [label="mkdir{path=/alchemy}" shape="note"];
  "sha256:6d0acb8dcfdfd75a4da54f7cac8bfc57b01b9e2e229fe6cfbe1cd9b6ac0a4ac0" [label="/bin/sh -c npm ci" shape="box"];
  "sha256:34f61cf026a5a31bcdb1f988e8dc870a2897bbe08b23ea6c687f6a92c481ffe5" [label="sha256:34f61cf026a5a31bcdb1f988e8dc870a2897bbe08b23ea6c687f6a92c481ffe5" shape="plaintext"];
  "sha256:e6873b0f3da47a1226f46292119f9700092dfab839020533d5d0853b7e417795" -> "sha256:9a78f503988fa3649477dd02b1f4975864dfd1a5592193d6467787f2f63890c7" [label=""];
  "sha256:9a78f503988fa3649477dd02b1f4975864dfd1a5592193d6467787f2f63890c7" -> "sha256:2d30ed0ba5d06c827437f94434b609ddc98e86a1e51a7326854be1f6435f784b" [label=""];
  "sha256:478bac54eff54d37c3683bb48ff13970ae359c3ece87bbcf62e06466d5162c9c" -> "sha256:2d30ed0ba5d06c827437f94434b609ddc98e86a1e51a7326854be1f6435f784b" [label=""];
  "sha256:2d30ed0ba5d06c827437f94434b609ddc98e86a1e51a7326854be1f6435f784b" -> "sha256:2597425d259a184a84ef01d39eb6ac9ec9ac2a87944019d32e50a26783726540" [label=""];
  "sha256:2597425d259a184a84ef01d39eb6ac9ec9ac2a87944019d32e50a26783726540" -> "sha256:b79045783f93b7ba6fcab19946f4e5cd3b062d6bd1669766caf0ba2d46647b74" [label=""];
  "sha256:93d4923bc7f558f584fd7fcd0d532049d77a0c7e4b4643914c1625c59e8082b2" -> "sha256:b79045783f93b7ba6fcab19946f4e5cd3b062d6bd1669766caf0ba2d46647b74" [label=""];
  "sha256:b79045783f93b7ba6fcab19946f4e5cd3b062d6bd1669766caf0ba2d46647b74" -> "sha256:1b1b5269a15611c5e5c51f1ab2d4016cbf629849729e783df4a21f28b21db67b" [label=""];
  "sha256:1b1b5269a15611c5e5c51f1ab2d4016cbf629849729e783df4a21f28b21db67b" -> "sha256:6d0acb8dcfdfd75a4da54f7cac8bfc57b01b9e2e229fe6cfbe1cd9b6ac0a4ac0" [label=""];
  "sha256:6d0acb8dcfdfd75a4da54f7cac8bfc57b01b9e2e229fe6cfbe1cd9b6ac0a4ac0" -> "sha256:34f61cf026a5a31bcdb1f988e8dc870a2897bbe08b23ea6c687f6a92c481ffe5" [label=""];
}

