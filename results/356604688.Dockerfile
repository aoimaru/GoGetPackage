[app/sources/356604688.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:9aafd866d27bc3efec8bf0d9a420cf828bac237be73db9dcae58f801ca860039" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:bbde3106a62046fe1e55f99e5a144a1129c79151005211febb315a34b186a9d7" [label="mkdir{path=/code}" shape="note"];
  "sha256:7b1d34cf7eceebb240527067f73edffdfce3990af4e6b5e30fd5de25d425080f" [label="local://context" shape="ellipse"];
  "sha256:253b9e72f132890f2d6375e099d58cfe21ffc59f666e6b27482ae0ecce7215a3" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:0f631c954cdce00ecbf3b6bd287795e04e13e0398d4975d9cc45d59a19ae3dd6" [label="/bin/sh -c pip install -r /tmp/requirements.txt && rm /tmp/requirements.txt" shape="box"];
  "sha256:0f0a195c5578e20d3d879b3ac2e37322aa7ef2596db6a477f3e86720ddaabe48" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y  nodejs binutils libproj-dev gdal-bin libgeoip1 libgeos-c1v5 && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e48707fe750c9751e3a97c481682ef730f7bc99850138c8bb033edff31ce7ef1" [label="/bin/sh -c mkdir /npm" shape="box"];
  "sha256:17af69fedbe8ada5e3b6fc78e3ea33a7273015a0eb1017805c5f61c5fdd54fed" [label="copy{src=/openprescribing/media/js, dest=/npm/}" shape="note"];
  "sha256:d1d567c079a75c26de9466f4a96b216b729b74bebc8eb27a571bcdd7bd7ae54c" [label="/bin/sh -c ls -l /npm/" shape="box"];
  "sha256:71fa73bb3c7d866d6b370ec9af2595a10274e867e030dcbde620f1f295e71c44" [label="/bin/sh -c cd /npm && npm install -g browserify && npm install -g jshint && npm install" shape="box"];
  "sha256:ab3e7ecee53fc63edec7eca491a91d4c19ca3b96449f13e0fc0e783277d5874a" [label="/bin/sh -c curl -sL https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 > /tmp/phantomjs.tar.bz && tar -jxf /tmp/phantomjs.tar.bz -C /usr/local && ln -s /usr/local/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin && rm /tmp/phantomjs.tar.bz" shape="box"];
  "sha256:2d49689f6fb4b33a6924c6221d5f07ed25b08a4bafea8b5020d21c845621a5f1" [label="sha256:2d49689f6fb4b33a6924c6221d5f07ed25b08a4bafea8b5020d21c845621a5f1" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:9aafd866d27bc3efec8bf0d9a420cf828bac237be73db9dcae58f801ca860039" [label=""];
  "sha256:9aafd866d27bc3efec8bf0d9a420cf828bac237be73db9dcae58f801ca860039" -> "sha256:bbde3106a62046fe1e55f99e5a144a1129c79151005211febb315a34b186a9d7" [label=""];
  "sha256:bbde3106a62046fe1e55f99e5a144a1129c79151005211febb315a34b186a9d7" -> "sha256:253b9e72f132890f2d6375e099d58cfe21ffc59f666e6b27482ae0ecce7215a3" [label=""];
  "sha256:7b1d34cf7eceebb240527067f73edffdfce3990af4e6b5e30fd5de25d425080f" -> "sha256:253b9e72f132890f2d6375e099d58cfe21ffc59f666e6b27482ae0ecce7215a3" [label=""];
  "sha256:253b9e72f132890f2d6375e099d58cfe21ffc59f666e6b27482ae0ecce7215a3" -> "sha256:0f631c954cdce00ecbf3b6bd287795e04e13e0398d4975d9cc45d59a19ae3dd6" [label=""];
  "sha256:0f631c954cdce00ecbf3b6bd287795e04e13e0398d4975d9cc45d59a19ae3dd6" -> "sha256:0f0a195c5578e20d3d879b3ac2e37322aa7ef2596db6a477f3e86720ddaabe48" [label=""];
  "sha256:0f0a195c5578e20d3d879b3ac2e37322aa7ef2596db6a477f3e86720ddaabe48" -> "sha256:e48707fe750c9751e3a97c481682ef730f7bc99850138c8bb033edff31ce7ef1" [label=""];
  "sha256:e48707fe750c9751e3a97c481682ef730f7bc99850138c8bb033edff31ce7ef1" -> "sha256:17af69fedbe8ada5e3b6fc78e3ea33a7273015a0eb1017805c5f61c5fdd54fed" [label=""];
  "sha256:7b1d34cf7eceebb240527067f73edffdfce3990af4e6b5e30fd5de25d425080f" -> "sha256:17af69fedbe8ada5e3b6fc78e3ea33a7273015a0eb1017805c5f61c5fdd54fed" [label=""];
  "sha256:17af69fedbe8ada5e3b6fc78e3ea33a7273015a0eb1017805c5f61c5fdd54fed" -> "sha256:d1d567c079a75c26de9466f4a96b216b729b74bebc8eb27a571bcdd7bd7ae54c" [label=""];
  "sha256:d1d567c079a75c26de9466f4a96b216b729b74bebc8eb27a571bcdd7bd7ae54c" -> "sha256:71fa73bb3c7d866d6b370ec9af2595a10274e867e030dcbde620f1f295e71c44" [label=""];
  "sha256:71fa73bb3c7d866d6b370ec9af2595a10274e867e030dcbde620f1f295e71c44" -> "sha256:ab3e7ecee53fc63edec7eca491a91d4c19ca3b96449f13e0fc0e783277d5874a" [label=""];
  "sha256:ab3e7ecee53fc63edec7eca491a91d4c19ca3b96449f13e0fc0e783277d5874a" -> "sha256:2d49689f6fb4b33a6924c6221d5f07ed25b08a4bafea8b5020d21c845621a5f1" [label=""];
}

