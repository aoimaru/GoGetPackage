[app/sources/282338780.Dockerfile]
digraph {
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" [label="docker-image://docker.io/library/ubuntu:16.10" shape="ellipse"];
  "sha256:1c607560eda893dd36d97e11ac7e9035043bbe42c869fbeb0177fa9a35dd0e5e" [label="/bin/sh -c mkdir -p $SYNTAXNETDIR     && cd $SYNTAXNETDIR     && apt-get update     && apt-get install -y           file           git           graphviz           libcurl3-dev           libfreetype6-dev           libgraphviz-dev           liblapack-dev           libopenblas-dev           libpng-dev           libxft-dev           openjdk-8-jdk           python-dev           python-mock           python-pip           python2.7           swig           unzip           vim           wget           zlib1g-dev     && apt-get clean     && (rm -f /var/cache/apt/archives/*.deb         /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true)" shape="box"];
  "sha256:ab27519fed79a33653f3ce8cefdf986ad335132b9b52fef8dd31dbcc76a37d9d" [label="/bin/sh -c pip install --ignore-installed pip     && python -m pip install numpy     && rm -rf /root/.cache/pip /tmp/pip*" shape="box"];
  "sha256:bcc37bdae58dd88b61cf12bef8a0a247ca96610daacbe78e29b500fb63f0d0ea" [label="/bin/sh -c python -m pip install           asciitree           ipykernel           jupyter           matplotlib           pandas           protobuf           scipy           sklearn     && python -m ipykernel.kernelspec     && python -m pip install pygraphviz           --install-option=\"--include-path=/usr/include/graphviz\"           --install-option=\"--library-path=/usr/lib/graphviz/\"     && python -m jupyter_core.command nbextension enable           --py --sys-prefix widgetsnbextension     && rm -rf /root/.cache/pip /tmp/pip*" shape="box"];
  "sha256:7ece89c52de408c96ed63257da9f1ac0e1a514ae0b2f267a402bc3fdc068d28d" [label="/bin/sh -c wget --quiet https://github.com/bazelbuild/bazel/releases/download/0.5.3/bazel-0.5.3-installer-linux-x86_64.sh     && chmod +x bazel-0.5.3-installer-linux-x86_64.sh     && JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/ ./bazel-0.5.3-installer-linux-x86_64.sh     && rm ./bazel-0.5.3-installer-linux-x86_64.sh" shape="box"];
  "sha256:ba112c49390a3358bbf430f900fd31fb5bd488c29bc4742fbee86a9912c41537" [label="local://context" shape="ellipse"];
  "sha256:1bf53934e216edcd5f9f34d0f7e9e8ea999a5af4ba01aee4e5a8d88a1abf86ec" [label="copy{src=/WORKSPACE, dest=/opt/tensorflow/syntaxnet/WORKSPACE}" shape="note"];
  "sha256:bd83f39810e2f7dcd12ff444da4e65bc74a5af7c06598edc531b5f47e171ce95" [label="copy{src=/tools/bazel.rc, dest=/opt/tensorflow/syntaxnet/tools/bazel.rc}" shape="note"];
  "sha256:ccaccdcfdabafcad2fe0ed9e8bcf40898cd0d015b4dc1b957a4b928a8c97d2c7" [label="/bin/sh -c cd $SYNTAXNETDIR/syntaxnet     && git clone --branch r1.3 --recurse-submodules https://github.com/tensorflow/tensorflow     && cd tensorflow     && sed -i '\\@https://github.com/google/protobuf/archive/0b059a3d8a8f8aa40dde7bea55edca4ec5dfea66.tar.gz@d' tensorflow/workspace.bzl     && tensorflow/tools/ci_build/builds/configured CPU \\    && cd $SYNTAXNETDIR/syntaxnet     && bazel build -c opt @org_tensorflow//tensorflow:tensorflow_py" shape="box"];
  "sha256:8fbc47ae1c73efecb9d33a295c3a895528b5f29a2cfb6ed367ddd55d370ada1e" [label="mkdir{path=/opt/tensorflow/syntaxnet}" shape="note"];
  "sha256:e3877080340f3e26732036fc53af01a06654eb1363a4485d3e40f1d02dd19683" [label="copy{src=/dragnn, dest=/opt/tensorflow/syntaxnet/dragnn}" shape="note"];
  "sha256:94d7a4c69529df9626a6b08b4c2a504f6afed5142da054d11414fae8c68b853f" [label="copy{src=/syntaxnet, dest=/opt/tensorflow/syntaxnet/syntaxnet}" shape="note"];
  "sha256:3c6edfc779519019f21c2c2539750f2075f567d123ced7ee6c8a0c3cb41f2216" [label="copy{src=/third_party, dest=/opt/tensorflow/syntaxnet/third_party}" shape="note"];
  "sha256:54cfda2af7c47811dceb284fc89cb81bf7dfe10b1079f71a057bf6970d61f8c4" [label="copy{src=/util/utf8, dest=/opt/tensorflow/syntaxnet/util/utf8}" shape="note"];
  "sha256:8b2576b562a9288267abd61f6c8f4acb058a1b5b060943efcc6221142a32cf0a" [label="/bin/sh -c bazel test -c opt ... || true" shape="box"];
  "sha256:1e22bf2ec6fcbe69d6c4f4d36da4b0e05f5ca07383a5498175a3e1a9be8a0b72" [label="sha256:1e22bf2ec6fcbe69d6c4f4d36da4b0e05f5ca07383a5498175a3e1a9be8a0b72" shape="plaintext"];
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" -> "sha256:1c607560eda893dd36d97e11ac7e9035043bbe42c869fbeb0177fa9a35dd0e5e" [label=""];
  "sha256:1c607560eda893dd36d97e11ac7e9035043bbe42c869fbeb0177fa9a35dd0e5e" -> "sha256:ab27519fed79a33653f3ce8cefdf986ad335132b9b52fef8dd31dbcc76a37d9d" [label=""];
  "sha256:ab27519fed79a33653f3ce8cefdf986ad335132b9b52fef8dd31dbcc76a37d9d" -> "sha256:bcc37bdae58dd88b61cf12bef8a0a247ca96610daacbe78e29b500fb63f0d0ea" [label=""];
  "sha256:bcc37bdae58dd88b61cf12bef8a0a247ca96610daacbe78e29b500fb63f0d0ea" -> "sha256:7ece89c52de408c96ed63257da9f1ac0e1a514ae0b2f267a402bc3fdc068d28d" [label=""];
  "sha256:7ece89c52de408c96ed63257da9f1ac0e1a514ae0b2f267a402bc3fdc068d28d" -> "sha256:1bf53934e216edcd5f9f34d0f7e9e8ea999a5af4ba01aee4e5a8d88a1abf86ec" [label=""];
  "sha256:ba112c49390a3358bbf430f900fd31fb5bd488c29bc4742fbee86a9912c41537" -> "sha256:1bf53934e216edcd5f9f34d0f7e9e8ea999a5af4ba01aee4e5a8d88a1abf86ec" [label=""];
  "sha256:1bf53934e216edcd5f9f34d0f7e9e8ea999a5af4ba01aee4e5a8d88a1abf86ec" -> "sha256:bd83f39810e2f7dcd12ff444da4e65bc74a5af7c06598edc531b5f47e171ce95" [label=""];
  "sha256:ba112c49390a3358bbf430f900fd31fb5bd488c29bc4742fbee86a9912c41537" -> "sha256:bd83f39810e2f7dcd12ff444da4e65bc74a5af7c06598edc531b5f47e171ce95" [label=""];
  "sha256:bd83f39810e2f7dcd12ff444da4e65bc74a5af7c06598edc531b5f47e171ce95" -> "sha256:ccaccdcfdabafcad2fe0ed9e8bcf40898cd0d015b4dc1b957a4b928a8c97d2c7" [label=""];
  "sha256:ccaccdcfdabafcad2fe0ed9e8bcf40898cd0d015b4dc1b957a4b928a8c97d2c7" -> "sha256:8fbc47ae1c73efecb9d33a295c3a895528b5f29a2cfb6ed367ddd55d370ada1e" [label=""];
  "sha256:8fbc47ae1c73efecb9d33a295c3a895528b5f29a2cfb6ed367ddd55d370ada1e" -> "sha256:e3877080340f3e26732036fc53af01a06654eb1363a4485d3e40f1d02dd19683" [label=""];
  "sha256:ba112c49390a3358bbf430f900fd31fb5bd488c29bc4742fbee86a9912c41537" -> "sha256:e3877080340f3e26732036fc53af01a06654eb1363a4485d3e40f1d02dd19683" [label=""];
  "sha256:e3877080340f3e26732036fc53af01a06654eb1363a4485d3e40f1d02dd19683" -> "sha256:94d7a4c69529df9626a6b08b4c2a504f6afed5142da054d11414fae8c68b853f" [label=""];
  "sha256:ba112c49390a3358bbf430f900fd31fb5bd488c29bc4742fbee86a9912c41537" -> "sha256:94d7a4c69529df9626a6b08b4c2a504f6afed5142da054d11414fae8c68b853f" [label=""];
  "sha256:94d7a4c69529df9626a6b08b4c2a504f6afed5142da054d11414fae8c68b853f" -> "sha256:3c6edfc779519019f21c2c2539750f2075f567d123ced7ee6c8a0c3cb41f2216" [label=""];
  "sha256:ba112c49390a3358bbf430f900fd31fb5bd488c29bc4742fbee86a9912c41537" -> "sha256:3c6edfc779519019f21c2c2539750f2075f567d123ced7ee6c8a0c3cb41f2216" [label=""];
  "sha256:3c6edfc779519019f21c2c2539750f2075f567d123ced7ee6c8a0c3cb41f2216" -> "sha256:54cfda2af7c47811dceb284fc89cb81bf7dfe10b1079f71a057bf6970d61f8c4" [label=""];
  "sha256:ba112c49390a3358bbf430f900fd31fb5bd488c29bc4742fbee86a9912c41537" -> "sha256:54cfda2af7c47811dceb284fc89cb81bf7dfe10b1079f71a057bf6970d61f8c4" [label=""];
  "sha256:54cfda2af7c47811dceb284fc89cb81bf7dfe10b1079f71a057bf6970d61f8c4" -> "sha256:8b2576b562a9288267abd61f6c8f4acb058a1b5b060943efcc6221142a32cf0a" [label=""];
  "sha256:8b2576b562a9288267abd61f6c8f4acb058a1b5b060943efcc6221142a32cf0a" -> "sha256:1e22bf2ec6fcbe69d6c4f4d36da4b0e05f5ca07383a5498175a3e1a9be8a0b72" [label=""];
}

