[app/sources/234538314.Dockerfile]
digraph {
  "sha256:ce56c966187d18d1b53361b3ead2581b36014ddcb880a67104b2711578ce23b9" [label="local://context" shape="ellipse"];
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" [label="docker-image://docker.io/library/ubuntu:16.10" shape="ellipse"];
  "sha256:1c607560eda893dd36d97e11ac7e9035043bbe42c869fbeb0177fa9a35dd0e5e" [label="/bin/sh -c mkdir -p $SYNTAXNETDIR     && cd $SYNTAXNETDIR     && apt-get update     && apt-get install -y           file           git           graphviz           libcurl3-dev           libfreetype6-dev           libgraphviz-dev           liblapack-dev           libopenblas-dev           libpng-dev           libxft-dev           openjdk-8-jdk           python-dev           python-mock           python-pip           python2.7           swig           unzip           vim           wget           zlib1g-dev     && apt-get clean     && (rm -f /var/cache/apt/archives/*.deb         /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true)" shape="box"];
  "sha256:ab27519fed79a33653f3ce8cefdf986ad335132b9b52fef8dd31dbcc76a37d9d" [label="/bin/sh -c pip install --ignore-installed pip     && python -m pip install numpy     && rm -rf /root/.cache/pip /tmp/pip*" shape="box"];
  "sha256:bcc37bdae58dd88b61cf12bef8a0a247ca96610daacbe78e29b500fb63f0d0ea" [label="/bin/sh -c python -m pip install           asciitree           ipykernel           jupyter           matplotlib           pandas           protobuf           scipy           sklearn     && python -m ipykernel.kernelspec     && python -m pip install pygraphviz           --install-option=\"--include-path=/usr/include/graphviz\"           --install-option=\"--library-path=/usr/lib/graphviz/\"     && python -m jupyter_core.command nbextension enable           --py --sys-prefix widgetsnbextension     && rm -rf /root/.cache/pip /tmp/pip*" shape="box"];
  "sha256:5e80c56c74520920e59474a336788919e7f150f596e36363a4a9d2eafb9222e7" [label="/bin/sh -c wget --quiet https://github.com/bazelbuild/bazel/releases/download/0.5.4/bazel-0.5.4-installer-linux-x86_64.sh     && chmod +x bazel-0.5.4-installer-linux-x86_64.sh     && ./bazel-0.5.4-installer-linux-x86_64.sh     && rm ./bazel-0.5.4-installer-linux-x86_64.sh" shape="box"];
  "sha256:2fd0f2566451e671152e0f2c224ff230bb89e6cfd63f72a8b16e7a657dec74b5" [label="copy{src=/WORKSPACE, dest=/opt/tensorflow/syntaxnet/WORKSPACE}" shape="note"];
  "sha256:ae0911dbbd30fc0482c1e3f9c51548806ebc6400f87ae6ef4c1773f052526acf" [label="copy{src=/tools/bazel.rc, dest=/opt/tensorflow/syntaxnet/tools/bazel.rc}" shape="note"];
  "sha256:4ec9898c572950453d10db7748652742418a93d2981d513cc09db0665dd34b18" [label="copy{src=/tensorflow, dest=/opt/tensorflow/syntaxnet/tensorflow}" shape="note"];
  "sha256:8d022845dc7555732abfac907554152ef352fbddc2d7a6bf57e3f9e1e2c5a56e" [label="/bin/sh -c cd $SYNTAXNETDIR/syntaxnet/tensorflow     && tensorflow/tools/ci_build/builds/configured CPU     && cd $SYNTAXNETDIR/syntaxnet     && bazel build -c opt @org_tensorflow//tensorflow:tensorflow_py" shape="box"];
  "sha256:1752e9b3e3e50918d95f8f70718f072996008c4f8a650c369562aed01e45d95e" [label="mkdir{path=/opt/tensorflow/syntaxnet}" shape="note"];
  "sha256:0de442cb2691fcda08f101be4267a5398f1e6d903df01f61afa6af335e83beaa" [label="copy{src=/dragnn, dest=/opt/tensorflow/syntaxnet/dragnn}" shape="note"];
  "sha256:cebd339bb27428d9cf196e931d904b968eeba5b63e43e55ce2b95f445b9cf2a1" [label="copy{src=/syntaxnet, dest=/opt/tensorflow/syntaxnet/syntaxnet}" shape="note"];
  "sha256:66ba7c3814e46fa2ae4cddfe414750dc17c8a03bff41f40735d14c2ff9347ae7" [label="copy{src=/third_party, dest=/opt/tensorflow/syntaxnet/third_party}" shape="note"];
  "sha256:7ecce7fd12e3b4e1eba314d5ecc1c89b92a628553051609fb180a1bba5d9a2d8" [label="copy{src=/util/utf8, dest=/opt/tensorflow/syntaxnet/util/utf8}" shape="note"];
  "sha256:69f7f08bd79062eb33f9d2c7a706efd184fef9716d9fbf13fde17ef166af69da" [label="/bin/sh -c bazel build -c opt //dragnn/python:all //dragnn/tools:all" shape="box"];
  "sha256:6418d24657c41073a6b6376f4e302930d3067267568fad8f3954df2fe1be68a1" [label="copy{src=/tensorflow/tensorflow/tools/docker/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:6dc684eaffc2ee623eee65130b2b7794edb72520ead555d2f93398760329c731" [label="copy{src=/examples, dest=/opt/tensorflow/syntaxnet/examples}" shape="note"];
  "sha256:8113f0f59b29f2c4e2f3aaf80f41195a21b2770f3b9b17ca7176f3e4a2b0baa1" [label="sha256:8113f0f59b29f2c4e2f3aaf80f41195a21b2770f3b9b17ca7176f3e4a2b0baa1" shape="plaintext"];
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" -> "sha256:1c607560eda893dd36d97e11ac7e9035043bbe42c869fbeb0177fa9a35dd0e5e" [label=""];
  "sha256:1c607560eda893dd36d97e11ac7e9035043bbe42c869fbeb0177fa9a35dd0e5e" -> "sha256:ab27519fed79a33653f3ce8cefdf986ad335132b9b52fef8dd31dbcc76a37d9d" [label=""];
  "sha256:ab27519fed79a33653f3ce8cefdf986ad335132b9b52fef8dd31dbcc76a37d9d" -> "sha256:bcc37bdae58dd88b61cf12bef8a0a247ca96610daacbe78e29b500fb63f0d0ea" [label=""];
  "sha256:bcc37bdae58dd88b61cf12bef8a0a247ca96610daacbe78e29b500fb63f0d0ea" -> "sha256:5e80c56c74520920e59474a336788919e7f150f596e36363a4a9d2eafb9222e7" [label=""];
  "sha256:5e80c56c74520920e59474a336788919e7f150f596e36363a4a9d2eafb9222e7" -> "sha256:2fd0f2566451e671152e0f2c224ff230bb89e6cfd63f72a8b16e7a657dec74b5" [label=""];
  "sha256:ce56c966187d18d1b53361b3ead2581b36014ddcb880a67104b2711578ce23b9" -> "sha256:2fd0f2566451e671152e0f2c224ff230bb89e6cfd63f72a8b16e7a657dec74b5" [label=""];
  "sha256:2fd0f2566451e671152e0f2c224ff230bb89e6cfd63f72a8b16e7a657dec74b5" -> "sha256:ae0911dbbd30fc0482c1e3f9c51548806ebc6400f87ae6ef4c1773f052526acf" [label=""];
  "sha256:ce56c966187d18d1b53361b3ead2581b36014ddcb880a67104b2711578ce23b9" -> "sha256:ae0911dbbd30fc0482c1e3f9c51548806ebc6400f87ae6ef4c1773f052526acf" [label=""];
  "sha256:ae0911dbbd30fc0482c1e3f9c51548806ebc6400f87ae6ef4c1773f052526acf" -> "sha256:4ec9898c572950453d10db7748652742418a93d2981d513cc09db0665dd34b18" [label=""];
  "sha256:ce56c966187d18d1b53361b3ead2581b36014ddcb880a67104b2711578ce23b9" -> "sha256:4ec9898c572950453d10db7748652742418a93d2981d513cc09db0665dd34b18" [label=""];
  "sha256:4ec9898c572950453d10db7748652742418a93d2981d513cc09db0665dd34b18" -> "sha256:8d022845dc7555732abfac907554152ef352fbddc2d7a6bf57e3f9e1e2c5a56e" [label=""];
  "sha256:8d022845dc7555732abfac907554152ef352fbddc2d7a6bf57e3f9e1e2c5a56e" -> "sha256:1752e9b3e3e50918d95f8f70718f072996008c4f8a650c369562aed01e45d95e" [label=""];
  "sha256:1752e9b3e3e50918d95f8f70718f072996008c4f8a650c369562aed01e45d95e" -> "sha256:0de442cb2691fcda08f101be4267a5398f1e6d903df01f61afa6af335e83beaa" [label=""];
  "sha256:ce56c966187d18d1b53361b3ead2581b36014ddcb880a67104b2711578ce23b9" -> "sha256:0de442cb2691fcda08f101be4267a5398f1e6d903df01f61afa6af335e83beaa" [label=""];
  "sha256:0de442cb2691fcda08f101be4267a5398f1e6d903df01f61afa6af335e83beaa" -> "sha256:cebd339bb27428d9cf196e931d904b968eeba5b63e43e55ce2b95f445b9cf2a1" [label=""];
  "sha256:ce56c966187d18d1b53361b3ead2581b36014ddcb880a67104b2711578ce23b9" -> "sha256:cebd339bb27428d9cf196e931d904b968eeba5b63e43e55ce2b95f445b9cf2a1" [label=""];
  "sha256:cebd339bb27428d9cf196e931d904b968eeba5b63e43e55ce2b95f445b9cf2a1" -> "sha256:66ba7c3814e46fa2ae4cddfe414750dc17c8a03bff41f40735d14c2ff9347ae7" [label=""];
  "sha256:ce56c966187d18d1b53361b3ead2581b36014ddcb880a67104b2711578ce23b9" -> "sha256:66ba7c3814e46fa2ae4cddfe414750dc17c8a03bff41f40735d14c2ff9347ae7" [label=""];
  "sha256:66ba7c3814e46fa2ae4cddfe414750dc17c8a03bff41f40735d14c2ff9347ae7" -> "sha256:7ecce7fd12e3b4e1eba314d5ecc1c89b92a628553051609fb180a1bba5d9a2d8" [label=""];
  "sha256:ce56c966187d18d1b53361b3ead2581b36014ddcb880a67104b2711578ce23b9" -> "sha256:7ecce7fd12e3b4e1eba314d5ecc1c89b92a628553051609fb180a1bba5d9a2d8" [label=""];
  "sha256:7ecce7fd12e3b4e1eba314d5ecc1c89b92a628553051609fb180a1bba5d9a2d8" -> "sha256:69f7f08bd79062eb33f9d2c7a706efd184fef9716d9fbf13fde17ef166af69da" [label=""];
  "sha256:69f7f08bd79062eb33f9d2c7a706efd184fef9716d9fbf13fde17ef166af69da" -> "sha256:6418d24657c41073a6b6376f4e302930d3067267568fad8f3954df2fe1be68a1" [label=""];
  "sha256:ce56c966187d18d1b53361b3ead2581b36014ddcb880a67104b2711578ce23b9" -> "sha256:6418d24657c41073a6b6376f4e302930d3067267568fad8f3954df2fe1be68a1" [label=""];
  "sha256:6418d24657c41073a6b6376f4e302930d3067267568fad8f3954df2fe1be68a1" -> "sha256:6dc684eaffc2ee623eee65130b2b7794edb72520ead555d2f93398760329c731" [label=""];
  "sha256:ce56c966187d18d1b53361b3ead2581b36014ddcb880a67104b2711578ce23b9" -> "sha256:6dc684eaffc2ee623eee65130b2b7794edb72520ead555d2f93398760329c731" [label=""];
  "sha256:6dc684eaffc2ee623eee65130b2b7794edb72520ead555d2f93398760329c731" -> "sha256:8113f0f59b29f2c4e2f3aaf80f41195a21b2770f3b9b17ca7176f3e4a2b0baa1" [label=""];
}

