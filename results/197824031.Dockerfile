[app/sources/197824031.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:7c9b54b4d0d47a0680a36a2dc7b016c8c1c2d641cd0b4f8bcfa8e958fb81307a" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     cmake     curl     git     libcurl3-dev     libleptonica-dev     liblog4cplus-dev     libopencv-dev     libtesseract-dev     wget" shape="box"];
  "sha256:2f6c805a3b94bcf8c8a6d36aa494ab013946f3a196cdc23ba556911b198b6c90" [label="local://context" shape="ellipse"];
  "sha256:85d8382cb46620e010f8f660fcf1597a06fcd91820c5501fd954dbbff26e0f4a" [label="copy{src=/, dest=/srv/openalpr}" shape="note"];
  "sha256:2c8cb8465788b2fbdff8b247d8330e509d199f5b73a9a4d946e37f93637cdb93" [label="/bin/sh -c mkdir /srv/openalpr/src/build" shape="box"];
  "sha256:8470cabebc512d31c1cc22d3c9260c41e1864d84a9cf5c4a5bae0dab0d1d2516" [label="mkdir{path=/srv/openalpr/src/build}" shape="note"];
  "sha256:edfbc3dc54c76cfc2116df6b9815b8c8775fd5df263c5dd9654eafa6a3e1f148" [label="/bin/sh -c cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_INSTALL_SYSCONFDIR:PATH=/etc .. &&     make -j2 &&     make install" shape="box"];
  "sha256:0e416680d0c4466a5debfdc1391ae612e0a87ee0bcf7d3c0e267fda90c668c6b" [label="mkdir{path=/data}" shape="note"];
  "sha256:9888a000dd9250082a39f4366157bd4fc0cd2963eecffed5c142e1cadd45f21c" [label="sha256:9888a000dd9250082a39f4366157bd4fc0cd2963eecffed5c142e1cadd45f21c" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7c9b54b4d0d47a0680a36a2dc7b016c8c1c2d641cd0b4f8bcfa8e958fb81307a" [label=""];
  "sha256:7c9b54b4d0d47a0680a36a2dc7b016c8c1c2d641cd0b4f8bcfa8e958fb81307a" -> "sha256:85d8382cb46620e010f8f660fcf1597a06fcd91820c5501fd954dbbff26e0f4a" [label=""];
  "sha256:2f6c805a3b94bcf8c8a6d36aa494ab013946f3a196cdc23ba556911b198b6c90" -> "sha256:85d8382cb46620e010f8f660fcf1597a06fcd91820c5501fd954dbbff26e0f4a" [label=""];
  "sha256:85d8382cb46620e010f8f660fcf1597a06fcd91820c5501fd954dbbff26e0f4a" -> "sha256:2c8cb8465788b2fbdff8b247d8330e509d199f5b73a9a4d946e37f93637cdb93" [label=""];
  "sha256:2c8cb8465788b2fbdff8b247d8330e509d199f5b73a9a4d946e37f93637cdb93" -> "sha256:8470cabebc512d31c1cc22d3c9260c41e1864d84a9cf5c4a5bae0dab0d1d2516" [label=""];
  "sha256:8470cabebc512d31c1cc22d3c9260c41e1864d84a9cf5c4a5bae0dab0d1d2516" -> "sha256:edfbc3dc54c76cfc2116df6b9815b8c8775fd5df263c5dd9654eafa6a3e1f148" [label=""];
  "sha256:edfbc3dc54c76cfc2116df6b9815b8c8775fd5df263c5dd9654eafa6a3e1f148" -> "sha256:0e416680d0c4466a5debfdc1391ae612e0a87ee0bcf7d3c0e267fda90c668c6b" [label=""];
  "sha256:0e416680d0c4466a5debfdc1391ae612e0a87ee0bcf7d3c0e267fda90c668c6b" -> "sha256:9888a000dd9250082a39f4366157bd4fc0cd2963eecffed5c142e1cadd45f21c" [label=""];
}

