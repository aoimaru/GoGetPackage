[app/sources/237421859.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:7dcc320813044d49f49cfac27c6cc9e33ab2ffdd3c3059e6639321b94b951e13" [label="/bin/sh -c apt-get update &&     apt-get install -y       build-essential       curl       git       libncurses5-dev       libpcre2-dev       libssl-dev       wget       zlib1g-dev &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c68e20aedc40f20787f88c10142a6efbd383ac5ac6d23828501f25139ccf585a" [label="sha256:c68e20aedc40f20787f88c10142a6efbd383ac5ac6d23828501f25139ccf585a" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:7dcc320813044d49f49cfac27c6cc9e33ab2ffdd3c3059e6639321b94b951e13" [label=""];
  "sha256:7dcc320813044d49f49cfac27c6cc9e33ab2ffdd3c3059e6639321b94b951e13" -> "sha256:c68e20aedc40f20787f88c10142a6efbd383ac5ac6d23828501f25139ccf585a" [label=""];
}

