[app/sources/252769730.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:8176c6516e1b94eceb748d5cb0dc3db2cad8a3e0f91827a205eb89c1d0c26c27" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:9379ac4a0ef9041430846fb80c51b7cbd04f9eb5e1a3532048f73538c7cfb27b" [label="/bin/sh -c apt-get install -y curl" shape="box"];
  "sha256:0d4fe65e62be39edab472fbf3b35ea34ff8fdab70e61c51d7dcdc2e47ec58531" [label="/bin/sh -c apt-get install -y nmap" shape="box"];
  "sha256:9a70894717b30a454daca93227c0395a33ae709cf6302ed6689608782b6127cd" [label="/bin/sh -c apt-get install -y socat" shape="box"];
  "sha256:a6b2be83de720da9bebedb654daae2db73fecdf87d5ce2a79e68697841bdde19" [label="/bin/sh -c apt-get install -y openssh-client" shape="box"];
  "sha256:0d64b39c0a3da3f16763fe73751067eb490ed11de0a2ceeff3e445bcb33336df" [label="/bin/sh -c apt-get install -y openssl" shape="box"];
  "sha256:ebe4723395c3a44320b2817059a61b657b1c25093b98e9a607c9ec63fedc1b07" [label="/bin/sh -c apt-get install -y iotop" shape="box"];
  "sha256:bfe1a6454b06bcdef4581c78e692764638b0eb24bfe39ad432fcbdb7ef5b37ef" [label="/bin/sh -c apt-get install -y strace" shape="box"];
  "sha256:e4bd5648f2941f3ef16fb81e9b23b1751754174f5be82c32547a369550edf45e" [label="/bin/sh -c apt-get install -y tcpdump" shape="box"];
  "sha256:21cfe7ec9eed607cdf9727e8c75155af563391b94e48f06bd3c5b1ba8fe308fc" [label="/bin/sh -c apt-get install -y lsof" shape="box"];
  "sha256:767b69f7f134d825156481bc0ed038d70958c3db3d0797f8c050a0bc330ebb93" [label="/bin/sh -c apt-get install -y inotify-tools" shape="box"];
  "sha256:474e61eb6d9d291b396d969a923c6d1fa0f360d74b9d05fad281a59c1b4866bf" [label="/bin/sh -c apt-get install -y sysstat" shape="box"];
  "sha256:055150c167efc86c5e33980faa291b4f1b44f516fd7d400e28d1be03e5415a7f" [label="/bin/sh -c apt-get install -y build-essential" shape="box"];
  "sha256:dcae00bbce9778ec54554e75eabdc4224c621a0725f73fb6d4427d4b733ef1b7" [label="/bin/sh -c echo \"source /root/bash_extra\" >> /root/.bashrc" shape="box"];
  "sha256:5036ad44c892dc0a6e8d002bea4e8b3756e3f0ee7f2ae9bbf448dd2fd0a07b24" [label="local://context" shape="ellipse"];
  "sha256:6a82d38ee93a0d7060fa7316224f9be829d4c7d4ffd1d9d10c22b16e9d51944c" [label="copy{src=/bash_extra, dest=/root/bash_extra}" shape="note"];
  "sha256:fef779802cea71e1a929271c948e1f95ac8ba3d49fd347a524c9352f42aec151" [label="sha256:fef779802cea71e1a929271c948e1f95ac8ba3d49fd347a524c9352f42aec151" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:8176c6516e1b94eceb748d5cb0dc3db2cad8a3e0f91827a205eb89c1d0c26c27" [label=""];
  "sha256:8176c6516e1b94eceb748d5cb0dc3db2cad8a3e0f91827a205eb89c1d0c26c27" -> "sha256:9379ac4a0ef9041430846fb80c51b7cbd04f9eb5e1a3532048f73538c7cfb27b" [label=""];
  "sha256:9379ac4a0ef9041430846fb80c51b7cbd04f9eb5e1a3532048f73538c7cfb27b" -> "sha256:0d4fe65e62be39edab472fbf3b35ea34ff8fdab70e61c51d7dcdc2e47ec58531" [label=""];
  "sha256:0d4fe65e62be39edab472fbf3b35ea34ff8fdab70e61c51d7dcdc2e47ec58531" -> "sha256:9a70894717b30a454daca93227c0395a33ae709cf6302ed6689608782b6127cd" [label=""];
  "sha256:9a70894717b30a454daca93227c0395a33ae709cf6302ed6689608782b6127cd" -> "sha256:a6b2be83de720da9bebedb654daae2db73fecdf87d5ce2a79e68697841bdde19" [label=""];
  "sha256:a6b2be83de720da9bebedb654daae2db73fecdf87d5ce2a79e68697841bdde19" -> "sha256:0d64b39c0a3da3f16763fe73751067eb490ed11de0a2ceeff3e445bcb33336df" [label=""];
  "sha256:0d64b39c0a3da3f16763fe73751067eb490ed11de0a2ceeff3e445bcb33336df" -> "sha256:ebe4723395c3a44320b2817059a61b657b1c25093b98e9a607c9ec63fedc1b07" [label=""];
  "sha256:ebe4723395c3a44320b2817059a61b657b1c25093b98e9a607c9ec63fedc1b07" -> "sha256:bfe1a6454b06bcdef4581c78e692764638b0eb24bfe39ad432fcbdb7ef5b37ef" [label=""];
  "sha256:bfe1a6454b06bcdef4581c78e692764638b0eb24bfe39ad432fcbdb7ef5b37ef" -> "sha256:e4bd5648f2941f3ef16fb81e9b23b1751754174f5be82c32547a369550edf45e" [label=""];
  "sha256:e4bd5648f2941f3ef16fb81e9b23b1751754174f5be82c32547a369550edf45e" -> "sha256:21cfe7ec9eed607cdf9727e8c75155af563391b94e48f06bd3c5b1ba8fe308fc" [label=""];
  "sha256:21cfe7ec9eed607cdf9727e8c75155af563391b94e48f06bd3c5b1ba8fe308fc" -> "sha256:767b69f7f134d825156481bc0ed038d70958c3db3d0797f8c050a0bc330ebb93" [label=""];
  "sha256:767b69f7f134d825156481bc0ed038d70958c3db3d0797f8c050a0bc330ebb93" -> "sha256:474e61eb6d9d291b396d969a923c6d1fa0f360d74b9d05fad281a59c1b4866bf" [label=""];
  "sha256:474e61eb6d9d291b396d969a923c6d1fa0f360d74b9d05fad281a59c1b4866bf" -> "sha256:055150c167efc86c5e33980faa291b4f1b44f516fd7d400e28d1be03e5415a7f" [label=""];
  "sha256:055150c167efc86c5e33980faa291b4f1b44f516fd7d400e28d1be03e5415a7f" -> "sha256:dcae00bbce9778ec54554e75eabdc4224c621a0725f73fb6d4427d4b733ef1b7" [label=""];
  "sha256:dcae00bbce9778ec54554e75eabdc4224c621a0725f73fb6d4427d4b733ef1b7" -> "sha256:6a82d38ee93a0d7060fa7316224f9be829d4c7d4ffd1d9d10c22b16e9d51944c" [label=""];
  "sha256:5036ad44c892dc0a6e8d002bea4e8b3756e3f0ee7f2ae9bbf448dd2fd0a07b24" -> "sha256:6a82d38ee93a0d7060fa7316224f9be829d4c7d4ffd1d9d10c22b16e9d51944c" [label=""];
  "sha256:6a82d38ee93a0d7060fa7316224f9be829d4c7d4ffd1d9d10c22b16e9d51944c" -> "sha256:fef779802cea71e1a929271c948e1f95ac8ba3d49fd347a524c9352f42aec151" [label=""];
}

