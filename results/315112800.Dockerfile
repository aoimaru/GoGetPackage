[app/sources/315112800.Dockerfile]
digraph {
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" [label="docker-image://docker.io/library/node:0.10" shape="ellipse"];
  "sha256:ce0057469651ca7bfab86f2cffca6d6282e7a17fbc9dfbc84f4bced20e1c5b70" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:bfe30759d647b646361f60ce58dea9e53a61b6915491051c0b2eb85e8ce42262" [label="mkdir{path=/app}" shape="note"];
  "sha256:c658ae30d13ba3051b48514c137f55bf1bbdd38e055a497bd7034655fb1a70d7" [label="local://context" shape="ellipse"];
  "sha256:7f15d5f675fa6365b83614cb839d9b60ca38695c1cdf22bf8053cd2502aed6f0" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:52090a6c0dd09e694c9cc01db4907a76d746ad076eb841b47bca7525f48dd830" [label="/bin/sh -c npm install && npm ls" shape="box"];
  "sha256:f66773d2737049efe7b0291a94b6ba6d106b118b403fb287f1607bd04e877369" [label="/bin/sh -c mv /app/node_modules /node_modules" shape="box"];
  "sha256:18f09f2239cf7a89a3c1fac54d0b5a66d6eda834fb9fd61a7b5bfd0852f5d63f" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:f2ea9e5b78acc43f1ba848124db0e5d655b51017b5829fe751f0443d2feeba06" [label="sha256:f2ea9e5b78acc43f1ba848124db0e5d655b51017b5829fe751f0443d2feeba06" shape="plaintext"];
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" -> "sha256:ce0057469651ca7bfab86f2cffca6d6282e7a17fbc9dfbc84f4bced20e1c5b70" [label=""];
  "sha256:ce0057469651ca7bfab86f2cffca6d6282e7a17fbc9dfbc84f4bced20e1c5b70" -> "sha256:bfe30759d647b646361f60ce58dea9e53a61b6915491051c0b2eb85e8ce42262" [label=""];
  "sha256:bfe30759d647b646361f60ce58dea9e53a61b6915491051c0b2eb85e8ce42262" -> "sha256:7f15d5f675fa6365b83614cb839d9b60ca38695c1cdf22bf8053cd2502aed6f0" [label=""];
  "sha256:c658ae30d13ba3051b48514c137f55bf1bbdd38e055a497bd7034655fb1a70d7" -> "sha256:7f15d5f675fa6365b83614cb839d9b60ca38695c1cdf22bf8053cd2502aed6f0" [label=""];
  "sha256:7f15d5f675fa6365b83614cb839d9b60ca38695c1cdf22bf8053cd2502aed6f0" -> "sha256:52090a6c0dd09e694c9cc01db4907a76d746ad076eb841b47bca7525f48dd830" [label=""];
  "sha256:52090a6c0dd09e694c9cc01db4907a76d746ad076eb841b47bca7525f48dd830" -> "sha256:f66773d2737049efe7b0291a94b6ba6d106b118b403fb287f1607bd04e877369" [label=""];
  "sha256:f66773d2737049efe7b0291a94b6ba6d106b118b403fb287f1607bd04e877369" -> "sha256:18f09f2239cf7a89a3c1fac54d0b5a66d6eda834fb9fd61a7b5bfd0852f5d63f" [label=""];
  "sha256:c658ae30d13ba3051b48514c137f55bf1bbdd38e055a497bd7034655fb1a70d7" -> "sha256:18f09f2239cf7a89a3c1fac54d0b5a66d6eda834fb9fd61a7b5bfd0852f5d63f" [label=""];
  "sha256:18f09f2239cf7a89a3c1fac54d0b5a66d6eda834fb9fd61a7b5bfd0852f5d63f" -> "sha256:f2ea9e5b78acc43f1ba848124db0e5d655b51017b5829fe751f0443d2feeba06" [label=""];
}

