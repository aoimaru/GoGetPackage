[app/sources/247465334.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:97a86348b310f9ddb1fda22354e5a0a1cf93b6582d208efb982c58979387a1f8" [label="/bin/sh -c apt-get install -y     autoconf     automake     curl     g++     git     libtool     make     python     unzip     wget     zlib1g-dev" shape="box"];
  "sha256:9e8e4d6766d5402d143ea8abcf28747121203cad0712690f9f455e101ec5f9b7" [label="sha256:9e8e4d6766d5402d143ea8abcf28747121203cad0712690f9f455e101ec5f9b7" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label=""];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" -> "sha256:97a86348b310f9ddb1fda22354e5a0a1cf93b6582d208efb982c58979387a1f8" [label=""];
  "sha256:97a86348b310f9ddb1fda22354e5a0a1cf93b6582d208efb982c58979387a1f8" -> "sha256:9e8e4d6766d5402d143ea8abcf28747121203cad0712690f9f455e101ec5f9b7" [label=""];
}

