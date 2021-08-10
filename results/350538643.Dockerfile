[app/sources/350538643.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:aa3f1f409f3f9f96b28d771f2de646bc250ab52844cd022da912b418d8fbd9d7" [label="local://context" shape="ellipse"];
  "sha256:e6c9735df1d8ff49589181793d183c1ad96e009cde24181309ee29e6f12fc601" [label="copy{src=/imagefiles/build-and-install-git.sh, dest=/imagefiles/},copy{src=/imagefiles/build-and-install-python.sh, dest=/imagefiles/},copy{src=/imagefiles/install-cmake-binary.sh, dest=/imagefiles/},copy{src=/imagefiles/install-gosu-binary-wrapper.sh, dest=/imagefiles/},copy{src=/imagefiles/install-ninja-binary.sh, dest=/imagefiles/}" shape="note"];
  "sha256:d83b6bfb83af40195ba019b0018a04939af8c1008420d876eac6933a7f5022d1" [label="/bin/sh -c apt-get update &&     (LANG=C LANGUAGE=C LC_ALL=C apt-get install -y locales) &&   locale-gen ${LANG%.*} ${LANG} &&     apt-get -y upgrade &&   apt-get update &&   apt-get install -y     build-essential     curl     gosu     openssh-client     pkg-config     unzip   &&   apt-get install -y     gettext     libssl-dev     libcurl4-gnutls-dev     libexpat1-dev     zlib1g-dev   &&   /imagefiles/install-cmake-binary.sh &&   /imagefiles/install-gosu-binary-wrapper.sh &&   /imagefiles/install-ninja-binary.sh &&   /imagefiles/build-and-install-git.sh &&   /imagefiles/build-and-install-python.sh &&   rm -rf /imagefiles &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e25c7473346f4020950802f642089b029e354017da3c57dcb7ba8232579e8b92" [label="mkdir{path=/work}" shape="note"];
  "sha256:08c7594a867450956b641a361262824f36d4bb62ed832aea6fc7f7e034998aa0" [label="copy{src=/imagefiles/entrypoint.sh, dest=/dockcross/},copy{src=/imagefiles/dockcross, dest=/dockcross/}" shape="note"];
  "sha256:706dc1db2a69741b5ca30f828ba710744c4d55416f850880d59dc57d00dd44c3" [label="sha256:706dc1db2a69741b5ca30f828ba710744c4d55416f850880d59dc57d00dd44c3" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:e6c9735df1d8ff49589181793d183c1ad96e009cde24181309ee29e6f12fc601" [label=""];
  "sha256:aa3f1f409f3f9f96b28d771f2de646bc250ab52844cd022da912b418d8fbd9d7" -> "sha256:e6c9735df1d8ff49589181793d183c1ad96e009cde24181309ee29e6f12fc601" [label=""];
  "sha256:e6c9735df1d8ff49589181793d183c1ad96e009cde24181309ee29e6f12fc601" -> "sha256:d83b6bfb83af40195ba019b0018a04939af8c1008420d876eac6933a7f5022d1" [label=""];
  "sha256:d83b6bfb83af40195ba019b0018a04939af8c1008420d876eac6933a7f5022d1" -> "sha256:e25c7473346f4020950802f642089b029e354017da3c57dcb7ba8232579e8b92" [label=""];
  "sha256:e25c7473346f4020950802f642089b029e354017da3c57dcb7ba8232579e8b92" -> "sha256:08c7594a867450956b641a361262824f36d4bb62ed832aea6fc7f7e034998aa0" [label=""];
  "sha256:aa3f1f409f3f9f96b28d771f2de646bc250ab52844cd022da912b418d8fbd9d7" -> "sha256:08c7594a867450956b641a361262824f36d4bb62ed832aea6fc7f7e034998aa0" [label=""];
  "sha256:08c7594a867450956b641a361262824f36d4bb62ed832aea6fc7f7e034998aa0" -> "sha256:706dc1db2a69741b5ca30f828ba710744c4d55416f850880d59dc57d00dd44c3" [label=""];
}

