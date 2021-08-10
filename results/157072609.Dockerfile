[app/sources/157072609.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:89e923d61d9679a21eba5264f34d2432bded7f9f9d6d6d47092584905ba3eb7f" [label="/bin/sh -c apt-get update && apt-get install -y gcc g++ perl python automake make                                        wget git curl libdb-dev                                        zlib1g-dev bzip2 libncurses5-dev                                        texlive-latex-base                                        default-jre                                        python-pip python-dev                                        gfortran                                        build-essential libghc-zlib-dev libncurses-dev libbz2-dev liblzma-dev libpcre3-dev libxml2-dev                                        libblas-dev gfortran git unzip ftp libzmq3-dev nano ftp fort77 libreadline-dev                                        libcurl4-openssl-dev libx11-dev libxt-dev                                        x11-common libcairo2-dev libpng12-dev libreadline6-dev libjpeg8-dev pkg-config                    && apt-get clean" shape="box"];
  "sha256:2619fb9ba467d304184a58dfc65ac863cdb27539e0270b2170de8592dc50caf2" [label="mkdir{path=/usr/local/bin}" shape="note"];
  "sha256:9dec2d37425035eb733e4d5bbc8a1b1bca779684e0372c6b2e14c5bace27633f" [label="/bin/sh -c wget \"https://github.com/broadinstitute/picard/releases/download/2.10.6/picard.jar\"" shape="box"];
  "sha256:e4944bb34fb0cd27296058f802f6d195f1384b8d3b82d5ba1f870ab1863eede0" [label="mkdir{path=/usr/local/src}" shape="note"];
  "sha256:c60874416d80528b987eaffd09646dbbfeab81db5c1b448a11a989edd1970bc0" [label="/bin/sh -c wget https://github.com/samtools/samtools/releases/download/1.5/samtools-1.5.tar.bz2 &&     tar xvf samtools-1.5.tar.bz2  &&     cd samtools-1.5 &&     ./configure && make && make install" shape="box"];
  "sha256:d863d564b52a31c7bf76e252be5a16cb9bda67b8d0624203d8da43970659038e" [label="/bin/sh -c wget ftp://ftp.ccb.jhu.edu/pub/infphilo/centrifuge/downloads/centrifuge-1.0.3-beta-Linux_x86_64.zip &&      unzip centrifuge-1.0.3-beta-Linux_x86_64.zip &&      ln -s /usr/local/src/centrifuge-1.0.3-beta/centrifuge* /usr/local/bin/." shape="box"];
  "sha256:a04b4775c9fd7c6edd61cbd926147859c7b49851f30cce855b3ac036e7b69098" [label="local://context" shape="ellipse"];
  "sha256:c60860db4bd30412c29bf85e5e9a738552f674d66c64e12da0b46402cbd86df9" [label="copy{src=/centrifuge/centrifuge-kreport, dest=/usr/local/bin}" shape="note"];
  "sha256:2580b7408f153f771b7847c5c680c79a1afb8d7424fa8b6de85e332f5e8873a2" [label="copy{src=/util/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:0c6c9a125d70580c2638c545ac15bc3b259241d7435f59b05d7b773353dd4b53" [label="/bin/sh -c mkdir /workdir" shape="box"];
  "sha256:140408ad3d60c4b633ad1b015f2ef75800a47a7dfc54992c587250623cfc8e60" [label="mkdir{path=/workdir}" shape="note"];
  "sha256:652636bdee7fc6743c9e5ded5065275217cdbb8593159f5c008f9255143f6816" [label="sha256:652636bdee7fc6743c9e5ded5065275217cdbb8593159f5c008f9255143f6816" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:89e923d61d9679a21eba5264f34d2432bded7f9f9d6d6d47092584905ba3eb7f" [label=""];
  "sha256:89e923d61d9679a21eba5264f34d2432bded7f9f9d6d6d47092584905ba3eb7f" -> "sha256:2619fb9ba467d304184a58dfc65ac863cdb27539e0270b2170de8592dc50caf2" [label=""];
  "sha256:2619fb9ba467d304184a58dfc65ac863cdb27539e0270b2170de8592dc50caf2" -> "sha256:9dec2d37425035eb733e4d5bbc8a1b1bca779684e0372c6b2e14c5bace27633f" [label=""];
  "sha256:9dec2d37425035eb733e4d5bbc8a1b1bca779684e0372c6b2e14c5bace27633f" -> "sha256:e4944bb34fb0cd27296058f802f6d195f1384b8d3b82d5ba1f870ab1863eede0" [label=""];
  "sha256:e4944bb34fb0cd27296058f802f6d195f1384b8d3b82d5ba1f870ab1863eede0" -> "sha256:c60874416d80528b987eaffd09646dbbfeab81db5c1b448a11a989edd1970bc0" [label=""];
  "sha256:c60874416d80528b987eaffd09646dbbfeab81db5c1b448a11a989edd1970bc0" -> "sha256:d863d564b52a31c7bf76e252be5a16cb9bda67b8d0624203d8da43970659038e" [label=""];
  "sha256:d863d564b52a31c7bf76e252be5a16cb9bda67b8d0624203d8da43970659038e" -> "sha256:c60860db4bd30412c29bf85e5e9a738552f674d66c64e12da0b46402cbd86df9" [label=""];
  "sha256:a04b4775c9fd7c6edd61cbd926147859c7b49851f30cce855b3ac036e7b69098" -> "sha256:c60860db4bd30412c29bf85e5e9a738552f674d66c64e12da0b46402cbd86df9" [label=""];
  "sha256:c60860db4bd30412c29bf85e5e9a738552f674d66c64e12da0b46402cbd86df9" -> "sha256:2580b7408f153f771b7847c5c680c79a1afb8d7424fa8b6de85e332f5e8873a2" [label=""];
  "sha256:a04b4775c9fd7c6edd61cbd926147859c7b49851f30cce855b3ac036e7b69098" -> "sha256:2580b7408f153f771b7847c5c680c79a1afb8d7424fa8b6de85e332f5e8873a2" [label=""];
  "sha256:2580b7408f153f771b7847c5c680c79a1afb8d7424fa8b6de85e332f5e8873a2" -> "sha256:0c6c9a125d70580c2638c545ac15bc3b259241d7435f59b05d7b773353dd4b53" [label=""];
  "sha256:0c6c9a125d70580c2638c545ac15bc3b259241d7435f59b05d7b773353dd4b53" -> "sha256:140408ad3d60c4b633ad1b015f2ef75800a47a7dfc54992c587250623cfc8e60" [label=""];
  "sha256:140408ad3d60c4b633ad1b015f2ef75800a47a7dfc54992c587250623cfc8e60" -> "sha256:652636bdee7fc6743c9e5ded5065275217cdbb8593159f5c008f9255143f6816" [label=""];
}

