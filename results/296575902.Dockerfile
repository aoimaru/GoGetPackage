[app/sources/296575902.Dockerfile]
digraph {
  "sha256:da4705090b9854f1462ab307cc018d6e77744874e710b97d642d9fb7f0805eff" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:8aa3b8fd3811678c866a110d1edbea3df84d9491ddbf204071b253aa0a13f8c4" [label="/bin/sh -c echo \"nameserver 8.8.8.8\" >> /etc/resolv.conf" shape="box"];
  "sha256:7ddaf54759a58c38d053557dd3695aa4f938b17b2e98ed74d21cad1681398680" [label="/bin/sh -c apt-get update && apt-get upgrade -q -y &&   apt-get install -y --no-install-recommends git make gcc libc6-dev curl ca-certificates software-properties-common" shape="box"];
  "sha256:de63a6122f82a781ffdecd1b658941223f222592124ce4f7c39e9d8be9d948c3" [label="/bin/sh -c add-apt-repository ppa:ethereum/ethereum &&   apt-get update &&   apt-get install -y --no-install-recommends solc" shape="box"];
  "sha256:55b4cfe78eb883b8f2ec865a59dcdfbe64ae4729de5f49238a05d0cc0c99907c" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz &&   echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c - &&   tar -C /usr/local -xzf golang.tar.gz &&   rm golang.tar.gz" shape="box"];
  "sha256:57e2c40a30283408d84bca9bb738cce529ebf322f688c1cc3b0d1ef400bb536d" [label="/bin/sh -c git clone -b release/1.5 --depth 1 https://github.com/ethereum/go-ethereum" shape="box"];
  "sha256:f1afb9a8babb7cd07f8fdf33f5ffee99438a6335e2117bcc6f0b5e80e3b08fa5" [label="copy{src=/block_validator.go, dest=/go-ethereum/core}" shape="note"];
  "sha256:c4ada3a697e194dd78462e21fdc27d7f0794848d6e4a811704b61f57d5ba002c" [label="copy{src=/worker.go, dest=/go-ethereum/miner}" shape="note"];
  "sha256:1a4f3e86288dd0626b3f74b5e971f87d97fbe335293cfe7275b5ea0e320bcfc2" [label="/bin/sh -c (cd go-ethereum && make geth) &&   cp go-ethereum/build/bin/geth /geth &&   apt-get remove -y git make gcc libc6-dev curl &&   apt-get clean &&   rm -rf /go-ethereum" shape="box"];
  "sha256:45dcd86dad4171e7b804aef518dd1a7b60f422564295fcba023fef3f6e2611bc" [label="copy{src=/LocalGenesis.json, dest=/}" shape="note"];
  "sha256:45e08db4938b6bd2cff3022d0de920770230ef7166f4151a8ce519b364a75da3" [label="copy{src=/LocalPassword.txt, dest=/}" shape="note"];
  "sha256:4a5b3cda472166db1bd19f197f22dc64580e1f411b0fb23c6020cefbf6bbaadf" [label="/bin/sh -c mkdir /root/.ethash &&   /geth init LocalGenesis.json > GethInit.txt &&   /geth --password LocalPassword.txt account new >> GethInit.txt &&   /geth --password LocalPassword.txt account new >> GethInit.txt &&   /geth makedag 0 /root/.ethash" shape="box"];
  "sha256:70c121ed508a5e10c933a72a9b10b50a2f30e7db18c6deddabaa82dc1d5abf78" [label="sha256:70c121ed508a5e10c933a72a9b10b50a2f30e7db18c6deddabaa82dc1d5abf78" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:8aa3b8fd3811678c866a110d1edbea3df84d9491ddbf204071b253aa0a13f8c4" [label=""];
  "sha256:8aa3b8fd3811678c866a110d1edbea3df84d9491ddbf204071b253aa0a13f8c4" -> "sha256:7ddaf54759a58c38d053557dd3695aa4f938b17b2e98ed74d21cad1681398680" [label=""];
  "sha256:7ddaf54759a58c38d053557dd3695aa4f938b17b2e98ed74d21cad1681398680" -> "sha256:de63a6122f82a781ffdecd1b658941223f222592124ce4f7c39e9d8be9d948c3" [label=""];
  "sha256:de63a6122f82a781ffdecd1b658941223f222592124ce4f7c39e9d8be9d948c3" -> "sha256:55b4cfe78eb883b8f2ec865a59dcdfbe64ae4729de5f49238a05d0cc0c99907c" [label=""];
  "sha256:55b4cfe78eb883b8f2ec865a59dcdfbe64ae4729de5f49238a05d0cc0c99907c" -> "sha256:57e2c40a30283408d84bca9bb738cce529ebf322f688c1cc3b0d1ef400bb536d" [label=""];
  "sha256:57e2c40a30283408d84bca9bb738cce529ebf322f688c1cc3b0d1ef400bb536d" -> "sha256:f1afb9a8babb7cd07f8fdf33f5ffee99438a6335e2117bcc6f0b5e80e3b08fa5" [label=""];
  "sha256:da4705090b9854f1462ab307cc018d6e77744874e710b97d642d9fb7f0805eff" -> "sha256:f1afb9a8babb7cd07f8fdf33f5ffee99438a6335e2117bcc6f0b5e80e3b08fa5" [label=""];
  "sha256:f1afb9a8babb7cd07f8fdf33f5ffee99438a6335e2117bcc6f0b5e80e3b08fa5" -> "sha256:c4ada3a697e194dd78462e21fdc27d7f0794848d6e4a811704b61f57d5ba002c" [label=""];
  "sha256:da4705090b9854f1462ab307cc018d6e77744874e710b97d642d9fb7f0805eff" -> "sha256:c4ada3a697e194dd78462e21fdc27d7f0794848d6e4a811704b61f57d5ba002c" [label=""];
  "sha256:c4ada3a697e194dd78462e21fdc27d7f0794848d6e4a811704b61f57d5ba002c" -> "sha256:1a4f3e86288dd0626b3f74b5e971f87d97fbe335293cfe7275b5ea0e320bcfc2" [label=""];
  "sha256:1a4f3e86288dd0626b3f74b5e971f87d97fbe335293cfe7275b5ea0e320bcfc2" -> "sha256:45dcd86dad4171e7b804aef518dd1a7b60f422564295fcba023fef3f6e2611bc" [label=""];
  "sha256:da4705090b9854f1462ab307cc018d6e77744874e710b97d642d9fb7f0805eff" -> "sha256:45dcd86dad4171e7b804aef518dd1a7b60f422564295fcba023fef3f6e2611bc" [label=""];
  "sha256:45dcd86dad4171e7b804aef518dd1a7b60f422564295fcba023fef3f6e2611bc" -> "sha256:45e08db4938b6bd2cff3022d0de920770230ef7166f4151a8ce519b364a75da3" [label=""];
  "sha256:da4705090b9854f1462ab307cc018d6e77744874e710b97d642d9fb7f0805eff" -> "sha256:45e08db4938b6bd2cff3022d0de920770230ef7166f4151a8ce519b364a75da3" [label=""];
  "sha256:45e08db4938b6bd2cff3022d0de920770230ef7166f4151a8ce519b364a75da3" -> "sha256:4a5b3cda472166db1bd19f197f22dc64580e1f411b0fb23c6020cefbf6bbaadf" [label=""];
  "sha256:4a5b3cda472166db1bd19f197f22dc64580e1f411b0fb23c6020cefbf6bbaadf" -> "sha256:70c121ed508a5e10c933a72a9b10b50a2f30e7db18c6deddabaa82dc1d5abf78" [label=""];
}

