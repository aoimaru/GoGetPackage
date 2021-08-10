[app/sources/172523169.Dockerfile]
digraph {
  "sha256:ec83a6cfc75ff0c147b0cc9af56912ae8d0c5cd60f8cd0a9bd1ffb27dd39e4e8" [label="docker-image://docker.io/library/debian:7.3" shape="ellipse"];
  "sha256:4ef49d1439dad98a7598c01bdb7e23e437d07a5b47e4df073bf85c6635fa7b5a" [label="/bin/sh -c apt-get update &&     apt-get install -y --force-yes       curl       apt-transport-https       lsb-release       build-essential       python-all" shape="box"];
  "sha256:8742ea2381ec602967dd52e165b6bc3f0e8a5917f2c391f446d0176e24ff1cd1" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup | bash -" shape="box"];
  "sha256:0d6f120243ac697b37371e7a2ba3aa6454c15bcd2458d2dd52e1acb5d55190a0" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:4b61ad9772cd200c88929cf9adc3ef9e83cbcc6c2601c55a562f206661d49fc0" [label="/bin/sh -c apt-get install nodejs -y --force-yes" shape="box"];
  "sha256:80a8f9efa55b21888133b833e5e2b58bb42a639647b142ab5a30669d13628008" [label="local://context" shape="ellipse"];
  "sha256:bf99242b4436e030b30391560dc94c4492b5e26623ddc1055083e2f0244fcaec" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:6b55255eca5b234ba5a60970ae7cf9472cca35c02d7f31d944a384945011f5c6" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:b0b25b07e9930abe486454a8cdd93f13c322e39bf4f29a1d83ef1ba7f39d4ced" [label="sha256:b0b25b07e9930abe486454a8cdd93f13c322e39bf4f29a1d83ef1ba7f39d4ced" shape="plaintext"];
  "sha256:ec83a6cfc75ff0c147b0cc9af56912ae8d0c5cd60f8cd0a9bd1ffb27dd39e4e8" -> "sha256:4ef49d1439dad98a7598c01bdb7e23e437d07a5b47e4df073bf85c6635fa7b5a" [label=""];
  "sha256:4ef49d1439dad98a7598c01bdb7e23e437d07a5b47e4df073bf85c6635fa7b5a" -> "sha256:8742ea2381ec602967dd52e165b6bc3f0e8a5917f2c391f446d0176e24ff1cd1" [label=""];
  "sha256:8742ea2381ec602967dd52e165b6bc3f0e8a5917f2c391f446d0176e24ff1cd1" -> "sha256:0d6f120243ac697b37371e7a2ba3aa6454c15bcd2458d2dd52e1acb5d55190a0" [label=""];
  "sha256:0d6f120243ac697b37371e7a2ba3aa6454c15bcd2458d2dd52e1acb5d55190a0" -> "sha256:4b61ad9772cd200c88929cf9adc3ef9e83cbcc6c2601c55a562f206661d49fc0" [label=""];
  "sha256:4b61ad9772cd200c88929cf9adc3ef9e83cbcc6c2601c55a562f206661d49fc0" -> "sha256:bf99242b4436e030b30391560dc94c4492b5e26623ddc1055083e2f0244fcaec" [label=""];
  "sha256:80a8f9efa55b21888133b833e5e2b58bb42a639647b142ab5a30669d13628008" -> "sha256:bf99242b4436e030b30391560dc94c4492b5e26623ddc1055083e2f0244fcaec" [label=""];
  "sha256:bf99242b4436e030b30391560dc94c4492b5e26623ddc1055083e2f0244fcaec" -> "sha256:6b55255eca5b234ba5a60970ae7cf9472cca35c02d7f31d944a384945011f5c6" [label=""];
  "sha256:6b55255eca5b234ba5a60970ae7cf9472cca35c02d7f31d944a384945011f5c6" -> "sha256:b0b25b07e9930abe486454a8cdd93f13c322e39bf4f29a1d83ef1ba7f39d4ced" [label=""];
}

