[app/sources/357672041.Dockerfile]
digraph {
  "sha256:db515b2dd6825e9984a957546f9d82358a62c3f7ef07f05d421227b563084c48" [label="docker-image://docker.io/netcapsule/base-browser:latest" shape="ellipse"];
  "sha256:61c2e8e02ec52342d8a646e02b29e9cf0fdee7f5a5886907536d375ce2bd5bcf" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         libsdl1.2-dev" shape="box"];
  "sha256:6dcc20a113b6c09020cea5870af863db01d623814d11ba7a2cfb9320c64d66ba" [label="mkdir{path=/home/browser}" shape="note"];
  "sha256:a59c6edac28bad033637db05565fe422ed68bfff0ef5b905b876bd5a49459934" [label="local://context" shape="ellipse"];
  "sha256:7be7d6a96f5c67a51997d9e6c0749499173a1c41aa78c72bd42beb03aa09a963" [label="copy{src=/oldworld.rom, dest=/home/browser/}" shape="note"];
  "sha256:c4e332002bb83c77ddf5786ce7ca7f122f535033a2aed89fca63259888270842" [label="copy{src=/NetscapePreferences, dest=/home/browser/NetscapePreferences}" shape="note"];
  "sha256:6ec566db841e7a740e972c982cc4af628e1986afb2a9f4e088979ef7d3b2c49b" [label="copy{src=/sheepshaver_prefs, dest=/home/browser/.sheepshaver_prefs}" shape="note"];
  "sha256:4d754e79eb3cbc5b853136330a6bd98059b79a379297c92b76b0ab3a5c1daa60" [label="copy{src=/SheepShaver, dest=/home/browser/}" shape="note"];
  "sha256:b184905db1a7e3f9aa500dd63879ea3600f7235e7ee1a5b7371fcb3fd0b3aac1" [label="/bin/sh -c sudo chown browser ./SheepShaver" shape="box"];
  "sha256:82560106d4c83f45d70fc83b12e1b3f70e37dac6fd2fa4fd25022ecfc1d3196f" [label="/bin/sh -c sudo chmod a+x ./SheepShaver" shape="box"];
  "sha256:3f722bd51f06b54616eda160b4feaf1c7d1d7048910839d7ad78aac8de961993" [label="copy{src=/hd.tar.gz, dest=/home/browser/}" shape="note"];
  "sha256:df2ac4893a66280e87fecf66029bdd121dba52fe3f876e7e355c9a025a6f0807" [label="/bin/sh -c sudo chown browser ./hd.dsk" shape="box"];
  "sha256:0c021e6d5ae7f8a482cb87f1b6482942e48fa62a47f3f38811cd7b0555f47b1d" [label="copy{src=/run.sh, dest=/home/browser/run.sh}" shape="note"];
  "sha256:fb1ba3fa91b3b3927b02353857cf6fa4095e1ef253873783321ae0d7cc379c28" [label="/bin/sh -c sudo chown browser /home/browser/run.sh" shape="box"];
  "sha256:a7d24f62fa371704f874e4a330da2b300024a70a8c232242bbe3dfd369915192" [label="sha256:a7d24f62fa371704f874e4a330da2b300024a70a8c232242bbe3dfd369915192" shape="plaintext"];
  "sha256:db515b2dd6825e9984a957546f9d82358a62c3f7ef07f05d421227b563084c48" -> "sha256:61c2e8e02ec52342d8a646e02b29e9cf0fdee7f5a5886907536d375ce2bd5bcf" [label=""];
  "sha256:61c2e8e02ec52342d8a646e02b29e9cf0fdee7f5a5886907536d375ce2bd5bcf" -> "sha256:6dcc20a113b6c09020cea5870af863db01d623814d11ba7a2cfb9320c64d66ba" [label=""];
  "sha256:6dcc20a113b6c09020cea5870af863db01d623814d11ba7a2cfb9320c64d66ba" -> "sha256:7be7d6a96f5c67a51997d9e6c0749499173a1c41aa78c72bd42beb03aa09a963" [label=""];
  "sha256:a59c6edac28bad033637db05565fe422ed68bfff0ef5b905b876bd5a49459934" -> "sha256:7be7d6a96f5c67a51997d9e6c0749499173a1c41aa78c72bd42beb03aa09a963" [label=""];
  "sha256:7be7d6a96f5c67a51997d9e6c0749499173a1c41aa78c72bd42beb03aa09a963" -> "sha256:c4e332002bb83c77ddf5786ce7ca7f122f535033a2aed89fca63259888270842" [label=""];
  "sha256:a59c6edac28bad033637db05565fe422ed68bfff0ef5b905b876bd5a49459934" -> "sha256:c4e332002bb83c77ddf5786ce7ca7f122f535033a2aed89fca63259888270842" [label=""];
  "sha256:c4e332002bb83c77ddf5786ce7ca7f122f535033a2aed89fca63259888270842" -> "sha256:6ec566db841e7a740e972c982cc4af628e1986afb2a9f4e088979ef7d3b2c49b" [label=""];
  "sha256:a59c6edac28bad033637db05565fe422ed68bfff0ef5b905b876bd5a49459934" -> "sha256:6ec566db841e7a740e972c982cc4af628e1986afb2a9f4e088979ef7d3b2c49b" [label=""];
  "sha256:6ec566db841e7a740e972c982cc4af628e1986afb2a9f4e088979ef7d3b2c49b" -> "sha256:4d754e79eb3cbc5b853136330a6bd98059b79a379297c92b76b0ab3a5c1daa60" [label=""];
  "sha256:a59c6edac28bad033637db05565fe422ed68bfff0ef5b905b876bd5a49459934" -> "sha256:4d754e79eb3cbc5b853136330a6bd98059b79a379297c92b76b0ab3a5c1daa60" [label=""];
  "sha256:4d754e79eb3cbc5b853136330a6bd98059b79a379297c92b76b0ab3a5c1daa60" -> "sha256:b184905db1a7e3f9aa500dd63879ea3600f7235e7ee1a5b7371fcb3fd0b3aac1" [label=""];
  "sha256:b184905db1a7e3f9aa500dd63879ea3600f7235e7ee1a5b7371fcb3fd0b3aac1" -> "sha256:82560106d4c83f45d70fc83b12e1b3f70e37dac6fd2fa4fd25022ecfc1d3196f" [label=""];
  "sha256:82560106d4c83f45d70fc83b12e1b3f70e37dac6fd2fa4fd25022ecfc1d3196f" -> "sha256:3f722bd51f06b54616eda160b4feaf1c7d1d7048910839d7ad78aac8de961993" [label=""];
  "sha256:a59c6edac28bad033637db05565fe422ed68bfff0ef5b905b876bd5a49459934" -> "sha256:3f722bd51f06b54616eda160b4feaf1c7d1d7048910839d7ad78aac8de961993" [label=""];
  "sha256:3f722bd51f06b54616eda160b4feaf1c7d1d7048910839d7ad78aac8de961993" -> "sha256:df2ac4893a66280e87fecf66029bdd121dba52fe3f876e7e355c9a025a6f0807" [label=""];
  "sha256:df2ac4893a66280e87fecf66029bdd121dba52fe3f876e7e355c9a025a6f0807" -> "sha256:0c021e6d5ae7f8a482cb87f1b6482942e48fa62a47f3f38811cd7b0555f47b1d" [label=""];
  "sha256:a59c6edac28bad033637db05565fe422ed68bfff0ef5b905b876bd5a49459934" -> "sha256:0c021e6d5ae7f8a482cb87f1b6482942e48fa62a47f3f38811cd7b0555f47b1d" [label=""];
  "sha256:0c021e6d5ae7f8a482cb87f1b6482942e48fa62a47f3f38811cd7b0555f47b1d" -> "sha256:fb1ba3fa91b3b3927b02353857cf6fa4095e1ef253873783321ae0d7cc379c28" [label=""];
  "sha256:fb1ba3fa91b3b3927b02353857cf6fa4095e1ef253873783321ae0d7cc379c28" -> "sha256:a7d24f62fa371704f874e4a330da2b300024a70a8c232242bbe3dfd369915192" [label=""];
}

