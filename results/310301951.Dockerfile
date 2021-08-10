[app/sources/310301951.Dockerfile]
digraph {
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" [label="docker-image://docker.io/library/ubuntu:16.10" shape="ellipse"];
  "sha256:1c607560eda893dd36d97e11ac7e9035043bbe42c869fbeb0177fa9a35dd0e5e" [label="/bin/sh -c mkdir -p $SYNTAXNETDIR     && cd $SYNTAXNETDIR     && apt-get update     && apt-get install -y           file           git           graphviz           libcurl3-dev           libfreetype6-dev           libgraphviz-dev           liblapack-dev           libopenblas-dev           libpng-dev           libxft-dev           openjdk-8-jdk           python-dev           python-mock           python-pip           python2.7           swig           unzip           vim           wget           zlib1g-dev     && apt-get clean     && (rm -f /var/cache/apt/archives/*.deb         /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true)" shape="box"];
  "sha256:ab27519fed79a33653f3ce8cefdf986ad335132b9b52fef8dd31dbcc76a37d9d" [label="/bin/sh -c pip install --ignore-installed pip     && python -m pip install numpy     && rm -rf /root/.cache/pip /tmp/pip*" shape="box"];
  "sha256:bcc37bdae58dd88b61cf12bef8a0a247ca96610daacbe78e29b500fb63f0d0ea" [label="/bin/sh -c python -m pip install           asciitree           ipykernel           jupyter           matplotlib           pandas           protobuf           scipy           sklearn     && python -m ipykernel.kernelspec     && python -m pip install pygraphviz           --install-option=\"--include-path=/usr/include/graphviz\"           --install-option=\"--library-path=/usr/lib/graphviz/\"     && python -m jupyter_core.command nbextension enable           --py --sys-prefix widgetsnbextension     && rm -rf /root/.cache/pip /tmp/pip*" shape="box"];
  "sha256:4f2dec564e6909cdc68017096432862c30e6dde0c4f344ece315d908dc5d8df2" [label="/bin/sh -c wget --quiet https://github.com/bazelbuild/bazel/releases/download/0.8.1/bazel-0.8.1-installer-linux-x86_64.sh     && chmod +x bazel-0.8.1-installer-linux-x86_64.sh     && ./bazel-0.8.1-installer-linux-x86_64.sh     && rm ./bazel-0.8.1-installer-linux-x86_64.sh" shape="box"];
  "sha256:0ffec8e6102b1f7a9d0d1a174e998f9e5253d927f1f6b57652005ca76d510634" [label="local://context" shape="ellipse"];
  "sha256:02368c1285421bdd940ac5db8f5a04b532d8da19e21bc0c608f830e66df0611f" [label="copy{src=/WORKSPACE, dest=/opt/tensorflow/syntaxnet/WORKSPACE}" shape="note"];
  "sha256:e0a9ae2cefefff74f5242ba3d3be6952e4335b29dfb40abdd3ae9d2db97ff94f" [label="copy{src=/tools/bazel.rc, dest=/opt/tensorflow/syntaxnet/tools/bazel.rc}" shape="note"];
  "sha256:c57c810eedafe761b846e9d0ef7c2045e28bccab5212d43190725eae36aeb444" [label="copy{src=/tensorflow, dest=/opt/tensorflow/syntaxnet/tensorflow}" shape="note"];
  "sha256:71a78c3b4c5891f7e5c24de3f3a000f5ad5801c7289d248f265918680dfddca0" [label="/bin/sh -c cd $SYNTAXNETDIR/syntaxnet/tensorflow     && tensorflow/tools/ci_build/builds/configured CPU     && cd $SYNTAXNETDIR/syntaxnet     && bazel build -c opt @org_tensorflow//tensorflow:tensorflow_py" shape="box"];
  "sha256:50088e07799cb3b014fb13ddb4a668b01b75203128551b69d0ed93494fcef610" [label="mkdir{path=/opt/tensorflow/syntaxnet}" shape="note"];
  "sha256:ce51e2dccb6d374e24153d1743520d8388f9bd1955af0fadc5f33751bcf91ab1" [label="copy{src=/dragnn, dest=/opt/tensorflow/syntaxnet/dragnn}" shape="note"];
  "sha256:52100ff39f770a8e78962f17d026d4312f4d25752de8d4d37c9a94c13bd40035" [label="copy{src=/syntaxnet, dest=/opt/tensorflow/syntaxnet/syntaxnet}" shape="note"];
  "sha256:bc1b0a7a34d198fa31ea4cd44595e7aec2760a75d3c4cbd71f7778691077cab4" [label="copy{src=/third_party, dest=/opt/tensorflow/syntaxnet/third_party}" shape="note"];
  "sha256:cfc2854c756803d528a634445db3e0b263992d3c1cce5a524b80dd157d2a798a" [label="copy{src=/util/utf8, dest=/opt/tensorflow/syntaxnet/util/utf8}" shape="note"];
  "sha256:8909ca1bfcc02b0e8824a4c4b463fa1922eb4d783dbbea0b8bce27cbd5b8c6c8" [label="/bin/sh -c bazel build -c opt //dragnn/python:all //dragnn/tools:all" shape="box"];
  "sha256:b4d895f7bc095a94fcb0f472bcc06e72b1009ecca9499099fabc9006cb0eb0e0" [label="copy{src=/tensorflow/tensorflow/tools/docker/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:5d4377737c2f97e1c0ea7d4611ea65addff461e55622a0d3a160b6a3531d0dc6" [label="copy{src=/examples, dest=/opt/tensorflow/syntaxnet/examples}" shape="note"];
  "sha256:fd91229b6a1fdf7d94916379a833946df2cdaae01da9b5ab221894a979ff5640" [label="sha256:fd91229b6a1fdf7d94916379a833946df2cdaae01da9b5ab221894a979ff5640" shape="plaintext"];
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" -> "sha256:1c607560eda893dd36d97e11ac7e9035043bbe42c869fbeb0177fa9a35dd0e5e" [label=""];
  "sha256:1c607560eda893dd36d97e11ac7e9035043bbe42c869fbeb0177fa9a35dd0e5e" -> "sha256:ab27519fed79a33653f3ce8cefdf986ad335132b9b52fef8dd31dbcc76a37d9d" [label=""];
  "sha256:ab27519fed79a33653f3ce8cefdf986ad335132b9b52fef8dd31dbcc76a37d9d" -> "sha256:bcc37bdae58dd88b61cf12bef8a0a247ca96610daacbe78e29b500fb63f0d0ea" [label=""];
  "sha256:bcc37bdae58dd88b61cf12bef8a0a247ca96610daacbe78e29b500fb63f0d0ea" -> "sha256:4f2dec564e6909cdc68017096432862c30e6dde0c4f344ece315d908dc5d8df2" [label=""];
  "sha256:4f2dec564e6909cdc68017096432862c30e6dde0c4f344ece315d908dc5d8df2" -> "sha256:02368c1285421bdd940ac5db8f5a04b532d8da19e21bc0c608f830e66df0611f" [label=""];
  "sha256:0ffec8e6102b1f7a9d0d1a174e998f9e5253d927f1f6b57652005ca76d510634" -> "sha256:02368c1285421bdd940ac5db8f5a04b532d8da19e21bc0c608f830e66df0611f" [label=""];
  "sha256:02368c1285421bdd940ac5db8f5a04b532d8da19e21bc0c608f830e66df0611f" -> "sha256:e0a9ae2cefefff74f5242ba3d3be6952e4335b29dfb40abdd3ae9d2db97ff94f" [label=""];
  "sha256:0ffec8e6102b1f7a9d0d1a174e998f9e5253d927f1f6b57652005ca76d510634" -> "sha256:e0a9ae2cefefff74f5242ba3d3be6952e4335b29dfb40abdd3ae9d2db97ff94f" [label=""];
  "sha256:e0a9ae2cefefff74f5242ba3d3be6952e4335b29dfb40abdd3ae9d2db97ff94f" -> "sha256:c57c810eedafe761b846e9d0ef7c2045e28bccab5212d43190725eae36aeb444" [label=""];
  "sha256:0ffec8e6102b1f7a9d0d1a174e998f9e5253d927f1f6b57652005ca76d510634" -> "sha256:c57c810eedafe761b846e9d0ef7c2045e28bccab5212d43190725eae36aeb444" [label=""];
  "sha256:c57c810eedafe761b846e9d0ef7c2045e28bccab5212d43190725eae36aeb444" -> "sha256:71a78c3b4c5891f7e5c24de3f3a000f5ad5801c7289d248f265918680dfddca0" [label=""];
  "sha256:71a78c3b4c5891f7e5c24de3f3a000f5ad5801c7289d248f265918680dfddca0" -> "sha256:50088e07799cb3b014fb13ddb4a668b01b75203128551b69d0ed93494fcef610" [label=""];
  "sha256:50088e07799cb3b014fb13ddb4a668b01b75203128551b69d0ed93494fcef610" -> "sha256:ce51e2dccb6d374e24153d1743520d8388f9bd1955af0fadc5f33751bcf91ab1" [label=""];
  "sha256:0ffec8e6102b1f7a9d0d1a174e998f9e5253d927f1f6b57652005ca76d510634" -> "sha256:ce51e2dccb6d374e24153d1743520d8388f9bd1955af0fadc5f33751bcf91ab1" [label=""];
  "sha256:ce51e2dccb6d374e24153d1743520d8388f9bd1955af0fadc5f33751bcf91ab1" -> "sha256:52100ff39f770a8e78962f17d026d4312f4d25752de8d4d37c9a94c13bd40035" [label=""];
  "sha256:0ffec8e6102b1f7a9d0d1a174e998f9e5253d927f1f6b57652005ca76d510634" -> "sha256:52100ff39f770a8e78962f17d026d4312f4d25752de8d4d37c9a94c13bd40035" [label=""];
  "sha256:52100ff39f770a8e78962f17d026d4312f4d25752de8d4d37c9a94c13bd40035" -> "sha256:bc1b0a7a34d198fa31ea4cd44595e7aec2760a75d3c4cbd71f7778691077cab4" [label=""];
  "sha256:0ffec8e6102b1f7a9d0d1a174e998f9e5253d927f1f6b57652005ca76d510634" -> "sha256:bc1b0a7a34d198fa31ea4cd44595e7aec2760a75d3c4cbd71f7778691077cab4" [label=""];
  "sha256:bc1b0a7a34d198fa31ea4cd44595e7aec2760a75d3c4cbd71f7778691077cab4" -> "sha256:cfc2854c756803d528a634445db3e0b263992d3c1cce5a524b80dd157d2a798a" [label=""];
  "sha256:0ffec8e6102b1f7a9d0d1a174e998f9e5253d927f1f6b57652005ca76d510634" -> "sha256:cfc2854c756803d528a634445db3e0b263992d3c1cce5a524b80dd157d2a798a" [label=""];
  "sha256:cfc2854c756803d528a634445db3e0b263992d3c1cce5a524b80dd157d2a798a" -> "sha256:8909ca1bfcc02b0e8824a4c4b463fa1922eb4d783dbbea0b8bce27cbd5b8c6c8" [label=""];
  "sha256:8909ca1bfcc02b0e8824a4c4b463fa1922eb4d783dbbea0b8bce27cbd5b8c6c8" -> "sha256:b4d895f7bc095a94fcb0f472bcc06e72b1009ecca9499099fabc9006cb0eb0e0" [label=""];
  "sha256:0ffec8e6102b1f7a9d0d1a174e998f9e5253d927f1f6b57652005ca76d510634" -> "sha256:b4d895f7bc095a94fcb0f472bcc06e72b1009ecca9499099fabc9006cb0eb0e0" [label=""];
  "sha256:b4d895f7bc095a94fcb0f472bcc06e72b1009ecca9499099fabc9006cb0eb0e0" -> "sha256:5d4377737c2f97e1c0ea7d4611ea65addff461e55622a0d3a160b6a3531d0dc6" [label=""];
  "sha256:0ffec8e6102b1f7a9d0d1a174e998f9e5253d927f1f6b57652005ca76d510634" -> "sha256:5d4377737c2f97e1c0ea7d4611ea65addff461e55622a0d3a160b6a3531d0dc6" [label=""];
  "sha256:5d4377737c2f97e1c0ea7d4611ea65addff461e55622a0d3a160b6a3531d0dc6" -> "sha256:fd91229b6a1fdf7d94916379a833946df2cdaae01da9b5ab221894a979ff5640" [label=""];
}

