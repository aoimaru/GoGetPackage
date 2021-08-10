[app/sources/267996733.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:0c58b4cbafc3f01c50d384159b097d6a8355d5c53326e6c768939ef7c2e92ef5" [label="/bin/sh -c apt-get install -y             wget             libfontconfig             unzip             zip             ksh             curl             git" shape="box"];
  "sha256:859eb4a378fba02198ee668fe5e05474b5ed04c9b7bdd854315997dd8a566256" [label="/bin/sh -c mkdir /opt/jdk" shape="box"];
  "sha256:b4c3f5d97895c8ca594159290af706e83ceae0130441b33efa079424699bd87f" [label="/bin/sh -c wget -qq --header \"Cookie: oraclelicense=accept-securebackup-cookie\" http://download.oracle.com/otn-pub/java/jdk/8u172-b11/a58eab1ec242421181065cdc37240b08/jdk-8u172-linux-x64.tar.gz && tar -zxf jdk-8u172-linux-x64.tar.gz -C /opt/jdk && rm jdk-8u172-linux-x64.tar.gz && update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_172/bin/java 100 && update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_172/bin/javac 100 && java -version && chmod 755 -R /opt/jdk/jdk1.8.0_172/" shape="box"];
  "sha256:b81c0c687d7683ebab8b2149913df561088af2a33904becb8a2d359370d1856f" [label="/bin/sh -c java -version" shape="box"];
  "sha256:beec9eca1832c36fdcfb4e95a205d8cd5a1ec7cc7cc7f72c84625bd1437960c5" [label="/bin/sh -c wget -q http://mirror.cogentco.com/pub/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && tar xzf apache-maven-3.3.9-bin.tar.gz -C /opt && rm apache-maven-3.3.9-bin.tar.gz && ln -s /opt/apache-maven-3.3.9/bin/mvn /usr/bin/mvn && mvn --version && chmod 755 -R /opt/apache-maven-3.3.9/" shape="box"];
  "sha256:3a7e8313b72861b896cf4447d3e34913d63b99ea709190e55c6bbcbd8d3d00e0" [label="/bin/sh -c addgroup --gid ${gid} ${group} && adduser --disabled-password  --uid ${uid} --gid ${gid} ${user}" shape="box"];
  "sha256:f8264c9618769e9abe562cc925e8ac0a0c950f64dddead3269f9905d151ba3f4" [label="/bin/sh -c mkdir /opt/tmp" shape="box"];
  "sha256:953910bfaf321c05daeade8afd007e4ee0dd91eaa5c1823e39e1e9d9fd67bb89" [label="/bin/sh -c mkdir /usr/share/maven2 && chmod 777 -R /usr/share/maven2" shape="box"];
  "sha256:94162f2c82ab243aa8e6e08f32246aad4cfea7a10f374f44f6681f06e25d922d" [label="local://context" shape="ellipse"];
  "sha256:1ba975f78a799f0d8e03a35bc674d18e25059af24fe9fc1e41cdbcffe5fe4b45" [label="copy{src=/template-app-under-test, dest=/opt/tmp/template-app-under-test/}" shape="note"];
  "sha256:21856caee5486f87109b835e6618ca66dbe46ea82c39261f833bc8cb5aff2c15" [label="copy{src=/settings.xml, dest=/opt/apache-maven-3.3.9/conf/settings.xml}" shape="note"];
  "sha256:fb05cd0783abe6609e4f99b3af07fcf0e6c3ca953c8169c2d8ac29cdd8810208" [label="/bin/sh -c cd /opt/tmp/template-app-under-test/ && mvn dependency:go-offline clean install -U compile test-compile site deploy -DskipTests=true; exit 0" shape="box"];
  "sha256:7c8ba3e1368adf47af8fb0d91000d78096d16e731ad2772621c50bfc9837f82b" [label="/bin/sh -c rm -f -r /opt/tmp/template-app-under-test/" shape="box"];
  "sha256:0aeee35899cfba5ec3fda741182ce6d5eb846df72cc96b697ffd723581b79a4a" [label="/bin/sh -c chmod 755 /usr/bin/java && chmod 755 /usr/bin/mvn" shape="box"];
  "sha256:e73f3f402cb6cd35fc46a22ef30133f65e668bbc4b8ed633b968000346f41695" [label="/bin/sh -c chmod 777 -R /usr/share/maven2" shape="box"];
  "sha256:4c78c23d0349367bd13f8f2a45520369f66df9e04c3b0687fef97756a2875767" [label="/bin/sh -c mkdir -p -m 777 /app" shape="box"];
  "sha256:8604fadf315c07899603b264a63f9dbee7ec99534190fe3c9255a1d48ad3d9d4" [label="mkdir{path=/app}" shape="note"];
  "sha256:da3489dd29e131be403d55f689d53e82b4fa6393b552e1993a82be128b855943" [label="sha256:da3489dd29e131be403d55f689d53e82b4fa6393b552e1993a82be128b855943" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label=""];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" -> "sha256:0c58b4cbafc3f01c50d384159b097d6a8355d5c53326e6c768939ef7c2e92ef5" [label=""];
  "sha256:0c58b4cbafc3f01c50d384159b097d6a8355d5c53326e6c768939ef7c2e92ef5" -> "sha256:859eb4a378fba02198ee668fe5e05474b5ed04c9b7bdd854315997dd8a566256" [label=""];
  "sha256:859eb4a378fba02198ee668fe5e05474b5ed04c9b7bdd854315997dd8a566256" -> "sha256:b4c3f5d97895c8ca594159290af706e83ceae0130441b33efa079424699bd87f" [label=""];
  "sha256:b4c3f5d97895c8ca594159290af706e83ceae0130441b33efa079424699bd87f" -> "sha256:b81c0c687d7683ebab8b2149913df561088af2a33904becb8a2d359370d1856f" [label=""];
  "sha256:b81c0c687d7683ebab8b2149913df561088af2a33904becb8a2d359370d1856f" -> "sha256:beec9eca1832c36fdcfb4e95a205d8cd5a1ec7cc7cc7f72c84625bd1437960c5" [label=""];
  "sha256:beec9eca1832c36fdcfb4e95a205d8cd5a1ec7cc7cc7f72c84625bd1437960c5" -> "sha256:3a7e8313b72861b896cf4447d3e34913d63b99ea709190e55c6bbcbd8d3d00e0" [label=""];
  "sha256:3a7e8313b72861b896cf4447d3e34913d63b99ea709190e55c6bbcbd8d3d00e0" -> "sha256:f8264c9618769e9abe562cc925e8ac0a0c950f64dddead3269f9905d151ba3f4" [label=""];
  "sha256:f8264c9618769e9abe562cc925e8ac0a0c950f64dddead3269f9905d151ba3f4" -> "sha256:953910bfaf321c05daeade8afd007e4ee0dd91eaa5c1823e39e1e9d9fd67bb89" [label=""];
  "sha256:953910bfaf321c05daeade8afd007e4ee0dd91eaa5c1823e39e1e9d9fd67bb89" -> "sha256:1ba975f78a799f0d8e03a35bc674d18e25059af24fe9fc1e41cdbcffe5fe4b45" [label=""];
  "sha256:94162f2c82ab243aa8e6e08f32246aad4cfea7a10f374f44f6681f06e25d922d" -> "sha256:1ba975f78a799f0d8e03a35bc674d18e25059af24fe9fc1e41cdbcffe5fe4b45" [label=""];
  "sha256:1ba975f78a799f0d8e03a35bc674d18e25059af24fe9fc1e41cdbcffe5fe4b45" -> "sha256:21856caee5486f87109b835e6618ca66dbe46ea82c39261f833bc8cb5aff2c15" [label=""];
  "sha256:94162f2c82ab243aa8e6e08f32246aad4cfea7a10f374f44f6681f06e25d922d" -> "sha256:21856caee5486f87109b835e6618ca66dbe46ea82c39261f833bc8cb5aff2c15" [label=""];
  "sha256:21856caee5486f87109b835e6618ca66dbe46ea82c39261f833bc8cb5aff2c15" -> "sha256:fb05cd0783abe6609e4f99b3af07fcf0e6c3ca953c8169c2d8ac29cdd8810208" [label=""];
  "sha256:fb05cd0783abe6609e4f99b3af07fcf0e6c3ca953c8169c2d8ac29cdd8810208" -> "sha256:7c8ba3e1368adf47af8fb0d91000d78096d16e731ad2772621c50bfc9837f82b" [label=""];
  "sha256:7c8ba3e1368adf47af8fb0d91000d78096d16e731ad2772621c50bfc9837f82b" -> "sha256:0aeee35899cfba5ec3fda741182ce6d5eb846df72cc96b697ffd723581b79a4a" [label=""];
  "sha256:0aeee35899cfba5ec3fda741182ce6d5eb846df72cc96b697ffd723581b79a4a" -> "sha256:e73f3f402cb6cd35fc46a22ef30133f65e668bbc4b8ed633b968000346f41695" [label=""];
  "sha256:e73f3f402cb6cd35fc46a22ef30133f65e668bbc4b8ed633b968000346f41695" -> "sha256:4c78c23d0349367bd13f8f2a45520369f66df9e04c3b0687fef97756a2875767" [label=""];
  "sha256:4c78c23d0349367bd13f8f2a45520369f66df9e04c3b0687fef97756a2875767" -> "sha256:8604fadf315c07899603b264a63f9dbee7ec99534190fe3c9255a1d48ad3d9d4" [label=""];
  "sha256:8604fadf315c07899603b264a63f9dbee7ec99534190fe3c9255a1d48ad3d9d4" -> "sha256:da3489dd29e131be403d55f689d53e82b4fa6393b552e1993a82be128b855943" [label=""];
}

