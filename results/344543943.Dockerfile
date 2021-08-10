[app/sources/344543943.Dockerfile]
digraph {
  "sha256:cf6f8b3333ca04d8ba3068405e97c00e8df6fd1e3027f3b37d8f07eaab868d05" [label="local://context" shape="ellipse"];
  "sha256:016614c477275fa839a20af6e45122941f6ddb0c906992e14c7b1411db971d02" [label="docker-image://docker.io/arm32v7/node:lts-stretch" shape="ellipse"];
  "sha256:d32c551dd98cfa62afecfaaa36db16724fd4561410529dec8aa5a732c678e3f2" [label="copy{src=/docker_tmp/qemu-arm-static, dest=/usr/bin/}" shape="note"];
  "sha256:a1436414ee50692ea7c4f5d76281dc2a5bb73f859748c9e7c659e0726ad08288" [label="/bin/sh -c apt-get update && apt-get install -y tzdata" shape="box"];
  "sha256:6fad0ac1be2b6c29d41c31bce5364dc32ba671e87c2044de6ee06a403146f0fd" [label="/bin/sh -c mkdir /src" shape="box"];
  "sha256:a1caae92991791feb956b19e601daf1aed3bf91702024317e036520725a5b14a" [label="mkdir{path=/src}" shape="note"];
  "sha256:dd45eafce253047195bb2aa1e81792a1888ffdbc1dfa23bb3864544dfa191da5" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:d6428c6bdf5be403358a75f15bcbe5359b158bab1f9872ecf6289c601dc608ec" [label="/bin/sh -c apt-get update && apt-get install -y make gcc g++ python git &&     yarn install --production &&     yarn global add grunt-cli &&     grunt buildProd &&     yarn global remove grunt-cli &&     apt-get remove -y make gcc g++ python git &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7d0f04000ab581920eeb59e5e0d10aba3de427ab341e72665ff87870c60aaf30" [label="sha256:7d0f04000ab581920eeb59e5e0d10aba3de427ab341e72665ff87870c60aaf30" shape="plaintext"];
  "sha256:016614c477275fa839a20af6e45122941f6ddb0c906992e14c7b1411db971d02" -> "sha256:d32c551dd98cfa62afecfaaa36db16724fd4561410529dec8aa5a732c678e3f2" [label=""];
  "sha256:cf6f8b3333ca04d8ba3068405e97c00e8df6fd1e3027f3b37d8f07eaab868d05" -> "sha256:d32c551dd98cfa62afecfaaa36db16724fd4561410529dec8aa5a732c678e3f2" [label=""];
  "sha256:d32c551dd98cfa62afecfaaa36db16724fd4561410529dec8aa5a732c678e3f2" -> "sha256:a1436414ee50692ea7c4f5d76281dc2a5bb73f859748c9e7c659e0726ad08288" [label=""];
  "sha256:a1436414ee50692ea7c4f5d76281dc2a5bb73f859748c9e7c659e0726ad08288" -> "sha256:6fad0ac1be2b6c29d41c31bce5364dc32ba671e87c2044de6ee06a403146f0fd" [label=""];
  "sha256:6fad0ac1be2b6c29d41c31bce5364dc32ba671e87c2044de6ee06a403146f0fd" -> "sha256:a1caae92991791feb956b19e601daf1aed3bf91702024317e036520725a5b14a" [label=""];
  "sha256:a1caae92991791feb956b19e601daf1aed3bf91702024317e036520725a5b14a" -> "sha256:dd45eafce253047195bb2aa1e81792a1888ffdbc1dfa23bb3864544dfa191da5" [label=""];
  "sha256:cf6f8b3333ca04d8ba3068405e97c00e8df6fd1e3027f3b37d8f07eaab868d05" -> "sha256:dd45eafce253047195bb2aa1e81792a1888ffdbc1dfa23bb3864544dfa191da5" [label=""];
  "sha256:dd45eafce253047195bb2aa1e81792a1888ffdbc1dfa23bb3864544dfa191da5" -> "sha256:d6428c6bdf5be403358a75f15bcbe5359b158bab1f9872ecf6289c601dc608ec" [label=""];
  "sha256:d6428c6bdf5be403358a75f15bcbe5359b158bab1f9872ecf6289c601dc608ec" -> "sha256:7d0f04000ab581920eeb59e5e0d10aba3de427ab341e72665ff87870c60aaf30" [label=""];
}

