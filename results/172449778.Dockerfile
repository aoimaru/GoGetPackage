[app/sources/172449778.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c60add6dbd467b4858558c82fa4bc5f40a3bc75a1fb0487b3873cbaf5e9d1212" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:d11a1af856a94ec14789bd2a0bfd71e2f79689929015ea8a7bef8613f0f35b97" [label="/bin/sh -c dpkg-reconfigure locales" shape="box"];
  "sha256:456b30599cf7d255a944a0aacb526a03c426bb338507d9d89e94724b3f0c9c0e" [label="/bin/sh -c apt-get update;     apt-get -y upgrade;     apt-get install -y     curl wget tar make uuid-runtime     sqlite3 libsqlite3-dev     mysql-client libmysqlclient-dev     postgresql-9.3 postgresql-client-9.3 libpq-dev     build-essential checkinstall     libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev     libyaml-dev jq;     apt-get clean" shape="box"];
  "sha256:584d0384de5c5cc2c43480a7ed34193c1168f89096a98357b366bc59b39ad3f1" [label="/bin/sh -c CURRENT=$PWD &&     cd /usr/src &&     wget https://www.python.org/ftp/python/2.7.12/Python-2.7.12.tgz &&    tar xzf Python-2.7.12.tgz &&     cd Python-2.7.12 &&     ./configure &&     make install &&     cd $CURRENT" shape="box"];
  "sha256:9a4060d6067a8941dccf2b672dd9c97dcf8a440a3a88601a89e30477e773d5d1" [label="/bin/sh -c python -m ensurepip && pip install pytz && pip install python-openstackclient==3.17.0 &&     pip install awscli" shape="box"];
  "sha256:5e80cf0503d67c028eef2e8d273c8180da8d852b94d46a11fb03a46ab0b4b068" [label="/bin/sh -c apt-get install software-properties-common -y;     add-apt-repository ppa:git-core/ppa -y;     apt-get update;     apt-get install git -y" shape="box"];
  "sha256:f8bd4c8417dd7bf332c01eb5a87c13ed5b4bb0c337e0a9a6b0c76a00c40465ae" [label="/bin/sh -c mkdir /tmp/ruby-install &&     cd /tmp/ruby-install &&     curl https://codeload.github.com/postmodern/ruby-install/tar.gz/v0.6.1 | tar -xz &&     cd /tmp/ruby-install/ruby-install-0.6.1 &&     sudo make install &&     rm -rf /tmp/ruby-install" shape="box"];
  "sha256:ae509e8c83420bef5838a3b6ddd1869b39adb4ea091a90955c876581f0025baa" [label="/bin/sh -c ruby-install --system ruby 2.4.0" shape="box"];
  "sha256:823276b0ff02ae23bd53edfa78315e3904768466ce57ec94d45eaff34dc7e10f" [label="/bin/bash -l -c gem install bundler -v 1.16.5 --no-ri --no-rdoc" shape="box"];
  "sha256:85b72dec543f770b03bd8ca854bf7f34332b325e525ca8e6bb403850f54d0ee0" [label="/bin/sh -c wget https://s3.amazonaws.com/bosh-cli-artifacts/bosh-cli-5.4.0-linux-amd64 -O /usr/local/bin/bosh-go" shape="box"];
  "sha256:2704654e5b4f902da5ca23bde5eb05a9a92ed3046bb74c68c91f10d852936c63" [label="/bin/sh -c chmod +x /usr/local/bin/bosh-go" shape="box"];
  "sha256:55ad94ec57a7a81c953a98ea35bafdc318f8cf8c87a54f754ec56401acb5395d" [label="/bin/sh -c cd /tmp &&     curl -o certify-artifacts -L https://s3.amazonaws.com/bosh-certification-generator-releases/certify-artifacts-linux-amd64 &&     chmod +x certify-artifacts &&     mv certify-artifacts /bin/certify-artifacts" shape="box"];
  "sha256:f0f6c8c8ceb5fb847f93139241d50d6573d645d40e7f558ab36189f0c153b207" [label="/bin/sh -c cd /tmp &&     curl -L https://github.com/github/hub/releases/download/v2.2.9/hub-linux-amd64-2.2.9.tgz | tar -xz &&     cp hub-linux-amd64-2.2.9/bin/hub /usr/local/bin &&     rm -rf /tmp/hub-linux-amd64-2.2.9 &&     rm -f /tmp/hub-linux-amd64-2.2.9.tgz" shape="box"];
  "sha256:effc4e3012be3204e8a7f90b1c00a344f3c16a9368dfe2654c5fbbd59ec1a350" [label="sha256:effc4e3012be3204e8a7f90b1c00a344f3c16a9368dfe2654c5fbbd59ec1a350" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c60add6dbd467b4858558c82fa4bc5f40a3bc75a1fb0487b3873cbaf5e9d1212" [label=""];
  "sha256:c60add6dbd467b4858558c82fa4bc5f40a3bc75a1fb0487b3873cbaf5e9d1212" -> "sha256:d11a1af856a94ec14789bd2a0bfd71e2f79689929015ea8a7bef8613f0f35b97" [label=""];
  "sha256:d11a1af856a94ec14789bd2a0bfd71e2f79689929015ea8a7bef8613f0f35b97" -> "sha256:456b30599cf7d255a944a0aacb526a03c426bb338507d9d89e94724b3f0c9c0e" [label=""];
  "sha256:456b30599cf7d255a944a0aacb526a03c426bb338507d9d89e94724b3f0c9c0e" -> "sha256:584d0384de5c5cc2c43480a7ed34193c1168f89096a98357b366bc59b39ad3f1" [label=""];
  "sha256:584d0384de5c5cc2c43480a7ed34193c1168f89096a98357b366bc59b39ad3f1" -> "sha256:9a4060d6067a8941dccf2b672dd9c97dcf8a440a3a88601a89e30477e773d5d1" [label=""];
  "sha256:9a4060d6067a8941dccf2b672dd9c97dcf8a440a3a88601a89e30477e773d5d1" -> "sha256:5e80cf0503d67c028eef2e8d273c8180da8d852b94d46a11fb03a46ab0b4b068" [label=""];
  "sha256:5e80cf0503d67c028eef2e8d273c8180da8d852b94d46a11fb03a46ab0b4b068" -> "sha256:f8bd4c8417dd7bf332c01eb5a87c13ed5b4bb0c337e0a9a6b0c76a00c40465ae" [label=""];
  "sha256:f8bd4c8417dd7bf332c01eb5a87c13ed5b4bb0c337e0a9a6b0c76a00c40465ae" -> "sha256:ae509e8c83420bef5838a3b6ddd1869b39adb4ea091a90955c876581f0025baa" [label=""];
  "sha256:ae509e8c83420bef5838a3b6ddd1869b39adb4ea091a90955c876581f0025baa" -> "sha256:823276b0ff02ae23bd53edfa78315e3904768466ce57ec94d45eaff34dc7e10f" [label=""];
  "sha256:823276b0ff02ae23bd53edfa78315e3904768466ce57ec94d45eaff34dc7e10f" -> "sha256:85b72dec543f770b03bd8ca854bf7f34332b325e525ca8e6bb403850f54d0ee0" [label=""];
  "sha256:85b72dec543f770b03bd8ca854bf7f34332b325e525ca8e6bb403850f54d0ee0" -> "sha256:2704654e5b4f902da5ca23bde5eb05a9a92ed3046bb74c68c91f10d852936c63" [label=""];
  "sha256:2704654e5b4f902da5ca23bde5eb05a9a92ed3046bb74c68c91f10d852936c63" -> "sha256:55ad94ec57a7a81c953a98ea35bafdc318f8cf8c87a54f754ec56401acb5395d" [label=""];
  "sha256:55ad94ec57a7a81c953a98ea35bafdc318f8cf8c87a54f754ec56401acb5395d" -> "sha256:f0f6c8c8ceb5fb847f93139241d50d6573d645d40e7f558ab36189f0c153b207" [label=""];
  "sha256:f0f6c8c8ceb5fb847f93139241d50d6573d645d40e7f558ab36189f0c153b207" -> "sha256:effc4e3012be3204e8a7f90b1c00a344f3c16a9368dfe2654c5fbbd59ec1a350" [label=""];
}

