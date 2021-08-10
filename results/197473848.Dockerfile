[app/sources/197473848.Dockerfile]
digraph {
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" [label="docker-image://docker.io/library/fedora:23" shape="ellipse"];
  "sha256:ae8b0cd41a8a3c070847d3cdfb9de86077013f31226f2812d06e410ce7bc0e31" [label="/bin/sh -c dnf upgrade -y" shape="box"];
  "sha256:057a7f8a9f147ed0dff889b4b4cb9b45b948f87ca4aa1ce87b3beb8aab4927d9" [label="/bin/sh -c dnf install -y autoconf automake gcc-c++ libdb4-cxx libdb4-cxx-devel boost-devel openssl-devel git bzip2 make file sudo tar patch findutils libevent-devel libseccomp-devel libcap-devel" shape="box"];
  "sha256:5003c124b8b5f3d1ec58130d84af1a5b2a218eae80520c29097720a82064f143" [label="/bin/sh -c dnf install -y protobuf-lite-devel" shape="box"];
  "sha256:913bfe49fea22a7043177ba363cb89173e2d14e14a5ec1945e758c0b075afa0d" [label="/bin/sh -c dnf install -y qt5-qtbase-devel qt5-qttools-devel qt5-qtwebkit-devel qt5-qtwebsockets qrencode-devel" shape="box"];
  "sha256:59e12c50f815a705b3818430db4b0d7d8e64ddc5a11880ed1394bcbf08648578" [label="/bin/sh -c git clone https://github.com/vergecurrency/verge /coin/git" shape="box"];
  "sha256:4f855ce4d18e60ea5c180df1ca2bb657bdfb10d89ddc76dca0b0eaf9a55872f8" [label="mkdir{path=/coin/git}" shape="note"];
  "sha256:1088558987538f47aa8392e9b0d2b2018f793aab6ebd657c4944025af3b1a66b" [label="/bin/sh -c ./autogen.sh && ./configure --with-gui=qt5 && make && mv src/VERGEd /coin/VERGEd" shape="box"];
  "sha256:1f7c3018fb5a895b7afa5863ecc7ead9c154f8511512af45df8a61296d503b9d" [label="mkdir{path=/coin}" shape="note"];
  "sha256:82555c3ff6fbcd897fb8ab35fccfd65b52fdaa3e632f6dc0fe0ab19011d4a378" [label="sha256:82555c3ff6fbcd897fb8ab35fccfd65b52fdaa3e632f6dc0fe0ab19011d4a378" shape="plaintext"];
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" -> "sha256:ae8b0cd41a8a3c070847d3cdfb9de86077013f31226f2812d06e410ce7bc0e31" [label=""];
  "sha256:ae8b0cd41a8a3c070847d3cdfb9de86077013f31226f2812d06e410ce7bc0e31" -> "sha256:057a7f8a9f147ed0dff889b4b4cb9b45b948f87ca4aa1ce87b3beb8aab4927d9" [label=""];
  "sha256:057a7f8a9f147ed0dff889b4b4cb9b45b948f87ca4aa1ce87b3beb8aab4927d9" -> "sha256:5003c124b8b5f3d1ec58130d84af1a5b2a218eae80520c29097720a82064f143" [label=""];
  "sha256:5003c124b8b5f3d1ec58130d84af1a5b2a218eae80520c29097720a82064f143" -> "sha256:913bfe49fea22a7043177ba363cb89173e2d14e14a5ec1945e758c0b075afa0d" [label=""];
  "sha256:913bfe49fea22a7043177ba363cb89173e2d14e14a5ec1945e758c0b075afa0d" -> "sha256:59e12c50f815a705b3818430db4b0d7d8e64ddc5a11880ed1394bcbf08648578" [label=""];
  "sha256:59e12c50f815a705b3818430db4b0d7d8e64ddc5a11880ed1394bcbf08648578" -> "sha256:4f855ce4d18e60ea5c180df1ca2bb657bdfb10d89ddc76dca0b0eaf9a55872f8" [label=""];
  "sha256:4f855ce4d18e60ea5c180df1ca2bb657bdfb10d89ddc76dca0b0eaf9a55872f8" -> "sha256:1088558987538f47aa8392e9b0d2b2018f793aab6ebd657c4944025af3b1a66b" [label=""];
  "sha256:1088558987538f47aa8392e9b0d2b2018f793aab6ebd657c4944025af3b1a66b" -> "sha256:1f7c3018fb5a895b7afa5863ecc7ead9c154f8511512af45df8a61296d503b9d" [label=""];
  "sha256:1f7c3018fb5a895b7afa5863ecc7ead9c154f8511512af45df8a61296d503b9d" -> "sha256:82555c3ff6fbcd897fb8ab35fccfd65b52fdaa3e632f6dc0fe0ab19011d4a378" [label=""];
}

