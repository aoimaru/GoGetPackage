[app/sources/206254194.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:1677736d141715e7ad07534c1f190a1dd71f18f3b4b0bfa3fa52226c60947800" [label="/bin/sh -c apt update && apt upgrade -y -o Dpkg::Options::=\"--force-confold\"" shape="box"];
  "sha256:1f4b2c3add7cc116b777fe695819ef6f81df43609ef610476eb86400d70fc1f5" [label="/bin/sh -c apt install -y fakeroot git rpm cpio zip python-pip" shape="box"];
  "sha256:c31e42aa127fc40c417b695c18d13996b12a3b6d386a7a3f5a7d3218794f3d6f" [label="/bin/sh -c curl -L https://github.com/hogliux/bomutils/tarball/master | tar xz && cd hogliux-bomutils-* && make install" shape="box"];
  "sha256:cca4ad042de259086ccd8705f5a93bee3df3b9ffb3ef9bec7776eee7f12fbc91" [label="/bin/sh -c apt install -y libxml2-dev libssl-dev pkg-config" shape="box"];
  "sha256:111f6b8570298a2031c598d4b12f2d66e56dd09e102d32ffcbf66cd68732746c" [label="/bin/sh -c curl -L https://github.com/downloads/mackyle/xar/xar-1.6.1.tar.gz | tar xz && cd xar* && ./configure && make && make install" shape="box"];
  "sha256:f04a0f1fba8ceb6b56dc9e58c13ec2e8d849153834c4016316d39ace219cc81b" [label="/bin/sh -c pip install awscli" shape="box"];
  "sha256:5c05452fee373cb7ff4786fc1adf6803f79ccca7be533542fa990a2feed374aa" [label="/bin/sh -c apt install -y ruby1.9.1 createrepo" shape="box"];
  "sha256:2e2145f6b96aa07e2c46442c90771a65712604cd468352a53ea8101a1b21f19d" [label="/bin/sh -c gem install deb-s3" shape="box"];
  "sha256:2251aa5758cdac21dc6a1c5a5e64b646d91ddc840f099049f6ffa1e8b0398824" [label="/bin/sh -c apt install -y expect" shape="box"];
  "sha256:a49816fa9a9df1cf53ddfdb87b0593cf670fb719e4059367dc1641188e7be715" [label="/bin/sh -c apt install -y autoconf build-essential libcurl4-openssl-dev" shape="box"];
  "sha256:d207f8e5f8d349555743e3277c943a2519dc1c06e0bfda5c382842692c06dfe9" [label="/bin/sh -c cd /tmp &&   curl -L https://downloads.sourceforge.net/project/osslsigncode/osslsigncode/osslsigncode-1.7.1.tar.gz |     tar xzf - &&   cd osslsigncode-1.7.1 &&   ./configure &&   make &&   make install &&   cd .. &&   rm -rf osslsigncode-1.7.1" shape="box"];
  "sha256:05f716574c44853e02e8341c3e15308edf20f1043e26021059debea12964eea2" [label="sha256:05f716574c44853e02e8341c3e15308edf20f1043e26021059debea12964eea2" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:1677736d141715e7ad07534c1f190a1dd71f18f3b4b0bfa3fa52226c60947800" [label=""];
  "sha256:1677736d141715e7ad07534c1f190a1dd71f18f3b4b0bfa3fa52226c60947800" -> "sha256:1f4b2c3add7cc116b777fe695819ef6f81df43609ef610476eb86400d70fc1f5" [label=""];
  "sha256:1f4b2c3add7cc116b777fe695819ef6f81df43609ef610476eb86400d70fc1f5" -> "sha256:c31e42aa127fc40c417b695c18d13996b12a3b6d386a7a3f5a7d3218794f3d6f" [label=""];
  "sha256:c31e42aa127fc40c417b695c18d13996b12a3b6d386a7a3f5a7d3218794f3d6f" -> "sha256:cca4ad042de259086ccd8705f5a93bee3df3b9ffb3ef9bec7776eee7f12fbc91" [label=""];
  "sha256:cca4ad042de259086ccd8705f5a93bee3df3b9ffb3ef9bec7776eee7f12fbc91" -> "sha256:111f6b8570298a2031c598d4b12f2d66e56dd09e102d32ffcbf66cd68732746c" [label=""];
  "sha256:111f6b8570298a2031c598d4b12f2d66e56dd09e102d32ffcbf66cd68732746c" -> "sha256:f04a0f1fba8ceb6b56dc9e58c13ec2e8d849153834c4016316d39ace219cc81b" [label=""];
  "sha256:f04a0f1fba8ceb6b56dc9e58c13ec2e8d849153834c4016316d39ace219cc81b" -> "sha256:5c05452fee373cb7ff4786fc1adf6803f79ccca7be533542fa990a2feed374aa" [label=""];
  "sha256:5c05452fee373cb7ff4786fc1adf6803f79ccca7be533542fa990a2feed374aa" -> "sha256:2e2145f6b96aa07e2c46442c90771a65712604cd468352a53ea8101a1b21f19d" [label=""];
  "sha256:2e2145f6b96aa07e2c46442c90771a65712604cd468352a53ea8101a1b21f19d" -> "sha256:2251aa5758cdac21dc6a1c5a5e64b646d91ddc840f099049f6ffa1e8b0398824" [label=""];
  "sha256:2251aa5758cdac21dc6a1c5a5e64b646d91ddc840f099049f6ffa1e8b0398824" -> "sha256:a49816fa9a9df1cf53ddfdb87b0593cf670fb719e4059367dc1641188e7be715" [label=""];
  "sha256:a49816fa9a9df1cf53ddfdb87b0593cf670fb719e4059367dc1641188e7be715" -> "sha256:d207f8e5f8d349555743e3277c943a2519dc1c06e0bfda5c382842692c06dfe9" [label=""];
  "sha256:d207f8e5f8d349555743e3277c943a2519dc1c06e0bfda5c382842692c06dfe9" -> "sha256:05f716574c44853e02e8341c3e15308edf20f1043e26021059debea12964eea2" [label=""];
}

