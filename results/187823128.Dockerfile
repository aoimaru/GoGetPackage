[app/sources/187823128.Dockerfile]
digraph {
  "sha256:b37972f33109dbb8b4daac693969f672a9008e11e7ce7b058e49eddf91ea5b8d" [label="docker-image://docker.io/library/ubuntu:vivid" shape="ellipse"];
  "sha256:6c302cebb61445de82bef9a4a7556f3ab27b7c497f4c0f3565d1a1fd062e7c76" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:382a665198a63cfdc8eac7e2d3743d53640a2f087eb33fc6c1e8efea9969bc19" [label="/bin/sh -c apt-get -y install make python" shape="box"];
  "sha256:623fc4bf94d5fa6fcb80458d3975f7f408cab33b0707feba213c04ed5e928591" [label="/bin/sh -c apt-get -y install curl libreadline-dev libedit-dev" shape="box"];
  "sha256:4b4041e4d26b96a3c523b74ae375eb08d77461e0c19eb41085a29a2e481c18a5" [label="/bin/sh -c mkdir -p /mal" shape="box"];
  "sha256:8319aa0e1aeb094c6314ed329ae2c5212cdc65d6cc3b6a51ed37e06b6acdf1c1" [label="mkdir{path=/mal}" shape="note"];
  "sha256:6c221fe3f5abf45419e6cbac45d8ab897cbd7c92c7f3814bd2c4575286235e87" [label="/bin/sh -c apt-get -y install mono-runtime mono-mcs mono-vbnc mono-devel" shape="box"];
  "sha256:e38739bf184ceaa2473fc1a844b24d85fcdd4d8014c2c044b405559c198903d3" [label="/bin/sh -c apt-get -y install fsharp" shape="box"];
  "sha256:55eeb078c36fb07c57dbb64988fd1bb76f154191bab19f5e5e9a3ee0264775d6" [label="sha256:55eeb078c36fb07c57dbb64988fd1bb76f154191bab19f5e5e9a3ee0264775d6" shape="plaintext"];
  "sha256:b37972f33109dbb8b4daac693969f672a9008e11e7ce7b058e49eddf91ea5b8d" -> "sha256:6c302cebb61445de82bef9a4a7556f3ab27b7c497f4c0f3565d1a1fd062e7c76" [label=""];
  "sha256:6c302cebb61445de82bef9a4a7556f3ab27b7c497f4c0f3565d1a1fd062e7c76" -> "sha256:382a665198a63cfdc8eac7e2d3743d53640a2f087eb33fc6c1e8efea9969bc19" [label=""];
  "sha256:382a665198a63cfdc8eac7e2d3743d53640a2f087eb33fc6c1e8efea9969bc19" -> "sha256:623fc4bf94d5fa6fcb80458d3975f7f408cab33b0707feba213c04ed5e928591" [label=""];
  "sha256:623fc4bf94d5fa6fcb80458d3975f7f408cab33b0707feba213c04ed5e928591" -> "sha256:4b4041e4d26b96a3c523b74ae375eb08d77461e0c19eb41085a29a2e481c18a5" [label=""];
  "sha256:4b4041e4d26b96a3c523b74ae375eb08d77461e0c19eb41085a29a2e481c18a5" -> "sha256:8319aa0e1aeb094c6314ed329ae2c5212cdc65d6cc3b6a51ed37e06b6acdf1c1" [label=""];
  "sha256:8319aa0e1aeb094c6314ed329ae2c5212cdc65d6cc3b6a51ed37e06b6acdf1c1" -> "sha256:6c221fe3f5abf45419e6cbac45d8ab897cbd7c92c7f3814bd2c4575286235e87" [label=""];
  "sha256:6c221fe3f5abf45419e6cbac45d8ab897cbd7c92c7f3814bd2c4575286235e87" -> "sha256:e38739bf184ceaa2473fc1a844b24d85fcdd4d8014c2c044b405559c198903d3" [label=""];
  "sha256:e38739bf184ceaa2473fc1a844b24d85fcdd4d8014c2c044b405559c198903d3" -> "sha256:55eeb078c36fb07c57dbb64988fd1bb76f154191bab19f5e5e9a3ee0264775d6" [label=""];
}

