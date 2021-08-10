[app/sources/467571806.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:9f10746a0c909ac15a4856321dbb917fbfed48b3c943854d0eb9647819b5b31c" [label="/bin/sh -c apt-get update && apt-get install -y   autoconf   autotools-dev   build-essential   bzip2   ccache   curl   dnsutils   gcc   gcc-multilib   git   golang   gyp   lcov   libc6   libc6-dbg   libc6-dev   libgtest-dev   libtool   make   perl   strace   python-dev   python-setuptools   python-yaml   telnet   unzip   wget   zip && apt-get clean" shape="box"];
  "sha256:bd11fd5041064735b758d5188fed303eeaf3ce2142d7904e8eb9e06a743841e5" [label="/bin/sh -c apt-get update && apt-get install -y time && apt-get clean" shape="box"];
  "sha256:db70bf735b72ead3624097fa81338246bb6cfbf011612913c9929b37f52a7620" [label="/bin/sh -c apt-get update && apt-get install -y python-pip && apt-get clean" shape="box"];
  "sha256:22d98f18242ee60035ad85182f59916521ad532628b8851208313b02f7541205" [label="/bin/sh -c pip install --upgrade google-api-python-client" shape="box"];
  "sha256:25105f96c9cd0cb86124b0357e274ada523e318d1e53f043f499e60e9605a19b" [label="/bin/sh -c apt-get update && apt-get install -y     python-all-dev     python3-all-dev     python-pip" shape="box"];
  "sha256:a64197f6c3f6fe99be37934d134233bfc2f66cafe55e643de221d9410cca2c8a" [label="/bin/sh -c pip install --upgrade pip==10.0.1" shape="box"];
  "sha256:6112cf27b11b73c44972b520cef81ad4ad8f86d3ee49bc4ced9fb7ee7437aa0a" [label="/bin/sh -c pip install virtualenv" shape="box"];
  "sha256:15586b603b2098027418b37d4b37f43871e2bbeef456ca3c74d64663732dac6f" [label="/bin/sh -c pip install futures==2.2.0 enum34==1.0.4 protobuf==3.5.2.post1 six==1.10.0 twisted==17.5.0" shape="box"];
  "sha256:6266612ff3f82755971037506ac0eabc77fe11d8f08f9509904db0f524a96fd1" [label="/bin/sh -c gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3" shape="box"];
  "sha256:3080716bcc53ab16543a000df7f611b96eb2f2730275f07a4af02cd10cc7446c" [label="/bin/sh -c \\curl -sSL https://get.rvm.io | bash -s stable" shape="box"];
  "sha256:f8c61ff45df8a7b21ee28339730e645cecbaaad3fcfc6a4ae1b58f16f273a7c8" [label="/bin/sh -c /bin/bash -l -c \"rvm install ruby-2.1\"" shape="box"];
  "sha256:d77557635052f828c0662a10712ee2b81bc89d969de57048032b3bce37b09907" [label="/bin/sh -c /bin/bash -l -c \"rvm use --default ruby-2.1\"" shape="box"];
  "sha256:85a393592c946bcecd85a2a93378d3170b65900bd35ca36ab7ae9b72d685248d" [label="/bin/sh -c /bin/bash -l -c \"echo 'gem: --no-ri --no-rdoc' > ~/.gemrc\"" shape="box"];
  "sha256:6591b7884ef47a3028847ce795ec6dd17255640ded7daffa382bdc3727ea70de" [label="/bin/sh -c /bin/bash -l -c \"echo 'export PATH=/usr/local/rvm/bin:$PATH' >> ~/.bashrc\"" shape="box"];
  "sha256:135e3322fe6f7b214f3aebd73a0f608ff2b335c7e8b1b9914255abce5cc7947a" [label="/bin/sh -c /bin/bash -l -c \"echo 'rvm --default use ruby-2.1' >> ~/.bashrc\"" shape="box"];
  "sha256:c2bf1f9c1e3e332515bf997665773039b36abe126efee6f0de2b3448e3688fd6" [label="/bin/sh -c /bin/bash -l -c \"gem install bundler --no-ri --no-rdoc\"" shape="box"];
  "sha256:12cdf5957d22a1d6932e258c9167427e29b5a2ee26409757d94245a4b05b3670" [label="/bin/sh -c mkdir /var/local/jenkins" shape="box"];
  "sha256:85a5e1537613c3aa7033723e02c52a14b272a3301194a034c66ab1c629ada14a" [label="sha256:85a5e1537613c3aa7033723e02c52a14b272a3301194a034c66ab1c629ada14a" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9f10746a0c909ac15a4856321dbb917fbfed48b3c943854d0eb9647819b5b31c" [label=""];
  "sha256:9f10746a0c909ac15a4856321dbb917fbfed48b3c943854d0eb9647819b5b31c" -> "sha256:bd11fd5041064735b758d5188fed303eeaf3ce2142d7904e8eb9e06a743841e5" [label=""];
  "sha256:bd11fd5041064735b758d5188fed303eeaf3ce2142d7904e8eb9e06a743841e5" -> "sha256:db70bf735b72ead3624097fa81338246bb6cfbf011612913c9929b37f52a7620" [label=""];
  "sha256:db70bf735b72ead3624097fa81338246bb6cfbf011612913c9929b37f52a7620" -> "sha256:22d98f18242ee60035ad85182f59916521ad532628b8851208313b02f7541205" [label=""];
  "sha256:22d98f18242ee60035ad85182f59916521ad532628b8851208313b02f7541205" -> "sha256:25105f96c9cd0cb86124b0357e274ada523e318d1e53f043f499e60e9605a19b" [label=""];
  "sha256:25105f96c9cd0cb86124b0357e274ada523e318d1e53f043f499e60e9605a19b" -> "sha256:a64197f6c3f6fe99be37934d134233bfc2f66cafe55e643de221d9410cca2c8a" [label=""];
  "sha256:a64197f6c3f6fe99be37934d134233bfc2f66cafe55e643de221d9410cca2c8a" -> "sha256:6112cf27b11b73c44972b520cef81ad4ad8f86d3ee49bc4ced9fb7ee7437aa0a" [label=""];
  "sha256:6112cf27b11b73c44972b520cef81ad4ad8f86d3ee49bc4ced9fb7ee7437aa0a" -> "sha256:15586b603b2098027418b37d4b37f43871e2bbeef456ca3c74d64663732dac6f" [label=""];
  "sha256:15586b603b2098027418b37d4b37f43871e2bbeef456ca3c74d64663732dac6f" -> "sha256:6266612ff3f82755971037506ac0eabc77fe11d8f08f9509904db0f524a96fd1" [label=""];
  "sha256:6266612ff3f82755971037506ac0eabc77fe11d8f08f9509904db0f524a96fd1" -> "sha256:3080716bcc53ab16543a000df7f611b96eb2f2730275f07a4af02cd10cc7446c" [label=""];
  "sha256:3080716bcc53ab16543a000df7f611b96eb2f2730275f07a4af02cd10cc7446c" -> "sha256:f8c61ff45df8a7b21ee28339730e645cecbaaad3fcfc6a4ae1b58f16f273a7c8" [label=""];
  "sha256:f8c61ff45df8a7b21ee28339730e645cecbaaad3fcfc6a4ae1b58f16f273a7c8" -> "sha256:d77557635052f828c0662a10712ee2b81bc89d969de57048032b3bce37b09907" [label=""];
  "sha256:d77557635052f828c0662a10712ee2b81bc89d969de57048032b3bce37b09907" -> "sha256:85a393592c946bcecd85a2a93378d3170b65900bd35ca36ab7ae9b72d685248d" [label=""];
  "sha256:85a393592c946bcecd85a2a93378d3170b65900bd35ca36ab7ae9b72d685248d" -> "sha256:6591b7884ef47a3028847ce795ec6dd17255640ded7daffa382bdc3727ea70de" [label=""];
  "sha256:6591b7884ef47a3028847ce795ec6dd17255640ded7daffa382bdc3727ea70de" -> "sha256:135e3322fe6f7b214f3aebd73a0f608ff2b335c7e8b1b9914255abce5cc7947a" [label=""];
  "sha256:135e3322fe6f7b214f3aebd73a0f608ff2b335c7e8b1b9914255abce5cc7947a" -> "sha256:c2bf1f9c1e3e332515bf997665773039b36abe126efee6f0de2b3448e3688fd6" [label=""];
  "sha256:c2bf1f9c1e3e332515bf997665773039b36abe126efee6f0de2b3448e3688fd6" -> "sha256:12cdf5957d22a1d6932e258c9167427e29b5a2ee26409757d94245a4b05b3670" [label=""];
  "sha256:12cdf5957d22a1d6932e258c9167427e29b5a2ee26409757d94245a4b05b3670" -> "sha256:85a5e1537613c3aa7033723e02c52a14b272a3301194a034c66ab1c629ada14a" [label=""];
}

