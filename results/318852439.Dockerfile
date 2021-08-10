[app/sources/318852439.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:548abbb9498b2853401785d84884a2b7031d779db4c70103413a92b06c7e720a" [label="/bin/sh -c echo \"deb-src http://archive.ubuntu.com/ubuntu/ xenial main restricted\" >> /etc/apt/sources.list && apt-get update && apt-get install -y python-pip git mercurial build-essential cmake libopenblas-dev" shape="box"];
  "sha256:f8cbbedb49b63f93337c47c8ed6f9e2936e145b65ffa462a4d58c62c9a2340e3" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:7125ec726471610b789f818d27d755f63abd46279290c8119e7851920c287ed7" [label="/bin/sh -c pip install wheel" shape="box"];
  "sha256:d34bb754173c4094f2f60a8ca5391e2247c04f156a5cee253748f860690afd38" [label="/bin/sh -c pip install cython" shape="box"];
  "sha256:aef5e7b3e9f407f85518547f5896f3491eb4fddfb980d83ca0c215dec271907c" [label="/bin/sh -c pip install numpy==1.12.0" shape="box"];
  "sha256:8793ddeeb67ac70f5c11d629c1763f3204ca610619c92d9b1285e2d3339b0d4f" [label="/bin/sh -c cd /opt &&         hg clone https://bitbucket.org/eigen/eigen/ -r ${EIGEN_VERSION}" shape="box"];
  "sha256:746578c15724962d6175738770482bc1c5038fe7508325cd2327592e89a15931" [label="/bin/sh -c cd /opt &&         git clone https://github.com/clab/dynet.git &&         cd dynet &&         git checkout ${DYNET_VERSION} &&         mkdir build &&         cd build &&         cmake .. -DEIGEN3_INCLUDE_DIR=/opt/eigen -DPYTHON=`which python` &&         make -j2 &&         cd python &&         python ../../setup.py build --build-dir=.. --skip-build install" shape="box"];
  "sha256:d9e09521e76ac87914b74f8dc2bd3be89723eebfc0c911c49b4fb0fa3c4e3cdd" [label="/bin/sh -c cd /opt/dynet/build && make -j2 install" shape="box"];
  "sha256:71d099d937b5d700945b5642918794916ca81ae9dda8e266d9a2b7e74769b970" [label="/bin/sh -c mkdir /opt/ner-tagger-dynet" shape="box"];
  "sha256:b9b50cefe40682080fe0e24a5624da3e9d99dddffb288bc6f156e007caaf6f98" [label="mkdir{path=/opt/ner-tagger-dynet}" shape="note"];
  "sha256:ec6d2b18fdd942f212319f036aacba5de356ec57bf07104aacbee33b64c1cb1c" [label="local://context" shape="ellipse"];
  "sha256:42896832de6bfd1fce9d2c8d31f21f053022bf04860e802a56335cdb3baeebef" [label="copy{src=/*.py, dest=/opt/ner-tagger-dynet/}" shape="note"];
  "sha256:057a6f49bb37ae6ce6cf89aa2bebf119e19829cfbf474c1014ce7a9221168f7b" [label="copy{src=/requirements.txt, dest=/opt/ner-tagger-dynet/}" shape="note"];
  "sha256:fdb87300e4c8dd60bdb384f060953887617354209a74796018ceb601fb2c690a" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:8f75bac02d174d4eafdc63ed11b0916c4df5cd0757ba9388a92599f90e7259e9" [label="/bin/sh -c mkdir dataset" shape="box"];
  "sha256:ac86cc4656d9915bd6ded64fc586d2a54451d083bf9927c417cb67b053528a51" [label="copy{src=/evaluation/conlleval, dest=/opt/ner-tagger-dynet/evaluation/}" shape="note"];
  "sha256:96fff38a732b8860a4cfcc847fb53517259ce08e8743285b43e3bee455c75307" [label="/bin/sh -c mkdir -p evaluation/temp/eval_logs/" shape="box"];
  "sha256:ea52c7bcf311ec954ad9489b419d2964f3d3922fad53f2f9b0092c6994a83ac8" [label="/bin/sh -c mkdir models/" shape="box"];
  "sha256:646d14c605b110522efa44931e3d37efcfac856b5368c916fefba415150af192" [label="sha256:646d14c605b110522efa44931e3d37efcfac856b5368c916fefba415150af192" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:548abbb9498b2853401785d84884a2b7031d779db4c70103413a92b06c7e720a" [label=""];
  "sha256:548abbb9498b2853401785d84884a2b7031d779db4c70103413a92b06c7e720a" -> "sha256:f8cbbedb49b63f93337c47c8ed6f9e2936e145b65ffa462a4d58c62c9a2340e3" [label=""];
  "sha256:f8cbbedb49b63f93337c47c8ed6f9e2936e145b65ffa462a4d58c62c9a2340e3" -> "sha256:7125ec726471610b789f818d27d755f63abd46279290c8119e7851920c287ed7" [label=""];
  "sha256:7125ec726471610b789f818d27d755f63abd46279290c8119e7851920c287ed7" -> "sha256:d34bb754173c4094f2f60a8ca5391e2247c04f156a5cee253748f860690afd38" [label=""];
  "sha256:d34bb754173c4094f2f60a8ca5391e2247c04f156a5cee253748f860690afd38" -> "sha256:aef5e7b3e9f407f85518547f5896f3491eb4fddfb980d83ca0c215dec271907c" [label=""];
  "sha256:aef5e7b3e9f407f85518547f5896f3491eb4fddfb980d83ca0c215dec271907c" -> "sha256:8793ddeeb67ac70f5c11d629c1763f3204ca610619c92d9b1285e2d3339b0d4f" [label=""];
  "sha256:8793ddeeb67ac70f5c11d629c1763f3204ca610619c92d9b1285e2d3339b0d4f" -> "sha256:746578c15724962d6175738770482bc1c5038fe7508325cd2327592e89a15931" [label=""];
  "sha256:746578c15724962d6175738770482bc1c5038fe7508325cd2327592e89a15931" -> "sha256:d9e09521e76ac87914b74f8dc2bd3be89723eebfc0c911c49b4fb0fa3c4e3cdd" [label=""];
  "sha256:d9e09521e76ac87914b74f8dc2bd3be89723eebfc0c911c49b4fb0fa3c4e3cdd" -> "sha256:71d099d937b5d700945b5642918794916ca81ae9dda8e266d9a2b7e74769b970" [label=""];
  "sha256:71d099d937b5d700945b5642918794916ca81ae9dda8e266d9a2b7e74769b970" -> "sha256:b9b50cefe40682080fe0e24a5624da3e9d99dddffb288bc6f156e007caaf6f98" [label=""];
  "sha256:b9b50cefe40682080fe0e24a5624da3e9d99dddffb288bc6f156e007caaf6f98" -> "sha256:42896832de6bfd1fce9d2c8d31f21f053022bf04860e802a56335cdb3baeebef" [label=""];
  "sha256:ec6d2b18fdd942f212319f036aacba5de356ec57bf07104aacbee33b64c1cb1c" -> "sha256:42896832de6bfd1fce9d2c8d31f21f053022bf04860e802a56335cdb3baeebef" [label=""];
  "sha256:42896832de6bfd1fce9d2c8d31f21f053022bf04860e802a56335cdb3baeebef" -> "sha256:057a6f49bb37ae6ce6cf89aa2bebf119e19829cfbf474c1014ce7a9221168f7b" [label=""];
  "sha256:ec6d2b18fdd942f212319f036aacba5de356ec57bf07104aacbee33b64c1cb1c" -> "sha256:057a6f49bb37ae6ce6cf89aa2bebf119e19829cfbf474c1014ce7a9221168f7b" [label=""];
  "sha256:057a6f49bb37ae6ce6cf89aa2bebf119e19829cfbf474c1014ce7a9221168f7b" -> "sha256:fdb87300e4c8dd60bdb384f060953887617354209a74796018ceb601fb2c690a" [label=""];
  "sha256:fdb87300e4c8dd60bdb384f060953887617354209a74796018ceb601fb2c690a" -> "sha256:8f75bac02d174d4eafdc63ed11b0916c4df5cd0757ba9388a92599f90e7259e9" [label=""];
  "sha256:8f75bac02d174d4eafdc63ed11b0916c4df5cd0757ba9388a92599f90e7259e9" -> "sha256:ac86cc4656d9915bd6ded64fc586d2a54451d083bf9927c417cb67b053528a51" [label=""];
  "sha256:ec6d2b18fdd942f212319f036aacba5de356ec57bf07104aacbee33b64c1cb1c" -> "sha256:ac86cc4656d9915bd6ded64fc586d2a54451d083bf9927c417cb67b053528a51" [label=""];
  "sha256:ac86cc4656d9915bd6ded64fc586d2a54451d083bf9927c417cb67b053528a51" -> "sha256:96fff38a732b8860a4cfcc847fb53517259ce08e8743285b43e3bee455c75307" [label=""];
  "sha256:96fff38a732b8860a4cfcc847fb53517259ce08e8743285b43e3bee455c75307" -> "sha256:ea52c7bcf311ec954ad9489b419d2964f3d3922fad53f2f9b0092c6994a83ac8" [label=""];
  "sha256:ea52c7bcf311ec954ad9489b419d2964f3d3922fad53f2f9b0092c6994a83ac8" -> "sha256:646d14c605b110522efa44931e3d37efcfac856b5368c916fefba415150af192" [label=""];
}

