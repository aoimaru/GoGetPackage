[app/sources/164016863.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:c72f3ed7e1e54e2ae5a78eee12de1fa180e40d903d9a5af2fa1cf09a3d78e405" [label="/bin/sh -c apt-get update && apt-get install -y   autoconf   autotools-dev   build-essential   bzip2   ccache   curl   gcc   git   libc6   libc6-dbg   libc6-dev   libgtest-dev   libtool   make   parallel   time   wget   && apt-get clean" shape="box"];
  "sha256:56f9085324d62b37dae7c21529529ac25df9df1b46bd8e98bc3c911ebad9ee69" [label="/bin/sh -c gpg --keyserver hkp://keys.gnupg.net --recv-keys     409B6B1796C275462A1703113804BB82D39DC0E3     7D2BAF1CF37B13E2069D6956105BD0E739499BDB" shape="box"];
  "sha256:fbee9f876a589ab872dc3db0b4d67d3588a45797d73f3decf471b22301ba451b" [label="/bin/sh -c \\curl -sSL https://get.rvm.io | bash -s stable" shape="box"];
  "sha256:0c5c2f63a18ca171705004467b1de01ece0e62fc7eb9588e960773560238396e" [label="/bin/sh -c /bin/bash -l -c \"rvm install 2.3.8\"" shape="box"];
  "sha256:9967cbeae71aa6003a49adfe086f24c516c76c0ca545ddf4c838512380ff3740" [label="/bin/sh -c /bin/bash -l -c \"rvm install 2.4.5\"" shape="box"];
  "sha256:81493aa359453a0ccda432667612f302ebb6e0be6509e17b40b92aaa30c0bdd2" [label="/bin/sh -c /bin/bash -l -c \"rvm install 2.5.1\"" shape="box"];
  "sha256:1d3dd3ec9d3561cee59236baaa3465f24435e53205444be67f90103a97f363f1" [label="/bin/sh -c /bin/bash -l -c \"rvm install 2.6.0\"" shape="box"];
  "sha256:b074ae766dc2bf8b5fe7fc49f2514c0b21b1fc6d73d7a33639ca11fcea9e5e8f" [label="/bin/sh -c /bin/bash -l -c \"echo 'gem: --no-ri --no-rdoc' > ~/.gemrc\"" shape="box"];
  "sha256:21f99b25c1b319866414d333f154b5f0af8c66a1228b075ff7ba6ee2b47cd9a9" [label="/bin/sh -c /bin/bash -l -c \"echo 'export PATH=/usr/local/rvm/bin:$PATH' >> ~/.bashrc\"" shape="box"];
  "sha256:e4db72687657c078bb73fde4dcdeb46dccc6bf879181d74f2cebeac0171c21a8" [label="sha256:e4db72687657c078bb73fde4dcdeb46dccc6bf879181d74f2cebeac0171c21a8" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:c72f3ed7e1e54e2ae5a78eee12de1fa180e40d903d9a5af2fa1cf09a3d78e405" [label=""];
  "sha256:c72f3ed7e1e54e2ae5a78eee12de1fa180e40d903d9a5af2fa1cf09a3d78e405" -> "sha256:56f9085324d62b37dae7c21529529ac25df9df1b46bd8e98bc3c911ebad9ee69" [label=""];
  "sha256:56f9085324d62b37dae7c21529529ac25df9df1b46bd8e98bc3c911ebad9ee69" -> "sha256:fbee9f876a589ab872dc3db0b4d67d3588a45797d73f3decf471b22301ba451b" [label=""];
  "sha256:fbee9f876a589ab872dc3db0b4d67d3588a45797d73f3decf471b22301ba451b" -> "sha256:0c5c2f63a18ca171705004467b1de01ece0e62fc7eb9588e960773560238396e" [label=""];
  "sha256:0c5c2f63a18ca171705004467b1de01ece0e62fc7eb9588e960773560238396e" -> "sha256:9967cbeae71aa6003a49adfe086f24c516c76c0ca545ddf4c838512380ff3740" [label=""];
  "sha256:9967cbeae71aa6003a49adfe086f24c516c76c0ca545ddf4c838512380ff3740" -> "sha256:81493aa359453a0ccda432667612f302ebb6e0be6509e17b40b92aaa30c0bdd2" [label=""];
  "sha256:81493aa359453a0ccda432667612f302ebb6e0be6509e17b40b92aaa30c0bdd2" -> "sha256:1d3dd3ec9d3561cee59236baaa3465f24435e53205444be67f90103a97f363f1" [label=""];
  "sha256:1d3dd3ec9d3561cee59236baaa3465f24435e53205444be67f90103a97f363f1" -> "sha256:b074ae766dc2bf8b5fe7fc49f2514c0b21b1fc6d73d7a33639ca11fcea9e5e8f" [label=""];
  "sha256:b074ae766dc2bf8b5fe7fc49f2514c0b21b1fc6d73d7a33639ca11fcea9e5e8f" -> "sha256:21f99b25c1b319866414d333f154b5f0af8c66a1228b075ff7ba6ee2b47cd9a9" [label=""];
  "sha256:21f99b25c1b319866414d333f154b5f0af8c66a1228b075ff7ba6ee2b47cd9a9" -> "sha256:e4db72687657c078bb73fde4dcdeb46dccc6bf879181d74f2cebeac0171c21a8" [label=""];
}

