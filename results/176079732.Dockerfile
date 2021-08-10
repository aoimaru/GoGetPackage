[app/sources/176079732.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:bd1f8e71c69c6131b127cb8b8d7df13cc8a4de532ccdaa947a9f4d0a99ae4c1a" [label="/bin/sh -c apt-get update && apt-get install -y   autoconf   autotools-dev   build-essential   bzip2   ccache   curl   dnsutils   gcc   gcc-multilib   git   golang   gyp   lcov   libc6   libc6-dbg   libc6-dev   libgtest-dev   libtool   make   perl   strace   python-dev   python-setuptools   python-yaml   telnet   unzip   wget   zip && apt-get clean" shape="box"];
  "sha256:2aedeb70ac384bdfb4de2318a09fa9e197f944c39d4f1f6919e1c252ec59985a" [label="/bin/sh -c apt-get update && apt-get install -y time && apt-get clean" shape="box"];
  "sha256:73aa8a8b4b0b5c20519cbb6a886b8559dd03d925a2d30124091fcd9b66de1bf2" [label="/bin/sh -c apt-get update && apt-get install -y python-pip && apt-get clean" shape="box"];
  "sha256:23f27719b687e3c105b7f3132b0291553416ebc1431399c1f57a66693a98f7ca" [label="/bin/sh -c pip install --upgrade google-api-python-client oauth2client" shape="box"];
  "sha256:69fc101c69b565801ec2c81b0ced1310d885792d125d1c2e2d41a2e80b9d6e52" [label="/bin/sh -c apt-get update && apt-get install -y python2.7 python-all-dev" shape="box"];
  "sha256:aa65ff4867108bf1131f7f1dec6a0e212fb2ff8124bf57e482203b3bf4ac62b8" [label="/bin/sh -c curl https://bootstrap.pypa.io/get-pip.py | python2.7" shape="box"];
  "sha256:be21ce62ec8de1ac5a060b42a4a0fe09c79687cfd589c2f92c03ac11ef6e11a9" [label="/bin/sh -c echo 'deb http://ftp.de.debian.org/debian testing main' >> /etc/apt/sources.list" shape="box"];
  "sha256:58ea690fb12c2b13fbb1800964065ea4acf08f217e12d39648bf1032e08323d9" [label="/bin/sh -c echo 'APT::Default-Release \"stable\";' | tee -a /etc/apt/apt.conf.d/00local" shape="box"];
  "sha256:84b261924844543d4bc6aa533cab5d41a8948e921138ab8fa110cb92a7a025ff" [label="/bin/sh -c mkdir /var/local/jenkins" shape="box"];
  "sha256:5399164b181c7146cb2c0764f40d17d934748941116780d804df9a3a88638ed1" [label="/bin/sh -c apt-get update && apt-get -t testing install -y python3.7 python3-all-dev" shape="box"];
  "sha256:5dcea56a3448fdad94cb728e080e854042823816ee4cb9945ceae3e92ef33f4d" [label="/bin/sh -c curl https://bootstrap.pypa.io/get-pip.py | python3.7" shape="box"];
  "sha256:392c05f6449a5681631f048b52837042da6391aed8c79f82da9a7c8806f86488" [label="sha256:392c05f6449a5681631f048b52837042da6391aed8c79f82da9a7c8806f86488" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:bd1f8e71c69c6131b127cb8b8d7df13cc8a4de532ccdaa947a9f4d0a99ae4c1a" [label=""];
  "sha256:bd1f8e71c69c6131b127cb8b8d7df13cc8a4de532ccdaa947a9f4d0a99ae4c1a" -> "sha256:2aedeb70ac384bdfb4de2318a09fa9e197f944c39d4f1f6919e1c252ec59985a" [label=""];
  "sha256:2aedeb70ac384bdfb4de2318a09fa9e197f944c39d4f1f6919e1c252ec59985a" -> "sha256:73aa8a8b4b0b5c20519cbb6a886b8559dd03d925a2d30124091fcd9b66de1bf2" [label=""];
  "sha256:73aa8a8b4b0b5c20519cbb6a886b8559dd03d925a2d30124091fcd9b66de1bf2" -> "sha256:23f27719b687e3c105b7f3132b0291553416ebc1431399c1f57a66693a98f7ca" [label=""];
  "sha256:23f27719b687e3c105b7f3132b0291553416ebc1431399c1f57a66693a98f7ca" -> "sha256:69fc101c69b565801ec2c81b0ced1310d885792d125d1c2e2d41a2e80b9d6e52" [label=""];
  "sha256:69fc101c69b565801ec2c81b0ced1310d885792d125d1c2e2d41a2e80b9d6e52" -> "sha256:aa65ff4867108bf1131f7f1dec6a0e212fb2ff8124bf57e482203b3bf4ac62b8" [label=""];
  "sha256:aa65ff4867108bf1131f7f1dec6a0e212fb2ff8124bf57e482203b3bf4ac62b8" -> "sha256:be21ce62ec8de1ac5a060b42a4a0fe09c79687cfd589c2f92c03ac11ef6e11a9" [label=""];
  "sha256:be21ce62ec8de1ac5a060b42a4a0fe09c79687cfd589c2f92c03ac11ef6e11a9" -> "sha256:58ea690fb12c2b13fbb1800964065ea4acf08f217e12d39648bf1032e08323d9" [label=""];
  "sha256:58ea690fb12c2b13fbb1800964065ea4acf08f217e12d39648bf1032e08323d9" -> "sha256:84b261924844543d4bc6aa533cab5d41a8948e921138ab8fa110cb92a7a025ff" [label=""];
  "sha256:84b261924844543d4bc6aa533cab5d41a8948e921138ab8fa110cb92a7a025ff" -> "sha256:5399164b181c7146cb2c0764f40d17d934748941116780d804df9a3a88638ed1" [label=""];
  "sha256:5399164b181c7146cb2c0764f40d17d934748941116780d804df9a3a88638ed1" -> "sha256:5dcea56a3448fdad94cb728e080e854042823816ee4cb9945ceae3e92ef33f4d" [label=""];
  "sha256:5dcea56a3448fdad94cb728e080e854042823816ee4cb9945ceae3e92ef33f4d" -> "sha256:392c05f6449a5681631f048b52837042da6391aed8c79f82da9a7c8806f86488" [label=""];
}

