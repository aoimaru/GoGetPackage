[app/sources/413061913.Dockerfile]
digraph {
  "sha256:4d47f5a4bb70b1fbcfcb3d7637f03ababe881c9705e503d8895342395d31eec1" [label="docker-image://docker.io/library/ubuntu:artful-20180123" shape="ellipse"];
  "sha256:5f528465ff2022795ab3d736bfb41f4ecbf7593c8cdda94ee94ec9d4e6c82e41" [label="local://context" shape="ellipse"];
  "sha256:3b2cbd82d2fe3fe34869926fd8f2a5d7505316af05aafa528e646a44a639822c" [label="copy{src=/.docker/neurodebian.gpg, dest=/etc/.neurodebian.gpg}" shape="note"];
  "sha256:437035d167edb664ece9cbffbd4a4bb09f0aa2ee90c636576ba75ebe488582c4" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends                     curl                     bzip2                     ca-certificates                     xvfb                     pkg-config &&     curl -sSL http://neuro.debian.net/lists/trusty.us-ca.full >> /etc/apt/sources.list.d/neurodebian.sources.list &&     apt-key add /etc/.neurodebian.gpg &&     (apt-key adv --refresh-keys --keyserver hkp://ha.pool.sks-keyservers.net 0xA5D32F012649A5A9 || true) &&     apt-get update" shape="box"];
  "sha256:dc616205c8e7edf2089936f98ee781050e644dedc84a45fefa3c6b546b056aee" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends                     libinsighttoolkit4-dev                     cmake                     g++                     build-essential                     libjsoncpp-dev                     libvtk6-dev                     libvtkgdcm2-dev                     libboost-filesystem-dev                     libboost-system-dev                     libboost-program-options-dev                     libfftw3-dev &&     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:e76d1088edb118522f026ec6d45a0b0dfb5e2099278736b869f86193b60d97d7" [label="copy{src=/Code, dest=/src/regseg}" shape="note"];
  "sha256:a8627c1f0182e1c56fd7a8ad421b494c6f2d9e9ec6f5e678382401d7d7808389" [label="mkdir{path=/usr/local/build/regseg}" shape="note"];
  "sha256:df4e3b81d5920b77891eace4f1cef5483bc693f7bc0a2bd50955b7669e309b9c" [label="/bin/sh -c cmake /src/regseg/ -G\"Unix Makefiles\"  -DCMAKE_BUILD_TYPE=Release -DITK_DIR=/usr/local/lib/cmake/ITK-4.7/ -DVTK_DIR=/usr/lib/cmake/vtk-6.0/ &&     make -j$( grep -c ^processor /proc/cpuinfo ) &&     make install &&     rm -rf /src/regseg/ /usr/local/build/regseg/" shape="box"];
  "sha256:cc486ac32a1a363e3f594fe86da1617934c0574f7607c07d8716046e3335d809" [label="mkdir{path=/work}" shape="note"];
  "sha256:140553a7f052e6b5bec18a704b514a176fcbde42cfa61ccdcc51e9adfeea9d64" [label="sha256:140553a7f052e6b5bec18a704b514a176fcbde42cfa61ccdcc51e9adfeea9d64" shape="plaintext"];
  "sha256:4d47f5a4bb70b1fbcfcb3d7637f03ababe881c9705e503d8895342395d31eec1" -> "sha256:3b2cbd82d2fe3fe34869926fd8f2a5d7505316af05aafa528e646a44a639822c" [label=""];
  "sha256:5f528465ff2022795ab3d736bfb41f4ecbf7593c8cdda94ee94ec9d4e6c82e41" -> "sha256:3b2cbd82d2fe3fe34869926fd8f2a5d7505316af05aafa528e646a44a639822c" [label=""];
  "sha256:3b2cbd82d2fe3fe34869926fd8f2a5d7505316af05aafa528e646a44a639822c" -> "sha256:437035d167edb664ece9cbffbd4a4bb09f0aa2ee90c636576ba75ebe488582c4" [label=""];
  "sha256:437035d167edb664ece9cbffbd4a4bb09f0aa2ee90c636576ba75ebe488582c4" -> "sha256:dc616205c8e7edf2089936f98ee781050e644dedc84a45fefa3c6b546b056aee" [label=""];
  "sha256:dc616205c8e7edf2089936f98ee781050e644dedc84a45fefa3c6b546b056aee" -> "sha256:e76d1088edb118522f026ec6d45a0b0dfb5e2099278736b869f86193b60d97d7" [label=""];
  "sha256:5f528465ff2022795ab3d736bfb41f4ecbf7593c8cdda94ee94ec9d4e6c82e41" -> "sha256:e76d1088edb118522f026ec6d45a0b0dfb5e2099278736b869f86193b60d97d7" [label=""];
  "sha256:e76d1088edb118522f026ec6d45a0b0dfb5e2099278736b869f86193b60d97d7" -> "sha256:a8627c1f0182e1c56fd7a8ad421b494c6f2d9e9ec6f5e678382401d7d7808389" [label=""];
  "sha256:a8627c1f0182e1c56fd7a8ad421b494c6f2d9e9ec6f5e678382401d7d7808389" -> "sha256:df4e3b81d5920b77891eace4f1cef5483bc693f7bc0a2bd50955b7669e309b9c" [label=""];
  "sha256:df4e3b81d5920b77891eace4f1cef5483bc693f7bc0a2bd50955b7669e309b9c" -> "sha256:cc486ac32a1a363e3f594fe86da1617934c0574f7607c07d8716046e3335d809" [label=""];
  "sha256:cc486ac32a1a363e3f594fe86da1617934c0574f7607c07d8716046e3335d809" -> "sha256:140553a7f052e6b5bec18a704b514a176fcbde42cfa61ccdcc51e9adfeea9d64" [label=""];
}

