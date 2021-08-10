[app/sources/276441345.Dockerfile]
digraph {
  "sha256:d9cd386d8f55dd8a8b83a4f9b6177b3cc6cffaf62bb25465c5bb9c5782c639f6" [label="docker-image://docker.io/cfssl/cfssl:latest" shape="ellipse"];
  "sha256:0f5c9b065247609dad8dd60d4fe69e923c91e04a3b319d6e3950463532c2ae3c" [label="/bin/sh -c curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.14.0/bin/linux/amd64/kubectl" shape="box"];
  "sha256:a653491988ec3821ab3c4db7dd97dd78001bbaa57a406872dc3efe249dc545f8" [label="/bin/sh -c chmod +x ./kubectl" shape="box"];
  "sha256:3a35f1a1950cb648264454a0f852a2453e9a383eaff7b922c7a4dd243191d46e" [label="/bin/sh -c mv ./kubectl /usr/local/bin/kubectl" shape="box"];
  "sha256:2418e98dfcb9b2eacd3447df80febc000f6cdcfce0e8b5410231dc38fb369263" [label="/bin/sh -c apt update" shape="box"];
  "sha256:6e5c4ce89b6c268598abe9aec74b8a80fffbe63ed5d28c43ddbf5fbd1726984b" [label="/bin/sh -c apt install -y dnsutils jq" shape="box"];
  "sha256:4da4164c2c77ac894cd971b7ae0083ed91eaafa2a70f540b82fcbed1db34fdb3" [label="local://context" shape="ellipse"];
  "sha256:cd2b27d7279edb4e80c2d9c3bbdf25bff8ee953562751ba0035f97ba78052dce" [label="copy{src=/init.sh, dest=/}" shape="note"];
  "sha256:8d800958652d505545a992af094541ba682feda4fdd78f0ebdca7e803417a806" [label="sha256:8d800958652d505545a992af094541ba682feda4fdd78f0ebdca7e803417a806" shape="plaintext"];
  "sha256:d9cd386d8f55dd8a8b83a4f9b6177b3cc6cffaf62bb25465c5bb9c5782c639f6" -> "sha256:0f5c9b065247609dad8dd60d4fe69e923c91e04a3b319d6e3950463532c2ae3c" [label=""];
  "sha256:0f5c9b065247609dad8dd60d4fe69e923c91e04a3b319d6e3950463532c2ae3c" -> "sha256:a653491988ec3821ab3c4db7dd97dd78001bbaa57a406872dc3efe249dc545f8" [label=""];
  "sha256:a653491988ec3821ab3c4db7dd97dd78001bbaa57a406872dc3efe249dc545f8" -> "sha256:3a35f1a1950cb648264454a0f852a2453e9a383eaff7b922c7a4dd243191d46e" [label=""];
  "sha256:3a35f1a1950cb648264454a0f852a2453e9a383eaff7b922c7a4dd243191d46e" -> "sha256:2418e98dfcb9b2eacd3447df80febc000f6cdcfce0e8b5410231dc38fb369263" [label=""];
  "sha256:2418e98dfcb9b2eacd3447df80febc000f6cdcfce0e8b5410231dc38fb369263" -> "sha256:6e5c4ce89b6c268598abe9aec74b8a80fffbe63ed5d28c43ddbf5fbd1726984b" [label=""];
  "sha256:6e5c4ce89b6c268598abe9aec74b8a80fffbe63ed5d28c43ddbf5fbd1726984b" -> "sha256:cd2b27d7279edb4e80c2d9c3bbdf25bff8ee953562751ba0035f97ba78052dce" [label=""];
  "sha256:4da4164c2c77ac894cd971b7ae0083ed91eaafa2a70f540b82fcbed1db34fdb3" -> "sha256:cd2b27d7279edb4e80c2d9c3bbdf25bff8ee953562751ba0035f97ba78052dce" [label=""];
  "sha256:cd2b27d7279edb4e80c2d9c3bbdf25bff8ee953562751ba0035f97ba78052dce" -> "sha256:8d800958652d505545a992af094541ba682feda4fdd78f0ebdca7e803417a806" [label=""];
}

