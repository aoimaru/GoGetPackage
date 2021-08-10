[app/sources/208424794.Dockerfile]
digraph {
  "sha256:b6666398688fa34f23503a6bb008dae543464fba043d55570ba0dc6736aeddee" [label="docker-image://docker.io/inokappa/ubuntu:latest" shape="ellipse"];
  "sha256:8689de6dd5e175f4844f2d8fb4eab259cc3337f59cf9d94e719416b77575a9bb" [label="/bin/sh -c dpkg-divert --local --rename --add /sbin/initctl" shape="box"];
  "sha256:c2d4bdae6c72e24ba4a9cf332b24cde4570291cf14e4de801dd1e40a287804b0" [label="/bin/sh -c ln -s /bin/true /sbin/initctl" shape="box"];
  "sha256:f1e19a991509f271e85024a4a4d4ac1bc915ac2ed797f5eaa6020b97661917bd" [label="/bin/sh -c apt-get -y install software-properties-common" shape="box"];
  "sha256:b26e21b116b7ffc0c1bada929c017113b0d2746379af38852a17729a85c3b36f" [label="/bin/sh -c add-apt-repository ppa:brightbox/ruby-ng-experimental" shape="box"];
  "sha256:640e1f492b33fe6b5add28183bdc1a54dd719dd46d33f0e34df21a09828bc538" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu/ saucy universe\" >> /etc/apt/sources.list" shape="box"];
  "sha256:14c3c5e6337253bcd8fe04edf50123208a0073a6fe962c92cf79dabb74594155" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:cbe9adcaccde58421ce18681b2c15e4167e49d5c278cb639a7e6cf3a5a7978a9" [label="/bin/sh -c apt-get -y install build-essential g++ libssl-dev nagios3 ruby2.0 ruby2.0-dev monit" shape="box"];
  "sha256:c9c8a2aad10101cefcacd13c89e51305c6c155b8d797d5dd63944ef973ffa542" [label="/bin/sh -c htpasswd -cb /etc/nagios3/htpasswd.users nagiosadmin nagiosadmin" shape="box"];
  "sha256:295964f5ca0bb3308cc5cbe7d3d3173d95a7c44ce0ba52c079d57c51f2b2a800" [label="/bin/sh -c gem install nagira --no-ri --no-rdoc -V" shape="box"];
  "sha256:e4d968102531af344a061ea9d35e692c9dcc4f0418ca9dd59a1f763e1f1223ad" [label="/bin/sh -c mkdir /var/log/nagira" shape="box"];
  "sha256:01bb077bc7574a0eb62962281c92f0075b38675cba8a0c56f788c2c3a1e10982" [label="local://context" shape="ellipse"];
  "sha256:a841f4e2f13bda18e552556976554a512f10414adc4924270d1d42652ddfaaec" [label="copy{src=/nagira.patch, dest=/tmp/nagira.patch}" shape="note"];
  "sha256:12c5463d2b9eb675b16454a70a1a41540c431fcdd665a4f82eaead5b49dbf5d0" [label="/bin/sh -c nagira-setup config:config" shape="box"];
  "sha256:2eaa4676964cbd5d57ccfbbe08a58dae590773cf8b7c56fcdbf89abed8c46d25" [label="/bin/sh -c patch -u --ignore-whitespace /etc/init.d/nagira < /tmp/nagira.patch" shape="box"];
  "sha256:d70096f85ada29402426cbca119b83badc8e7dc1ed6b7e0b3aaec5149507d297" [label="copy{src=/nagios3.conf.monit, dest=/etc/monit/conf.d/nagios3.conf}" shape="note"];
  "sha256:3ee81c9fd738c5f6c0ec94f8034366f5a4e2e1315c6cfaf914caef58dc5f19b2" [label="copy{src=/nagira.conf.monit, dest=/etc/monit/conf.d/nagira.conf}" shape="note"];
  "sha256:fad2a0e6d4604808acaf53e8855303007d66a8ee763c907ce80dcaea10728e41" [label="copy{src=/apache.conf.monit, dest=/etc/monit/conf.d/apache.conf}" shape="note"];
  "sha256:ea338621b0a7c4f097aea2d0addd205c80958759c77a155774259a6bf77d015f" [label="copy{src=/sshd.conf.monit, dest=/etc/monit/conf.d/sshd.conf}" shape="note"];
  "sha256:9f8a3f75f744874fd8d5f978f12f45779bb7bdf9fdbfb33e62c8d734d0bc3278" [label="copy{src=/monitrc, dest=/etc/monit/monitrc}" shape="note"];
  "sha256:d845e546da5203b02db9eb133f89cb6aa97e9c2f941a53f3a746840ab18b0fbb" [label="/bin/sh -c chown root:root /etc/monit/monitrc" shape="box"];
  "sha256:d43de944d1c190551889f4dd8db0dad0eb82fd34f73b0029bad7560c0c828bcc" [label="/bin/sh -c chmod 700 /etc/monit/monitrc" shape="box"];
  "sha256:2d1ada45202a4f46bce0e58e54440612e15874236cb962701fc35a4b4dbd3c3f" [label="/bin/sh -c mkdir -p /var/run/sshd" shape="box"];
  "sha256:c4131f81ba13c812a3534377cf189578266e25b474a9b0e3cda23b6e144e250c" [label="/bin/sh -c useradd -d /home/sandbox -m -s /bin/bash sandbox" shape="box"];
  "sha256:abb7a0ce206971d1d07a6019e72f09c34facb13af01ff946085ba5aa836db229" [label="/bin/sh -c echo sandbox:sandbox | chpasswd" shape="box"];
  "sha256:ceba77f9b50f08d0bf633daffa7e00ba7c9176aa0492dae4e1419cc5f3781007" [label="/bin/sh -c echo 'sandbox ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers" shape="box"];
  "sha256:c6c2ce774140234687f08f70429146a60a46073580402e4d5eb5f3cd0fea7ffa" [label="sha256:c6c2ce774140234687f08f70429146a60a46073580402e4d5eb5f3cd0fea7ffa" shape="plaintext"];
  "sha256:b6666398688fa34f23503a6bb008dae543464fba043d55570ba0dc6736aeddee" -> "sha256:8689de6dd5e175f4844f2d8fb4eab259cc3337f59cf9d94e719416b77575a9bb" [label=""];
  "sha256:8689de6dd5e175f4844f2d8fb4eab259cc3337f59cf9d94e719416b77575a9bb" -> "sha256:c2d4bdae6c72e24ba4a9cf332b24cde4570291cf14e4de801dd1e40a287804b0" [label=""];
  "sha256:c2d4bdae6c72e24ba4a9cf332b24cde4570291cf14e4de801dd1e40a287804b0" -> "sha256:f1e19a991509f271e85024a4a4d4ac1bc915ac2ed797f5eaa6020b97661917bd" [label=""];
  "sha256:f1e19a991509f271e85024a4a4d4ac1bc915ac2ed797f5eaa6020b97661917bd" -> "sha256:b26e21b116b7ffc0c1bada929c017113b0d2746379af38852a17729a85c3b36f" [label=""];
  "sha256:b26e21b116b7ffc0c1bada929c017113b0d2746379af38852a17729a85c3b36f" -> "sha256:640e1f492b33fe6b5add28183bdc1a54dd719dd46d33f0e34df21a09828bc538" [label=""];
  "sha256:640e1f492b33fe6b5add28183bdc1a54dd719dd46d33f0e34df21a09828bc538" -> "sha256:14c3c5e6337253bcd8fe04edf50123208a0073a6fe962c92cf79dabb74594155" [label=""];
  "sha256:14c3c5e6337253bcd8fe04edf50123208a0073a6fe962c92cf79dabb74594155" -> "sha256:cbe9adcaccde58421ce18681b2c15e4167e49d5c278cb639a7e6cf3a5a7978a9" [label=""];
  "sha256:cbe9adcaccde58421ce18681b2c15e4167e49d5c278cb639a7e6cf3a5a7978a9" -> "sha256:c9c8a2aad10101cefcacd13c89e51305c6c155b8d797d5dd63944ef973ffa542" [label=""];
  "sha256:c9c8a2aad10101cefcacd13c89e51305c6c155b8d797d5dd63944ef973ffa542" -> "sha256:295964f5ca0bb3308cc5cbe7d3d3173d95a7c44ce0ba52c079d57c51f2b2a800" [label=""];
  "sha256:295964f5ca0bb3308cc5cbe7d3d3173d95a7c44ce0ba52c079d57c51f2b2a800" -> "sha256:e4d968102531af344a061ea9d35e692c9dcc4f0418ca9dd59a1f763e1f1223ad" [label=""];
  "sha256:e4d968102531af344a061ea9d35e692c9dcc4f0418ca9dd59a1f763e1f1223ad" -> "sha256:a841f4e2f13bda18e552556976554a512f10414adc4924270d1d42652ddfaaec" [label=""];
  "sha256:01bb077bc7574a0eb62962281c92f0075b38675cba8a0c56f788c2c3a1e10982" -> "sha256:a841f4e2f13bda18e552556976554a512f10414adc4924270d1d42652ddfaaec" [label=""];
  "sha256:a841f4e2f13bda18e552556976554a512f10414adc4924270d1d42652ddfaaec" -> "sha256:12c5463d2b9eb675b16454a70a1a41540c431fcdd665a4f82eaead5b49dbf5d0" [label=""];
  "sha256:12c5463d2b9eb675b16454a70a1a41540c431fcdd665a4f82eaead5b49dbf5d0" -> "sha256:2eaa4676964cbd5d57ccfbbe08a58dae590773cf8b7c56fcdbf89abed8c46d25" [label=""];
  "sha256:2eaa4676964cbd5d57ccfbbe08a58dae590773cf8b7c56fcdbf89abed8c46d25" -> "sha256:d70096f85ada29402426cbca119b83badc8e7dc1ed6b7e0b3aaec5149507d297" [label=""];
  "sha256:01bb077bc7574a0eb62962281c92f0075b38675cba8a0c56f788c2c3a1e10982" -> "sha256:d70096f85ada29402426cbca119b83badc8e7dc1ed6b7e0b3aaec5149507d297" [label=""];
  "sha256:d70096f85ada29402426cbca119b83badc8e7dc1ed6b7e0b3aaec5149507d297" -> "sha256:3ee81c9fd738c5f6c0ec94f8034366f5a4e2e1315c6cfaf914caef58dc5f19b2" [label=""];
  "sha256:01bb077bc7574a0eb62962281c92f0075b38675cba8a0c56f788c2c3a1e10982" -> "sha256:3ee81c9fd738c5f6c0ec94f8034366f5a4e2e1315c6cfaf914caef58dc5f19b2" [label=""];
  "sha256:3ee81c9fd738c5f6c0ec94f8034366f5a4e2e1315c6cfaf914caef58dc5f19b2" -> "sha256:fad2a0e6d4604808acaf53e8855303007d66a8ee763c907ce80dcaea10728e41" [label=""];
  "sha256:01bb077bc7574a0eb62962281c92f0075b38675cba8a0c56f788c2c3a1e10982" -> "sha256:fad2a0e6d4604808acaf53e8855303007d66a8ee763c907ce80dcaea10728e41" [label=""];
  "sha256:fad2a0e6d4604808acaf53e8855303007d66a8ee763c907ce80dcaea10728e41" -> "sha256:ea338621b0a7c4f097aea2d0addd205c80958759c77a155774259a6bf77d015f" [label=""];
  "sha256:01bb077bc7574a0eb62962281c92f0075b38675cba8a0c56f788c2c3a1e10982" -> "sha256:ea338621b0a7c4f097aea2d0addd205c80958759c77a155774259a6bf77d015f" [label=""];
  "sha256:ea338621b0a7c4f097aea2d0addd205c80958759c77a155774259a6bf77d015f" -> "sha256:9f8a3f75f744874fd8d5f978f12f45779bb7bdf9fdbfb33e62c8d734d0bc3278" [label=""];
  "sha256:01bb077bc7574a0eb62962281c92f0075b38675cba8a0c56f788c2c3a1e10982" -> "sha256:9f8a3f75f744874fd8d5f978f12f45779bb7bdf9fdbfb33e62c8d734d0bc3278" [label=""];
  "sha256:9f8a3f75f744874fd8d5f978f12f45779bb7bdf9fdbfb33e62c8d734d0bc3278" -> "sha256:d845e546da5203b02db9eb133f89cb6aa97e9c2f941a53f3a746840ab18b0fbb" [label=""];
  "sha256:d845e546da5203b02db9eb133f89cb6aa97e9c2f941a53f3a746840ab18b0fbb" -> "sha256:d43de944d1c190551889f4dd8db0dad0eb82fd34f73b0029bad7560c0c828bcc" [label=""];
  "sha256:d43de944d1c190551889f4dd8db0dad0eb82fd34f73b0029bad7560c0c828bcc" -> "sha256:2d1ada45202a4f46bce0e58e54440612e15874236cb962701fc35a4b4dbd3c3f" [label=""];
  "sha256:2d1ada45202a4f46bce0e58e54440612e15874236cb962701fc35a4b4dbd3c3f" -> "sha256:c4131f81ba13c812a3534377cf189578266e25b474a9b0e3cda23b6e144e250c" [label=""];
  "sha256:c4131f81ba13c812a3534377cf189578266e25b474a9b0e3cda23b6e144e250c" -> "sha256:abb7a0ce206971d1d07a6019e72f09c34facb13af01ff946085ba5aa836db229" [label=""];
  "sha256:abb7a0ce206971d1d07a6019e72f09c34facb13af01ff946085ba5aa836db229" -> "sha256:ceba77f9b50f08d0bf633daffa7e00ba7c9176aa0492dae4e1419cc5f3781007" [label=""];
  "sha256:ceba77f9b50f08d0bf633daffa7e00ba7c9176aa0492dae4e1419cc5f3781007" -> "sha256:c6c2ce774140234687f08f70429146a60a46073580402e4d5eb5f3cd0fea7ffa" [label=""];
}

