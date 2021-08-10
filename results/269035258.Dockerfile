[app/sources/269035258.Dockerfile]
digraph {
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" [label="docker-image://docker.io/library/centos:7.4.1708" shape="ellipse"];
  "sha256:a8ec864ae7f8148b1da3ab588863111dd7cfce54f4ab732d84b9470841f3d191" [label="/bin/sh -c yum -y install epel-release &&   yum -y install     bzip2-devel     cmake     cmake3     git     libcurl-devel     openssl-devel     R     vim     wget" shape="box"];
  "sha256:82ed3a591dfafff190a714d5aff43792985fad1636808cfeff11f2511de4a105" [label="/bin/sh -c cd /root &&   wget https://github.com/jgm/pandoc/releases/download/2.1.3/pandoc-2.1.3-linux.tar.gz &&   tar xvzf pandoc-2.1.3-linux.tar.gz --strip-components 1 -C /usr/local/ &&   git clone git://github.com/pezmaster31/bamtools.git &&   mkdir bamtools/build &&   cd bamtools/build &&   cmake3 .. && make && make install" shape="box"];
  "sha256:f708798cdb122a1c9b8f1027d3c452687bb778c9a4762b4cafdb3d2371c0a9f8" [label="/bin/sh -c useradd -m user" shape="box"];
  "sha256:c62bca2ea2fd98c46db74630d92a514688264478fd248e38eab3620b5bef9b06" [label="mkdir{path=/home/user}" shape="note"];
  "sha256:83d60abe64ea18e366edc1ecb747d4ace798e15337094b7b86ff0cc6122220a8" [label="/bin/sh -c mkdir ~/local &&   wget http://sourceforge.net/projects/boost/files/boost/1.60.0/boost_1_60_0.tar.gz &&   tar -xvzf boost_1_60_0.tar.gz &&   cd boost_1_60_0 &&   ./bootstrap.sh --with-libraries=filesystem,iostreams,log,system,thread,test &&   ./b2 cxxflags=-std=c++11 link=shared threading=multi install --prefix=/home/user/local" shape="box"];
  "sha256:712c408819ea99ee048fecded22f15f4e4d4c58cc0ecfe6ac5b00dc04b18b558" [label="/bin/sh -c cd &&   git clone https://github.com/hms-dbmi/dropEst.git &&   R -e 'dir.create(Sys.getenv(\"R_LIBS_USER\"), recursive=T)' &&   R -e 'chooseCRANmirror(ind=52); install.packages(c(\"devtools\", \"RcppProgress\", \"Rcpp\",\"RcppEigen\", \"RInside\", \"Matrix\", \"optparse\", \"rmarkdown\"))' &&   R -e 'devtools::install_local(\"~/dropEst/dropestr/\", dependencies=T)' &&   R -e 'chooseCRANmirror(ind=52); install.packages(\"ks\", dependencies=c(\"Depends\", \"Imports\", \"LinkingTo\"))'" shape="box"];
  "sha256:915d384c20839a159be923bae8bffe0ef53ce225e8f261f6c37e1bc601a03a1f" [label="/bin/sh -c mkdir dropEst/build &&   cd dropEst/build &&   cmake -D BOOST_ROOT=~/local/ .. &&   make" shape="box"];
  "sha256:3ae7daaff123c1c149408302f5e0d69e7eaddec2b794218bd50e0719b9899876" [label="sha256:3ae7daaff123c1c149408302f5e0d69e7eaddec2b794218bd50e0719b9899876" shape="plaintext"];
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" -> "sha256:a8ec864ae7f8148b1da3ab588863111dd7cfce54f4ab732d84b9470841f3d191" [label=""];
  "sha256:a8ec864ae7f8148b1da3ab588863111dd7cfce54f4ab732d84b9470841f3d191" -> "sha256:82ed3a591dfafff190a714d5aff43792985fad1636808cfeff11f2511de4a105" [label=""];
  "sha256:82ed3a591dfafff190a714d5aff43792985fad1636808cfeff11f2511de4a105" -> "sha256:f708798cdb122a1c9b8f1027d3c452687bb778c9a4762b4cafdb3d2371c0a9f8" [label=""];
  "sha256:f708798cdb122a1c9b8f1027d3c452687bb778c9a4762b4cafdb3d2371c0a9f8" -> "sha256:c62bca2ea2fd98c46db74630d92a514688264478fd248e38eab3620b5bef9b06" [label=""];
  "sha256:c62bca2ea2fd98c46db74630d92a514688264478fd248e38eab3620b5bef9b06" -> "sha256:83d60abe64ea18e366edc1ecb747d4ace798e15337094b7b86ff0cc6122220a8" [label=""];
  "sha256:83d60abe64ea18e366edc1ecb747d4ace798e15337094b7b86ff0cc6122220a8" -> "sha256:712c408819ea99ee048fecded22f15f4e4d4c58cc0ecfe6ac5b00dc04b18b558" [label=""];
  "sha256:712c408819ea99ee048fecded22f15f4e4d4c58cc0ecfe6ac5b00dc04b18b558" -> "sha256:915d384c20839a159be923bae8bffe0ef53ce225e8f261f6c37e1bc601a03a1f" [label=""];
  "sha256:915d384c20839a159be923bae8bffe0ef53ce225e8f261f6c37e1bc601a03a1f" -> "sha256:3ae7daaff123c1c149408302f5e0d69e7eaddec2b794218bd50e0719b9899876" [label=""];
}

