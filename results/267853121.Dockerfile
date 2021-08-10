[app/sources/267853121.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:acc3a0677ecad299d46f5bfc1d1604e1abc9e15e3be0814095251cf370ab1b4e" [label="/bin/sh -c apt-get update &&     apt-get install -y     build-essential     libbz2-dev     libfftw3-dev     libfishsound1-dev     libid3tag0-dev     liblo-dev     liblrdf0-dev     libmad0-dev     liboggz2-dev     libpulse-dev     libsamplerate-dev     libsndfile-dev     libsord-dev     libxml2-utils     portaudio19-dev     qt5-default libqt5svg5-dev     raptor-utils     librubberband-dev     git     mercurial     curl wget     autoconf automake libtool lintian" shape="box"];
  "sha256:766300b3d814ac7c52bb367952c9ef45aedb13aea125701daa5a3453d513c77a" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:dcd48a250ba73d8eaafa8aea71d25a2ebe053a69e879d3f0547826adbf27e0d9" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:c05094150aa2fc39e670d973348029beede34b4e53de803b57ab91dd13bd3c0f" [label="/bin/sh -c git clone https://github.com/sandstorm-io/capnproto" shape="box"];
  "sha256:0f52b0ed45ac8be7c8f1e65f1c9cb56f945d7d3eb7cbecffc7e70ed23ec3b1bb" [label="mkdir{path=/capnproto/c++}" shape="note"];
  "sha256:d48d1d3db44960844682507f872dcf80b5af22baa4b3328f9a15fbb86ac1a991" [label="/bin/sh -c ./setup-autotools.sh && autoreconf -i" shape="box"];
  "sha256:a4ac7fc727abc3a891087d9f54f28f20ab6449c08d05995a34f1d96198c2dfd4" [label="/bin/sh -c ./configure --enable-static --disable-shared" shape="box"];
  "sha256:4f627a319737bc07a005e83c29560f5f5eedd84356134e46ccc2f409af8c1c56" [label="/bin/sh -c make && make install" shape="box"];
  "sha256:18ad376bed332d6a9d4e2c00f7b4aa333d64a1c7a47eabec646a761782c1b716" [label="/bin/sh -c hg clone -rsv_v3.0.2 https://code.soundsoftware.ac.uk/hg/sonic-visualiser" shape="box"];
  "sha256:f362d35aeacd43883168583dcd7a47b9c95326da581d35ac461dd3259fb540ee" [label="mkdir{path=/sonic-visualiser}" shape="note"];
  "sha256:88b0f1a7084d839ee4f31601b8d29f54c0ac7dbdb0453e1d6e96c807ab6b980a" [label="/bin/sh -c ./configure" shape="box"];
  "sha256:ad1cff1a6f01eedd21ba824b61f5c55b744e580dad64c4104db6f7f3702c096d" [label="/bin/sh -c make -j3" shape="box"];
  "sha256:a462b0ab49d966b40291e5bcaa931a06bbbf311d89f9fcebc7e4be52d899bb29" [label="/bin/sh -c deploy/linux/deploy-deb.sh 3.0.2 amd64" shape="box"];
  "sha256:148f07bc85d59009a2d69b05ec13a3e2210db25647f716cb08464ea5c97e0eb7" [label="/bin/sh -c tar cvf output.tar *.deb && cp output.tar .." shape="box"];
  "sha256:846585227bdbcec06c699ac645ed7e74b4e3083eb0696c911999c0c3db0d57ba" [label="sha256:846585227bdbcec06c699ac645ed7e74b4e3083eb0696c911999c0c3db0d57ba" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:acc3a0677ecad299d46f5bfc1d1604e1abc9e15e3be0814095251cf370ab1b4e" [label=""];
  "sha256:acc3a0677ecad299d46f5bfc1d1604e1abc9e15e3be0814095251cf370ab1b4e" -> "sha256:766300b3d814ac7c52bb367952c9ef45aedb13aea125701daa5a3453d513c77a" [label=""];
  "sha256:766300b3d814ac7c52bb367952c9ef45aedb13aea125701daa5a3453d513c77a" -> "sha256:dcd48a250ba73d8eaafa8aea71d25a2ebe053a69e879d3f0547826adbf27e0d9" [label=""];
  "sha256:dcd48a250ba73d8eaafa8aea71d25a2ebe053a69e879d3f0547826adbf27e0d9" -> "sha256:c05094150aa2fc39e670d973348029beede34b4e53de803b57ab91dd13bd3c0f" [label=""];
  "sha256:c05094150aa2fc39e670d973348029beede34b4e53de803b57ab91dd13bd3c0f" -> "sha256:0f52b0ed45ac8be7c8f1e65f1c9cb56f945d7d3eb7cbecffc7e70ed23ec3b1bb" [label=""];
  "sha256:0f52b0ed45ac8be7c8f1e65f1c9cb56f945d7d3eb7cbecffc7e70ed23ec3b1bb" -> "sha256:d48d1d3db44960844682507f872dcf80b5af22baa4b3328f9a15fbb86ac1a991" [label=""];
  "sha256:d48d1d3db44960844682507f872dcf80b5af22baa4b3328f9a15fbb86ac1a991" -> "sha256:a4ac7fc727abc3a891087d9f54f28f20ab6449c08d05995a34f1d96198c2dfd4" [label=""];
  "sha256:a4ac7fc727abc3a891087d9f54f28f20ab6449c08d05995a34f1d96198c2dfd4" -> "sha256:4f627a319737bc07a005e83c29560f5f5eedd84356134e46ccc2f409af8c1c56" [label=""];
  "sha256:4f627a319737bc07a005e83c29560f5f5eedd84356134e46ccc2f409af8c1c56" -> "sha256:18ad376bed332d6a9d4e2c00f7b4aa333d64a1c7a47eabec646a761782c1b716" [label=""];
  "sha256:18ad376bed332d6a9d4e2c00f7b4aa333d64a1c7a47eabec646a761782c1b716" -> "sha256:f362d35aeacd43883168583dcd7a47b9c95326da581d35ac461dd3259fb540ee" [label=""];
  "sha256:f362d35aeacd43883168583dcd7a47b9c95326da581d35ac461dd3259fb540ee" -> "sha256:88b0f1a7084d839ee4f31601b8d29f54c0ac7dbdb0453e1d6e96c807ab6b980a" [label=""];
  "sha256:88b0f1a7084d839ee4f31601b8d29f54c0ac7dbdb0453e1d6e96c807ab6b980a" -> "sha256:ad1cff1a6f01eedd21ba824b61f5c55b744e580dad64c4104db6f7f3702c096d" [label=""];
  "sha256:ad1cff1a6f01eedd21ba824b61f5c55b744e580dad64c4104db6f7f3702c096d" -> "sha256:a462b0ab49d966b40291e5bcaa931a06bbbf311d89f9fcebc7e4be52d899bb29" [label=""];
  "sha256:a462b0ab49d966b40291e5bcaa931a06bbbf311d89f9fcebc7e4be52d899bb29" -> "sha256:148f07bc85d59009a2d69b05ec13a3e2210db25647f716cb08464ea5c97e0eb7" [label=""];
  "sha256:148f07bc85d59009a2d69b05ec13a3e2210db25647f716cb08464ea5c97e0eb7" -> "sha256:846585227bdbcec06c699ac645ed7e74b4e3083eb0696c911999c0c3db0d57ba" [label=""];
}

