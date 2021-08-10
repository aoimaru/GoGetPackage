[app/sources/264922189.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:34fb254d1f6fc76a21f99ee75acaa0a95700ba8f31e375c9b0a6806ac7a94964" [label="/bin/sh -c apt-get update     && apt-get install -y     python3     python3-pip     python2.7     autoconf     automake     cmake     curl     g++     git     graphviz     libatlas3-base     libtool     make     pkg-config     subversion     unzip     wget     zlib1g-dev" shape="box"];
  "sha256:9ef7ef1a4212b8ed709773c92ec8201c57a1f7ea5a9eb44c1bc29e6c2ac91df9" [label="/bin/sh -c ln -s /usr/bin/python3 /usr/bin/python     && ln -s /usr/bin/pip3 /usr/bin/pip" shape="box"];
  "sha256:ddefe3f768d891086b18c4d594c6fd8148af3743a834179c9a5036ed37e4aea5" [label="/bin/sh -c pip install --upgrade pip     numpy     setuptools     pyparsing     jupyter     ninja" shape="box"];
  "sha256:1a7c5d4223818cf2aa98cd07c70b3d9a0b8f7fe623d6d0d62f7c760bbe8992ce" [label="local://context" shape="ellipse"];
  "sha256:80832bda2653f382ca1c9c72eb41a71e3f2dc6b5a7fda8509d6d36c0ea399343" [label="copy{src=/, dest=/pykaldi}" shape="note"];
  "sha256:ab9e63feac8070def501a91552ccc18ea5db42c69bae9a2914afc4527333ef81" [label="/bin/sh -c cd /pykaldi/tools     && ./check_dependencies.sh     && ./install_protobuf.sh     && ./install_clif.sh     && ./install_kaldi.sh     && cd ..     && python setup.py install" shape="box"];
  "sha256:eaf6adb2b98a9766abf468451204e3fbe5e2e1f63eff48025ade651ab9b01269" [label="sha256:eaf6adb2b98a9766abf468451204e3fbe5e2e1f63eff48025ade651ab9b01269" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:34fb254d1f6fc76a21f99ee75acaa0a95700ba8f31e375c9b0a6806ac7a94964" [label=""];
  "sha256:34fb254d1f6fc76a21f99ee75acaa0a95700ba8f31e375c9b0a6806ac7a94964" -> "sha256:9ef7ef1a4212b8ed709773c92ec8201c57a1f7ea5a9eb44c1bc29e6c2ac91df9" [label=""];
  "sha256:9ef7ef1a4212b8ed709773c92ec8201c57a1f7ea5a9eb44c1bc29e6c2ac91df9" -> "sha256:ddefe3f768d891086b18c4d594c6fd8148af3743a834179c9a5036ed37e4aea5" [label=""];
  "sha256:ddefe3f768d891086b18c4d594c6fd8148af3743a834179c9a5036ed37e4aea5" -> "sha256:80832bda2653f382ca1c9c72eb41a71e3f2dc6b5a7fda8509d6d36c0ea399343" [label=""];
  "sha256:1a7c5d4223818cf2aa98cd07c70b3d9a0b8f7fe623d6d0d62f7c760bbe8992ce" -> "sha256:80832bda2653f382ca1c9c72eb41a71e3f2dc6b5a7fda8509d6d36c0ea399343" [label=""];
  "sha256:80832bda2653f382ca1c9c72eb41a71e3f2dc6b5a7fda8509d6d36c0ea399343" -> "sha256:ab9e63feac8070def501a91552ccc18ea5db42c69bae9a2914afc4527333ef81" [label=""];
  "sha256:ab9e63feac8070def501a91552ccc18ea5db42c69bae9a2914afc4527333ef81" -> "sha256:eaf6adb2b98a9766abf468451204e3fbe5e2e1f63eff48025ade651ab9b01269" [label=""];
}

