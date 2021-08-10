[app/sources/252797539.Dockerfile]
digraph {
  "sha256:2a07ac73bce574be43ccf30170ec5b30af856e874f42fb2ef5c545c394c1e1aa" [label="docker-image://docker.io/continuumio/miniconda3:latest" shape="ellipse"];
  "sha256:fb06ebc714b6093d7ae13293dbdee0fedaf9727fd2500230215205750937bc59" [label="/bin/sh -c conda install -q -y -c anaconda redis" shape="box"];
  "sha256:537d2e7e7c591dab83c2dc95a424ff1081aeeca4bc59f0bc49938249f36cbe6a" [label="/bin/sh -c conda install -q -y -c conda-forge -c cmutel pandarus_remote" shape="box"];
  "sha256:37bd25095e9a6ac868ec913d54ca05c067d9a3b9b761992454858509efb19105" [label="/bin/sh -c conda install -y -c conda-forge psutil iowait tornado pyzmq" shape="box"];
  "sha256:727db76a848c48f84fc0d4f859113d2acd9ffd0bf98b7a15a0e8b52f2271b70e" [label="/bin/sh -c pip install circus" shape="box"];
  "sha256:d5e7b5e1c9b69848b4d1dcdb095fc5eccb9bb77f2665e85244b538cf74f1126b" [label="/bin/sh -c mkdir /pr" shape="box"];
  "sha256:a8768ea5902e98140568fdbad20eacf6d9051b94ee8da96ab944856d76e245d1" [label="local://context" shape="ellipse"];
  "sha256:6532c2c7d2ef0b875e04c38b604452b84fec261961ea73944e623bb1006f65c0" [label="copy{src=/circus.ini, dest=/pr/}" shape="note"];
  "sha256:ed69b931be4e362297ce6b67d9162f00045295f7b07da4111002e569dc62f980" [label="sha256:ed69b931be4e362297ce6b67d9162f00045295f7b07da4111002e569dc62f980" shape="plaintext"];
  "sha256:2a07ac73bce574be43ccf30170ec5b30af856e874f42fb2ef5c545c394c1e1aa" -> "sha256:fb06ebc714b6093d7ae13293dbdee0fedaf9727fd2500230215205750937bc59" [label=""];
  "sha256:fb06ebc714b6093d7ae13293dbdee0fedaf9727fd2500230215205750937bc59" -> "sha256:537d2e7e7c591dab83c2dc95a424ff1081aeeca4bc59f0bc49938249f36cbe6a" [label=""];
  "sha256:537d2e7e7c591dab83c2dc95a424ff1081aeeca4bc59f0bc49938249f36cbe6a" -> "sha256:37bd25095e9a6ac868ec913d54ca05c067d9a3b9b761992454858509efb19105" [label=""];
  "sha256:37bd25095e9a6ac868ec913d54ca05c067d9a3b9b761992454858509efb19105" -> "sha256:727db76a848c48f84fc0d4f859113d2acd9ffd0bf98b7a15a0e8b52f2271b70e" [label=""];
  "sha256:727db76a848c48f84fc0d4f859113d2acd9ffd0bf98b7a15a0e8b52f2271b70e" -> "sha256:d5e7b5e1c9b69848b4d1dcdb095fc5eccb9bb77f2665e85244b538cf74f1126b" [label=""];
  "sha256:d5e7b5e1c9b69848b4d1dcdb095fc5eccb9bb77f2665e85244b538cf74f1126b" -> "sha256:6532c2c7d2ef0b875e04c38b604452b84fec261961ea73944e623bb1006f65c0" [label=""];
  "sha256:a8768ea5902e98140568fdbad20eacf6d9051b94ee8da96ab944856d76e245d1" -> "sha256:6532c2c7d2ef0b875e04c38b604452b84fec261961ea73944e623bb1006f65c0" [label=""];
  "sha256:6532c2c7d2ef0b875e04c38b604452b84fec261961ea73944e623bb1006f65c0" -> "sha256:ed69b931be4e362297ce6b67d9162f00045295f7b07da4111002e569dc62f980" [label=""];
}

