[app/sources/469679023.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d583bb04b2bfed2ba44200c423c8b5de3aa10f68b6e9fc50b699b3a3ffb3e6c4" [label="/bin/sh -c apt-get update         && apt-get install -y software-properties-common --no-install-recommends         && add-apt-repository -y ppa:jonathonf/python-3.6         && apt update         && apt install -y python3.6         && ln -s /usr/bin/python3.6 /usr/bin/python         && rm /usr/bin/python3         && ln -s /usr/bin/python3.6 /usr/bin/python3" shape="box"];
  "sha256:d5fc96ddf6b785b895a99debc90573404c232b7c4354ef9c62fd4d189a4b72de" [label="/bin/sh -c apt-get install -y gcc g++ python3.6-dev python3-setuptools python3-pip --no-install-recommends     && ln -s /usr/bin/pip3 /usr/bin/pip     && python -m pip install --upgrade pip         && pip install --install-option=\"--prefix=/install\" pyyaml protobuf grpcio" shape="box"];
  "sha256:92b6fb256d55c434b58b20d6e920998d2b296a041f03279a0ec93962ce68b06b" [label="copy{src=/install/lib/python3.6/site-packages, dest=/usr/local/lib/python3.6/dist-packages/}" shape="note"];
  "sha256:6a6011dd3f8c54fb2956fc50cecafff4d279450a50f7bacc07e0185c6ad04502" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f6c442d25c3f0c03ffc70c5db3b34c92b90b07143ee9a1ccd11d8c2576d240ad" [label="sha256:f6c442d25c3f0c03ffc70c5db3b34c92b90b07143ee9a1ccd11d8c2576d240ad" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d583bb04b2bfed2ba44200c423c8b5de3aa10f68b6e9fc50b699b3a3ffb3e6c4" [label=""];
  "sha256:d583bb04b2bfed2ba44200c423c8b5de3aa10f68b6e9fc50b699b3a3ffb3e6c4" -> "sha256:d5fc96ddf6b785b895a99debc90573404c232b7c4354ef9c62fd4d189a4b72de" [label=""];
  "sha256:d583bb04b2bfed2ba44200c423c8b5de3aa10f68b6e9fc50b699b3a3ffb3e6c4" -> "sha256:92b6fb256d55c434b58b20d6e920998d2b296a041f03279a0ec93962ce68b06b" [label=""];
  "sha256:d5fc96ddf6b785b895a99debc90573404c232b7c4354ef9c62fd4d189a4b72de" -> "sha256:92b6fb256d55c434b58b20d6e920998d2b296a041f03279a0ec93962ce68b06b" [label=""];
  "sha256:92b6fb256d55c434b58b20d6e920998d2b296a041f03279a0ec93962ce68b06b" -> "sha256:6a6011dd3f8c54fb2956fc50cecafff4d279450a50f7bacc07e0185c6ad04502" [label=""];
  "sha256:6a6011dd3f8c54fb2956fc50cecafff4d279450a50f7bacc07e0185c6ad04502" -> "sha256:f6c442d25c3f0c03ffc70c5db3b34c92b90b07143ee9a1ccd11d8c2576d240ad" [label=""];
}

