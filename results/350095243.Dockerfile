[app/sources/350095243.Dockerfile]
digraph {
  "sha256:23d0b4370c541ebc19f40748193dc58ed3d61173eae0d48e8f22da53c9590c70" [label="docker-image://docker.io/library/golang:1.6.0" shape="ellipse"];
  "sha256:9aa852e09c5c0060d90c9241ed298b2eafd5d529677473587f93a0085bcbfb15" [label="/bin/sh -c apt-get update -qq &&     DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -qqy         wget         curl         g++         make         mercurial         git         rsync         patch         python         python-pip         apt-transport-https         &&     apt-get clean" shape="box"];
  "sha256:ee37c5ee192bdd8b6707d117baa8a134fbc5f720346665878609e23db89e4260" [label="/bin/sh -c apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D &&     mkdir -p /etc/apt/sources.list.d &&     echo deb https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list &&     apt-get update -qq &&     DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -qqy         docker-engine=1.8.1-0~trusty         &&     apt-get clean" shape="box"];
  "sha256:128c942a5f49c72dfd9a69cfa6ee32dcf38cd1d012ef3dffdd70ff7950780641" [label="/bin/sh -c pip install -U docker-compose==1.5.0" shape="box"];
  "sha256:a41eced51fc916a0c62d30df062e40d8c18bb191a6ed45c8285df0fdb1d4311e" [label="/bin/sh -c go get github.com/tools/godep" shape="box"];
  "sha256:ee128691536b35195c6b416d0ad21f80d43a330da35cd427ddf3a5ab0c5e3fb8" [label="/bin/sh -c mkdir -p /go/src/github.com/GoogleCloudPlatform/kubernetes" shape="box"];
  "sha256:3ad72ffc710df16f1ee641ffaeb625839e2ef089621ff66da6bedd3133e1f50f" [label="mkdir{path=/go/src/github.com/GoogleCloudPlatform/kubernetes}" shape="note"];
  "sha256:275df92652311a48353db8a9915684496900eb065b681caf618a630fff32a3cf" [label="local://context" shape="ellipse"];
  "sha256:a9b9e08f4449725b7ffa17b9fc543988ff6fc117b33ea6afca01738b35314110" [label="copy{src=/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:65eeaad266064dd9bed4dd9ead0c5c43343d9e614f7b1dd72006ede42940fbcb" [label="/bin/sh -c install-etcd.sh" shape="box"];
  "sha256:21242be8be8f6ee54d3c494ea8915d34e2cb36b22e801bfa1fd4f9d20c88c686" [label="sha256:21242be8be8f6ee54d3c494ea8915d34e2cb36b22e801bfa1fd4f9d20c88c686" shape="plaintext"];
  "sha256:23d0b4370c541ebc19f40748193dc58ed3d61173eae0d48e8f22da53c9590c70" -> "sha256:9aa852e09c5c0060d90c9241ed298b2eafd5d529677473587f93a0085bcbfb15" [label=""];
  "sha256:9aa852e09c5c0060d90c9241ed298b2eafd5d529677473587f93a0085bcbfb15" -> "sha256:ee37c5ee192bdd8b6707d117baa8a134fbc5f720346665878609e23db89e4260" [label=""];
  "sha256:ee37c5ee192bdd8b6707d117baa8a134fbc5f720346665878609e23db89e4260" -> "sha256:128c942a5f49c72dfd9a69cfa6ee32dcf38cd1d012ef3dffdd70ff7950780641" [label=""];
  "sha256:128c942a5f49c72dfd9a69cfa6ee32dcf38cd1d012ef3dffdd70ff7950780641" -> "sha256:a41eced51fc916a0c62d30df062e40d8c18bb191a6ed45c8285df0fdb1d4311e" [label=""];
  "sha256:a41eced51fc916a0c62d30df062e40d8c18bb191a6ed45c8285df0fdb1d4311e" -> "sha256:ee128691536b35195c6b416d0ad21f80d43a330da35cd427ddf3a5ab0c5e3fb8" [label=""];
  "sha256:ee128691536b35195c6b416d0ad21f80d43a330da35cd427ddf3a5ab0c5e3fb8" -> "sha256:3ad72ffc710df16f1ee641ffaeb625839e2ef089621ff66da6bedd3133e1f50f" [label=""];
  "sha256:3ad72ffc710df16f1ee641ffaeb625839e2ef089621ff66da6bedd3133e1f50f" -> "sha256:a9b9e08f4449725b7ffa17b9fc543988ff6fc117b33ea6afca01738b35314110" [label=""];
  "sha256:275df92652311a48353db8a9915684496900eb065b681caf618a630fff32a3cf" -> "sha256:a9b9e08f4449725b7ffa17b9fc543988ff6fc117b33ea6afca01738b35314110" [label=""];
  "sha256:a9b9e08f4449725b7ffa17b9fc543988ff6fc117b33ea6afca01738b35314110" -> "sha256:65eeaad266064dd9bed4dd9ead0c5c43343d9e614f7b1dd72006ede42940fbcb" [label=""];
  "sha256:65eeaad266064dd9bed4dd9ead0c5c43343d9e614f7b1dd72006ede42940fbcb" -> "sha256:21242be8be8f6ee54d3c494ea8915d34e2cb36b22e801bfa1fd4f9d20c88c686" [label=""];
}

