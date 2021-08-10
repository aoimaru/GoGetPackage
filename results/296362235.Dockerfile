[app/sources/296362235.Dockerfile]
[33mWARN[0m[0002] reference for unknown type: application/octet-stream  [33mdigest[0m="sha256:9b9cb95443b5f846cd3c8cfa3f64e63b6ba68de2618a08875a119c81a8f96698" [33mmediatype[0m=application/octet-stream [33msize[0m=3392
digraph {
  "sha256:f42adffb46b864171b8cc659c140638a35e604265374726c0c78a3e5c4e5bc3c" [label="docker-image://docker.io/library/ubuntu:wily" shape="ellipse"];
  "sha256:cdd83f33d9c39da80cc3e99deb2c3e00951184f1b298b38cf1c19b71b999e9bf" [label="/bin/sh -c apt-get update &&     apt-get upgrade -q -y &&     apt-get dist-upgrade -q -y &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 923F6CA9 &&     echo \"deb http://ppa.launchpad.net/ethereum/ethereum/ubuntu wily main\" | tee -a /etc/apt/sources.list.d/ethereum.list &&     apt-get update &&     apt-get install -q -y geth" shape="box"];
  "sha256:564df3d1d19fe9f04322785f8db667538fdc11a42f7d8554c870ef29509c4ced" [label="sha256:564df3d1d19fe9f04322785f8db667538fdc11a42f7d8554c870ef29509c4ced" shape="plaintext"];
  "sha256:f42adffb46b864171b8cc659c140638a35e604265374726c0c78a3e5c4e5bc3c" -> "sha256:cdd83f33d9c39da80cc3e99deb2c3e00951184f1b298b38cf1c19b71b999e9bf" [label=""];
  "sha256:cdd83f33d9c39da80cc3e99deb2c3e00951184f1b298b38cf1c19b71b999e9bf" -> "sha256:564df3d1d19fe9f04322785f8db667538fdc11a42f7d8554c870ef29509c4ced" [label=""];
}

