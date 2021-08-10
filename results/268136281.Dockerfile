[app/sources/268136281.Dockerfile]
digraph {
  "sha256:03cfa7058c871531e80e3edeed6d8dcc1e6e0a4a0fdbec5ec4e05b8eb86b687e" [label="local://context" shape="ellipse"];
  "sha256:45c81d97fc746e5366ae571d9ffbc4fb05be09c83237937331fc16c0dbf82e68" [label="docker-image://docker.io/tokatsu/quagga:0.1" shape="ellipse"];
  "sha256:1925c0c18377f3ae819227e0f19a461e850c598f08bbea19ceeaf7ecc6d2e076" [label="mkdir{path=/root}" shape="note"];
  "sha256:6be225103240fbb5a156cb1ccf462c21b07bb3a70a746edb96634d90c1f66245" [label="/bin/sh -c apt-get update &&     apt-get upgrade -y &&     apt-get install -y git gcc wget &&     wget https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz &&     tar xf go1.8.linux-amd64.tar.gz  -C /usr/local/ && rm go1.8.linux-amd64.tar.gz &&     ln -s /usr/local/go/bin/go /usr/local/bin/go&&      go get github.com/osrg/gobgp/..." shape="box"];
  "sha256:e0872927627f3a2874c59c1b7bb7f0a81cb4901eb5e539da661a53a7ed6c2a06" [label="copy{src=/start.sh, dest=/root}" shape="note"];
  "sha256:ba709dba0c1cbaf8baee4311b58bb995fc002bab328e40901133a8928293482a" [label="copy{src=/gobgpd.conf, dest=/root}" shape="note"];
  "sha256:768783614a23b7e380a2a52be36e325771de1168f9ee42836be8edf6099f6a38" [label="sha256:768783614a23b7e380a2a52be36e325771de1168f9ee42836be8edf6099f6a38" shape="plaintext"];
  "sha256:45c81d97fc746e5366ae571d9ffbc4fb05be09c83237937331fc16c0dbf82e68" -> "sha256:1925c0c18377f3ae819227e0f19a461e850c598f08bbea19ceeaf7ecc6d2e076" [label=""];
  "sha256:1925c0c18377f3ae819227e0f19a461e850c598f08bbea19ceeaf7ecc6d2e076" -> "sha256:6be225103240fbb5a156cb1ccf462c21b07bb3a70a746edb96634d90c1f66245" [label=""];
  "sha256:6be225103240fbb5a156cb1ccf462c21b07bb3a70a746edb96634d90c1f66245" -> "sha256:e0872927627f3a2874c59c1b7bb7f0a81cb4901eb5e539da661a53a7ed6c2a06" [label=""];
  "sha256:03cfa7058c871531e80e3edeed6d8dcc1e6e0a4a0fdbec5ec4e05b8eb86b687e" -> "sha256:e0872927627f3a2874c59c1b7bb7f0a81cb4901eb5e539da661a53a7ed6c2a06" [label=""];
  "sha256:e0872927627f3a2874c59c1b7bb7f0a81cb4901eb5e539da661a53a7ed6c2a06" -> "sha256:ba709dba0c1cbaf8baee4311b58bb995fc002bab328e40901133a8928293482a" [label=""];
  "sha256:03cfa7058c871531e80e3edeed6d8dcc1e6e0a4a0fdbec5ec4e05b8eb86b687e" -> "sha256:ba709dba0c1cbaf8baee4311b58bb995fc002bab328e40901133a8928293482a" [label=""];
  "sha256:ba709dba0c1cbaf8baee4311b58bb995fc002bab328e40901133a8928293482a" -> "sha256:768783614a23b7e380a2a52be36e325771de1168f9ee42836be8edf6099f6a38" [label=""];
}

