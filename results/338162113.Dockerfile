[app/sources/338162113.Dockerfile]
digraph {
  "sha256:a622b98169ee380d13214e17184c78a117123d17873400a3554105b21fc9d397" [label="docker-image://docker.io/library/python:2-slim" shape="ellipse"];
  "sha256:bf8e5193a4b3fb8a255d550aa742262d4de0d3bb7487baa30be975da425f58a8" [label="/bin/sh -c groupadd -r snuba && useradd -r -g snuba snuba" shape="box"];
  "sha256:dfbb70f713bd6016b18f9b0e72762d51797cc034bd7cf4051249729a4b92c150" [label="/bin/sh -c mkdir -p /usr/src/snuba" shape="box"];
  "sha256:27093a79189e008d75001e99cf4cdfdb5f3d15be818d7dacd3fe5288a9f0aa3c" [label="mkdir{path=/usr/src/snuba}" shape="note"];
  "sha256:2d478fc89615ddee9ea71e81a0add2664df5352cbff4e8d792847cca9696042a" [label="/bin/sh -c set -ex;     apt-get update;     apt-get install --no-install-recommends -y         libexpat1         libffi6         liblz4-1         libpcre3     ;     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7e427c5e7c170b870004c0296f0865ac46e634f7f0a0043ea8bdd589a99989db" [label="/bin/sh -c set -ex;         LIBRDKAFKA_VERSION=0.11.5;     buildDeps='         bzip2         dirmngr         git         g++         gcc         libc6-dev         liblz4-dev         libpcre3-dev         gnupg         make         wget     ';     apt-get update;     apt-get install -y --no-install-recommends libexpat1 libffi6 liblz4-1 libpcre3 $buildDeps;     rm -rf /var/lib/apt/lists/*;         wget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)\";     wget -O /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc\";     export GNUPGHOME=\"$(mktemp -d)\";     for key in       B42F6819007F00F88E364FD4036A9C25BF357DD4     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;     done;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -rf \"$GNUPGHOME\" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         mkdir -p /usr/src/librdkafka;     cd /usr/src/librdkafka;     wget -O v${LIBRDKAFKA_VERSION}.tar.gz https://github.com/edenhill/librdkafka/archive/v${LIBRDKAFKA_VERSION}.tar.gz;     tar xf v${LIBRDKAFKA_VERSION}.tar.gz --strip-components=1;     ./configure --prefix=/usr;     make;     PREFIX=/usr make install;     rm -r /usr/src/librdkafka;         cd ;     wget https://bitbucket.org/pypy/pypy/downloads/pypy2-v6.0.0-linux64.tar.bz2;     [ \"$(sha256sum pypy2-v6.0.0-linux64.tar.bz2)\" = '6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67  pypy2-v6.0.0-linux64.tar.bz2' ];     tar xf pypy2-v6.0.0-linux64.tar.bz2;     rm -rf pypy2-v6.0.0-linux64.tar.bz2;     mv pypy2-v6.0.0-linux64 /pypy;     wget http://security.debian.org/debian-security/pool/updates/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u11_amd64.deb;     DEBIAN_FRONTEND=noninteractive dpkg -i libssl1.0.0_1.0.1t-1+deb8u11_amd64.deb;     rm -rf libssl1.0.0_1.0.1t-1+deb8u11_amd64.deb;     wget https://bootstrap.pypa.io/get-pip.py;     /pypy/bin/pypy get-pip.py;     rm -rf get-pip.py;         apt-get purge -y --auto-remove $buildDeps" shape="box"];
  "sha256:a722d87f2cd48fe5d3734da247d88e420c964a0afc630b0596722bb38acded2f" [label="local://context" shape="ellipse"];
  "sha256:8bd9494bf055cb9111c6d7ad316e3a7dba378fea202f8c8c1320533259588610" [label="copy{src=/snuba, dest=/usr/src/snuba/snuba/}" shape="note"];
  "sha256:70fdaf864a842ab326154e1ca9c82534b6fe6037486ab75bde314100440cc697" [label="copy{src=/setup.py, dest=/usr/src/snuba/},copy{src=/Makefile, dest=/usr/src/snuba/},copy{src=/README.md, dest=/usr/src/snuba/},copy{src=/MANIFEST.in, dest=/usr/src/snuba/}" shape="note"];
  "sha256:1249a32b25a17ffa7cf60e06255f97279306a537fbafd6871ac93183d7ac6fb6" [label="/bin/sh -c chown -R snuba:snuba /usr/src/snuba/" shape="box"];
  "sha256:3c3ebcf1ada512b0c0e7fa84cc2ed66685802076ea737d69df2f685fc731687a" [label="/bin/sh -c set -ex;         buildDeps='         git         gcc         libc6-dev         liblz4-dev         libpcre3-dev         make     ';     apt-get update;     apt-get install -y $buildDeps --no-install-recommends;     rm -rf /var/lib/apt/lists/*;         make install-python-dependencies;     snuba --help;     PATH=/pypy/bin:$PATH make install-python-dependencies;     /pypy/bin/snuba --help;         rm -rf ~/.cache/pip;     apt-get purge -y --auto-remove $buildDeps" shape="box"];
  "sha256:e257bb787c41092674106da78a75e5fbb87847a2b6c8028e2b0e377751145a35" [label="copy{src=/docker_entrypoint.sh, dest=/usr/src/snuba/}" shape="note"];
  "sha256:3a1740679ed1df33c14043e34e65ebfcfa3cc8404eb6cffba17ea83e4d1a7efe" [label="sha256:3a1740679ed1df33c14043e34e65ebfcfa3cc8404eb6cffba17ea83e4d1a7efe" shape="plaintext"];
  "sha256:a622b98169ee380d13214e17184c78a117123d17873400a3554105b21fc9d397" -> "sha256:bf8e5193a4b3fb8a255d550aa742262d4de0d3bb7487baa30be975da425f58a8" [label=""];
  "sha256:bf8e5193a4b3fb8a255d550aa742262d4de0d3bb7487baa30be975da425f58a8" -> "sha256:dfbb70f713bd6016b18f9b0e72762d51797cc034bd7cf4051249729a4b92c150" [label=""];
  "sha256:dfbb70f713bd6016b18f9b0e72762d51797cc034bd7cf4051249729a4b92c150" -> "sha256:27093a79189e008d75001e99cf4cdfdb5f3d15be818d7dacd3fe5288a9f0aa3c" [label=""];
  "sha256:27093a79189e008d75001e99cf4cdfdb5f3d15be818d7dacd3fe5288a9f0aa3c" -> "sha256:2d478fc89615ddee9ea71e81a0add2664df5352cbff4e8d792847cca9696042a" [label=""];
  "sha256:2d478fc89615ddee9ea71e81a0add2664df5352cbff4e8d792847cca9696042a" -> "sha256:7e427c5e7c170b870004c0296f0865ac46e634f7f0a0043ea8bdd589a99989db" [label=""];
  "sha256:7e427c5e7c170b870004c0296f0865ac46e634f7f0a0043ea8bdd589a99989db" -> "sha256:8bd9494bf055cb9111c6d7ad316e3a7dba378fea202f8c8c1320533259588610" [label=""];
  "sha256:a722d87f2cd48fe5d3734da247d88e420c964a0afc630b0596722bb38acded2f" -> "sha256:8bd9494bf055cb9111c6d7ad316e3a7dba378fea202f8c8c1320533259588610" [label=""];
  "sha256:8bd9494bf055cb9111c6d7ad316e3a7dba378fea202f8c8c1320533259588610" -> "sha256:70fdaf864a842ab326154e1ca9c82534b6fe6037486ab75bde314100440cc697" [label=""];
  "sha256:a722d87f2cd48fe5d3734da247d88e420c964a0afc630b0596722bb38acded2f" -> "sha256:70fdaf864a842ab326154e1ca9c82534b6fe6037486ab75bde314100440cc697" [label=""];
  "sha256:70fdaf864a842ab326154e1ca9c82534b6fe6037486ab75bde314100440cc697" -> "sha256:1249a32b25a17ffa7cf60e06255f97279306a537fbafd6871ac93183d7ac6fb6" [label=""];
  "sha256:1249a32b25a17ffa7cf60e06255f97279306a537fbafd6871ac93183d7ac6fb6" -> "sha256:3c3ebcf1ada512b0c0e7fa84cc2ed66685802076ea737d69df2f685fc731687a" [label=""];
  "sha256:3c3ebcf1ada512b0c0e7fa84cc2ed66685802076ea737d69df2f685fc731687a" -> "sha256:e257bb787c41092674106da78a75e5fbb87847a2b6c8028e2b0e377751145a35" [label=""];
  "sha256:a722d87f2cd48fe5d3734da247d88e420c964a0afc630b0596722bb38acded2f" -> "sha256:e257bb787c41092674106da78a75e5fbb87847a2b6c8028e2b0e377751145a35" [label=""];
  "sha256:e257bb787c41092674106da78a75e5fbb87847a2b6c8028e2b0e377751145a35" -> "sha256:3a1740679ed1df33c14043e34e65ebfcfa3cc8404eb6cffba17ea83e4d1a7efe" [label=""];
}

