[app/sources/210068749.Dockerfile]
digraph {
  "sha256:4e5799d06544dc2df0502aa6db42ecf7e52523f630e6b803dbe3d5b8e35ed7f9" [label="docker-image://docker.io/tensorflow/tensorflow:1.5.0-py3" shape="ellipse"];
  "sha256:882def8f8d654748f0ee6d07ac3beef9b719ab92ae2b7cb9a3a82c45531144c0" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/' /etc/apt/sources.list" shape="box"];
  "sha256:f3eb7d344065d36177602ad691b935a392294e7911547b8ea5f73ab2f6d99726" [label="local://context" shape="ellipse"];
  "sha256:fd4bd357af6cff7deb6f1ad05486d4a9dada04c473aac98587254536973dc8d8" [label="copy{src=/pip.conf, dest=/root/.pip/pip.conf}" shape="note"];
  "sha256:36356b4232fb4444d7c571e05096545d2c28b991116c0a97bfbeeb8ba04b03b8" [label="sha256:36356b4232fb4444d7c571e05096545d2c28b991116c0a97bfbeeb8ba04b03b8" shape="plaintext"];
  "sha256:4e5799d06544dc2df0502aa6db42ecf7e52523f630e6b803dbe3d5b8e35ed7f9" -> "sha256:882def8f8d654748f0ee6d07ac3beef9b719ab92ae2b7cb9a3a82c45531144c0" [label=""];
  "sha256:882def8f8d654748f0ee6d07ac3beef9b719ab92ae2b7cb9a3a82c45531144c0" -> "sha256:fd4bd357af6cff7deb6f1ad05486d4a9dada04c473aac98587254536973dc8d8" [label=""];
  "sha256:f3eb7d344065d36177602ad691b935a392294e7911547b8ea5f73ab2f6d99726" -> "sha256:fd4bd357af6cff7deb6f1ad05486d4a9dada04c473aac98587254536973dc8d8" [label=""];
  "sha256:fd4bd357af6cff7deb6f1ad05486d4a9dada04c473aac98587254536973dc8d8" -> "sha256:36356b4232fb4444d7c571e05096545d2c28b991116c0a97bfbeeb8ba04b03b8" [label=""];
}

