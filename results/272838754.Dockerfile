[app/sources/272838754.Dockerfile]
digraph {
  "sha256:a1e4d4739a356c44842652818db166340b5d2f978f1b177ab0a23adb6f9b5fc8" [label="docker-image://docker.io/library/centos:7.3.1611" shape="ellipse"];
  "sha256:f87b6fead99d0fe098db9fd454a57b7102bb50240a7e3839df1e8cc9e9f1e2ee" [label="/bin/sh -c yum install -y epel-release" shape="box"];
  "sha256:094702ee9cf3caf90b74230f4a90e9ca8cedaea3845b639268a692dce9d4b6ae" [label="/bin/sh -c yum install -y       autoconf       bison       bison-devel       clang       clang-analyzer       cmake3       curl       flex       gcc       gcc-c++       gdb       git       libtool       m4       make       tar       unzip       valgrind       wget &&       ln -s /usr/bin/cmake3 /usr/bin/cmake &&       ln -s /usr/bin/cpack3 /usr/bin/cpack &&       ln -s /usr/bin/ctest3 /usr/bin/ctest" shape="box"];
  "sha256:26ac91ebd19059998d40be3a3cfc8a3d97dc1894c308297c8d2ecbc9a002ee37" [label="/bin/sh -c yum install -y       boost-devel-static       zlib-devel       openssl-devel       libevent-devel &&     cd /usr/lib64 &&     ln -s libboost_thread-mt.a libboost_thread.a" shape="box"];
  "sha256:18d9d6bcc7d27ee77f8bc98439fc3a17c71b76ded4495cd8d2f0816f0ba23be6" [label="/bin/sh -c yum install -y       mono-core       mono-devel       mono-web-devel       mono-extras" shape="box"];
  "sha256:655a2d3b61dd9ec632057fe20a21fc420a29a4cdba75282bda20d84148599256" [label="/bin/sh -c yum install -y http://downloads.dlang.org/releases/2.x/2.076.0/dmd-2.076.0-0.fedora.x86_64.rpm xdg-utils" shape="box"];
  "sha256:cd1573295e5995f39763664b70e2a9a28898241ad0b8e91c16bec12fcf657bf5" [label="/bin/sh -c curl -sSL https://github.com/D-Programming-Deimos/openssl/archive/master.tar.gz| tar xz &&     curl -sSL https://github.com/D-Programming-Deimos/libevent/archive/master.tar.gz| tar xz &&     mkdir -p /usr/include/dmd/druntime/import/deimos /usr/include/dmd/druntime/import/C &&     mv libevent-master/deimos/* openssl-master/deimos/* /usr/include/dmd/druntime/import/deimos/ &&     mv libevent-master/C/* openssl-master/C/* /usr/include/dmd/druntime/import/C/ &&     rm -rf libevent-master openssl-master" shape="box"];
  "sha256:661d1bea195a594c0ad7d3c5931e798cbac998fb6c550a515ae562426d24187f" [label="/bin/sh -c cd /usr/local &&     wget -q https://storage.googleapis.com/dart-archive/channels/stable/release/1.24.2/sdk/dartsdk-linux-x64-release.zip &&     unzip -q dartsdk-linux-x64-release.zip &&     rm dartsdk-linux-x64-release.zip" shape="box"];
  "sha256:177ac45c83694ca9e7a2ab9a012d5bbd5ff0e18ff36658d9bd9bff22bfa19a3f" [label="/bin/sh -c curl -sSL http://packages.erlang-solutions.com/rpm/centos/erlang_solutions.repo -o /etc/yum.repos.d/erlang_solutions.repo &&     yum install -y       erlang-kernel       erlang-erts       erlang-stdlib       erlang-eunit       erlang-rebar       erlang-tools" shape="box"];
  "sha256:0a690b923c13a2f1578eb3282fc26da47765e55f99bfae5f5213274761d0da7d" [label="/bin/sh -c yum install -y glib2-devel" shape="box"];
  "sha256:7a06097286b41c0e110f4d0195f116184757699d6029b5af50808b405d37ecdc" [label="/bin/sh -c curl -sSL https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz | tar -C /usr/local/ -xz" shape="box"];
  "sha256:07ed6bca9fb77c4e3c6214d69f5dfdc68ec74834706c03cef5e023dc668790c9" [label="/bin/sh -c yum -y install haskell-platform" shape="box"];
  "sha256:be2b03ceeecd9d6ea4ac1c19e57be129d429e0f0817cbf9b3a4f0f522c362bdc" [label="/bin/sh -c yum install -y       ant       junit       ant-junit       java-1.8.0-openjdk-devel" shape="box"];
  "sha256:cd17e4a04a0dd32f37a7e1ca3f8db753a7fee279cbf4cb9a84f78f9723d275e9" [label="/bin/sh -c yum install -y readline-devel &&     wget -q http://www.lua.org/ftp/lua-5.3.4.tar.gz &&     tar xzf lua-5.3.4.tar.gz &&     cd lua-5.3.4 &&     sed -i 's/CFLAGS= /CFLAGS= -fPIC /g' src/Makefile &&     make linux &&     make install &&     cd .. &&     rm -rf lua-5*" shape="box"];
  "sha256:497b0c347f45d89d4aac6cc703b15eac00df4fa852f70e3e86200c4cf11f6f4c" [label="/bin/sh -c yum install -y       mingw32-binutils       mingw32-crt       mingw32-nsis" shape="box"];
  "sha256:a4394ef8f3e3ff635cc7bb40436e8a6415605ab530eb0878a8719c3c13e2ec85" [label="/bin/sh -c yum -y install https://opensource.enda.eu/packages/http-parser-2.7.1-3.el7.x86_64.rpm" shape="box"];
  "sha256:b30b79e999078796234e88d383912b90a7109bae97d10411cf2e642e9e12f551" [label="/bin/sh -c yum install -y       nodejs       npm" shape="box"];
  "sha256:f86512341a5e0791833721e4e338774f253d5b3dfed8e2f4305229062e40ad65" [label="/bin/sh -c yum install -y       ocaml       ocaml-ocamldoc &&     wget -q https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh -O - | sh -s /usr/local/bin &&     opam init --yes &&     opam install --yes oasis &&     echo '. /root/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true' >> ~/.bashrc" shape="box"];
  "sha256:1959a9d71cf34d39bf00944f806da745abc13137c8617eb930ca563a8992bcb6" [label="/bin/sh -c yum install -y       perl       perl-version       perl-Bit-Vector       perl-Class-Accessor       perl-ExtUtils-MakeMaker       perl-Test-Simple       perl-IO-Socket-SSL       perl-Net-SSLeay       perl-Crypt-SSLeay" shape="box"];
  "sha256:bc5f4fe3d51fe2d0eda9fe12a15c2ee76cc33f2ab8a09b5b2639fa1b7e714c5c" [label="/bin/sh -c yum install -y       php       php-devel       php-pear       re2c       php-phpunit-PHPUnit       bzip2" shape="box"];
  "sha256:0aff8d9b611ee6c14762d9f278128d1a49bf40c27419635d4f677abc17de3d30" [label="/bin/sh -c yum install -y       python       python-devel       python-pip       python-setuptools       python34       python34-devel       python34-pip       python34-setuptools" shape="box"];
  "sha256:7b0795b718c955047d164b6373360cefd17e20fbdd05f46acdee1c835f6134b2" [label="/bin/sh -c pip2 install --upgrade pip" shape="box"];
  "sha256:14e4fb438e7acc63a2f84a9e93caac98125bbcc9a90cab396c7d1ac71434b1f5" [label="/bin/sh -c pip2 install --upgrade backports.ssl_match_hostname ipaddress setuptools six tornado tornado-testing twisted virtualenv zope-interface" shape="box"];
  "sha256:a9320cad595d8fa3e60fdbe41035ce1fcc24f07101ed452ed963f813fe6617fa" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:31cefea1d9789acd2b967aa3cbec609bfa2f0cf4040a93c282c49f865dfb40c9" [label="/bin/sh -c pip3 install --upgrade backports.ssl_match_hostname ipaddress setuptools six tornado tornado-testing twisted virtualenv zope-interface" shape="box"];
  "sha256:a4506b760120d75b3fb7d9126e52b74e3310ce7d4b3f1db380187aeea0b599fe" [label="/bin/sh -c yum install -y       ruby       ruby-devel       rubygems &&     gem install bundler rake" shape="box"];
  "sha256:8d02d096e1c23c953a108904314ff262471f7b2fa6c33c98e95c087aa57e35ad" [label="/bin/sh -c curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.17.0" shape="box"];
  "sha256:40557c48830b2541dfd55f36ed8c8bfb3ad166ab9d010979d234aa36c0ac7af2" [label="/bin/sh -c rm -rf /tmp/* &&     yum clean all" shape="box"];
  "sha256:79b9ebd62ff1029ac05c8312cf3ac2cf8d2e3ba458d07c3c9e45e40cbbd2e5b9" [label="/bin/sh -c mkdir -p $THRIFT_ROOT/src" shape="box"];
  "sha256:ce7810f9c11acc1c226e6931f7c512038bc3a640315db58ea3bf154d347fa3c7" [label="local://context" shape="ellipse"];
  "sha256:b6dfe9a04eaef8ba45cc37837c464a8d6b17962b8a33a9d2d2d98b03ee3efdd5" [label="copy{src=/Dockerfile, dest=/thrift/}" shape="note"];
  "sha256:c64047a9fbc0efd48eaf7e1a2a2b2cacc848370ff1c6b91131961b8574c53058" [label="mkdir{path=/thrift/src}" shape="note"];
  "sha256:b4f709ce7c27eeb9e6ad0f9f59cf8a4e4852f1e70e61a4acc1c417a43efef20d" [label="sha256:b4f709ce7c27eeb9e6ad0f9f59cf8a4e4852f1e70e61a4acc1c417a43efef20d" shape="plaintext"];
  "sha256:a1e4d4739a356c44842652818db166340b5d2f978f1b177ab0a23adb6f9b5fc8" -> "sha256:f87b6fead99d0fe098db9fd454a57b7102bb50240a7e3839df1e8cc9e9f1e2ee" [label=""];
  "sha256:f87b6fead99d0fe098db9fd454a57b7102bb50240a7e3839df1e8cc9e9f1e2ee" -> "sha256:094702ee9cf3caf90b74230f4a90e9ca8cedaea3845b639268a692dce9d4b6ae" [label=""];
  "sha256:094702ee9cf3caf90b74230f4a90e9ca8cedaea3845b639268a692dce9d4b6ae" -> "sha256:26ac91ebd19059998d40be3a3cfc8a3d97dc1894c308297c8d2ecbc9a002ee37" [label=""];
  "sha256:26ac91ebd19059998d40be3a3cfc8a3d97dc1894c308297c8d2ecbc9a002ee37" -> "sha256:18d9d6bcc7d27ee77f8bc98439fc3a17c71b76ded4495cd8d2f0816f0ba23be6" [label=""];
  "sha256:18d9d6bcc7d27ee77f8bc98439fc3a17c71b76ded4495cd8d2f0816f0ba23be6" -> "sha256:655a2d3b61dd9ec632057fe20a21fc420a29a4cdba75282bda20d84148599256" [label=""];
  "sha256:655a2d3b61dd9ec632057fe20a21fc420a29a4cdba75282bda20d84148599256" -> "sha256:cd1573295e5995f39763664b70e2a9a28898241ad0b8e91c16bec12fcf657bf5" [label=""];
  "sha256:cd1573295e5995f39763664b70e2a9a28898241ad0b8e91c16bec12fcf657bf5" -> "sha256:661d1bea195a594c0ad7d3c5931e798cbac998fb6c550a515ae562426d24187f" [label=""];
  "sha256:661d1bea195a594c0ad7d3c5931e798cbac998fb6c550a515ae562426d24187f" -> "sha256:177ac45c83694ca9e7a2ab9a012d5bbd5ff0e18ff36658d9bd9bff22bfa19a3f" [label=""];
  "sha256:177ac45c83694ca9e7a2ab9a012d5bbd5ff0e18ff36658d9bd9bff22bfa19a3f" -> "sha256:0a690b923c13a2f1578eb3282fc26da47765e55f99bfae5f5213274761d0da7d" [label=""];
  "sha256:0a690b923c13a2f1578eb3282fc26da47765e55f99bfae5f5213274761d0da7d" -> "sha256:7a06097286b41c0e110f4d0195f116184757699d6029b5af50808b405d37ecdc" [label=""];
  "sha256:7a06097286b41c0e110f4d0195f116184757699d6029b5af50808b405d37ecdc" -> "sha256:07ed6bca9fb77c4e3c6214d69f5dfdc68ec74834706c03cef5e023dc668790c9" [label=""];
  "sha256:07ed6bca9fb77c4e3c6214d69f5dfdc68ec74834706c03cef5e023dc668790c9" -> "sha256:be2b03ceeecd9d6ea4ac1c19e57be129d429e0f0817cbf9b3a4f0f522c362bdc" [label=""];
  "sha256:be2b03ceeecd9d6ea4ac1c19e57be129d429e0f0817cbf9b3a4f0f522c362bdc" -> "sha256:cd17e4a04a0dd32f37a7e1ca3f8db753a7fee279cbf4cb9a84f78f9723d275e9" [label=""];
  "sha256:cd17e4a04a0dd32f37a7e1ca3f8db753a7fee279cbf4cb9a84f78f9723d275e9" -> "sha256:497b0c347f45d89d4aac6cc703b15eac00df4fa852f70e3e86200c4cf11f6f4c" [label=""];
  "sha256:497b0c347f45d89d4aac6cc703b15eac00df4fa852f70e3e86200c4cf11f6f4c" -> "sha256:a4394ef8f3e3ff635cc7bb40436e8a6415605ab530eb0878a8719c3c13e2ec85" [label=""];
  "sha256:a4394ef8f3e3ff635cc7bb40436e8a6415605ab530eb0878a8719c3c13e2ec85" -> "sha256:b30b79e999078796234e88d383912b90a7109bae97d10411cf2e642e9e12f551" [label=""];
  "sha256:b30b79e999078796234e88d383912b90a7109bae97d10411cf2e642e9e12f551" -> "sha256:f86512341a5e0791833721e4e338774f253d5b3dfed8e2f4305229062e40ad65" [label=""];
  "sha256:f86512341a5e0791833721e4e338774f253d5b3dfed8e2f4305229062e40ad65" -> "sha256:1959a9d71cf34d39bf00944f806da745abc13137c8617eb930ca563a8992bcb6" [label=""];
  "sha256:1959a9d71cf34d39bf00944f806da745abc13137c8617eb930ca563a8992bcb6" -> "sha256:bc5f4fe3d51fe2d0eda9fe12a15c2ee76cc33f2ab8a09b5b2639fa1b7e714c5c" [label=""];
  "sha256:bc5f4fe3d51fe2d0eda9fe12a15c2ee76cc33f2ab8a09b5b2639fa1b7e714c5c" -> "sha256:0aff8d9b611ee6c14762d9f278128d1a49bf40c27419635d4f677abc17de3d30" [label=""];
  "sha256:0aff8d9b611ee6c14762d9f278128d1a49bf40c27419635d4f677abc17de3d30" -> "sha256:7b0795b718c955047d164b6373360cefd17e20fbdd05f46acdee1c835f6134b2" [label=""];
  "sha256:7b0795b718c955047d164b6373360cefd17e20fbdd05f46acdee1c835f6134b2" -> "sha256:14e4fb438e7acc63a2f84a9e93caac98125bbcc9a90cab396c7d1ac71434b1f5" [label=""];
  "sha256:14e4fb438e7acc63a2f84a9e93caac98125bbcc9a90cab396c7d1ac71434b1f5" -> "sha256:a9320cad595d8fa3e60fdbe41035ce1fcc24f07101ed452ed963f813fe6617fa" [label=""];
  "sha256:a9320cad595d8fa3e60fdbe41035ce1fcc24f07101ed452ed963f813fe6617fa" -> "sha256:31cefea1d9789acd2b967aa3cbec609bfa2f0cf4040a93c282c49f865dfb40c9" [label=""];
  "sha256:31cefea1d9789acd2b967aa3cbec609bfa2f0cf4040a93c282c49f865dfb40c9" -> "sha256:a4506b760120d75b3fb7d9126e52b74e3310ce7d4b3f1db380187aeea0b599fe" [label=""];
  "sha256:a4506b760120d75b3fb7d9126e52b74e3310ce7d4b3f1db380187aeea0b599fe" -> "sha256:8d02d096e1c23c953a108904314ff262471f7b2fa6c33c98e95c087aa57e35ad" [label=""];
  "sha256:8d02d096e1c23c953a108904314ff262471f7b2fa6c33c98e95c087aa57e35ad" -> "sha256:40557c48830b2541dfd55f36ed8c8bfb3ad166ab9d010979d234aa36c0ac7af2" [label=""];
  "sha256:40557c48830b2541dfd55f36ed8c8bfb3ad166ab9d010979d234aa36c0ac7af2" -> "sha256:79b9ebd62ff1029ac05c8312cf3ac2cf8d2e3ba458d07c3c9e45e40cbbd2e5b9" [label=""];
  "sha256:79b9ebd62ff1029ac05c8312cf3ac2cf8d2e3ba458d07c3c9e45e40cbbd2e5b9" -> "sha256:b6dfe9a04eaef8ba45cc37837c464a8d6b17962b8a33a9d2d2d98b03ee3efdd5" [label=""];
  "sha256:ce7810f9c11acc1c226e6931f7c512038bc3a640315db58ea3bf154d347fa3c7" -> "sha256:b6dfe9a04eaef8ba45cc37837c464a8d6b17962b8a33a9d2d2d98b03ee3efdd5" [label=""];
  "sha256:b6dfe9a04eaef8ba45cc37837c464a8d6b17962b8a33a9d2d2d98b03ee3efdd5" -> "sha256:c64047a9fbc0efd48eaf7e1a2a2b2cacc848370ff1c6b91131961b8574c53058" [label=""];
  "sha256:c64047a9fbc0efd48eaf7e1a2a2b2cacc848370ff1c6b91131961b8574c53058" -> "sha256:b4f709ce7c27eeb9e6ad0f9f59cf8a4e4852f1e70e61a4acc1c417a43efef20d" [label=""];
}
