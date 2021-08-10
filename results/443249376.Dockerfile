[app/sources/443249376.Dockerfile]
digraph {
  "sha256:aa933774c775046e9c1c27287dab1920108d20456cb06b704752820bf3ac97ff" [label="docker-image://docker.io/socketplane/busybox:latest" shape="ellipse"];
  "sha256:230c1d982781fa92e53b795f9728ce989d23077a1e0dda03ece29b98d24cafa9" [label="/bin/sh -c mkdir -p /var/log/supervisor/" shape="box"];
  "sha256:7bb121ce64c24b2c2fa883dd1b2fa2b7a596d8f77c079048253e3a0f55c1624b" [label="local://context" shape="ellipse"];
  "sha256:54792031a03c57178bde7cace9d6d1d669ed659b93839c10587f71259eab21ff" [label="copy{src=/supervisord.conf, dest=/etc/}" shape="note"];
  "sha256:e11255deacbe946059b043b9170f212b953403e11f57855ca946ca71a6ce9bf5" [label="mkdir{path=/opt}" shape="note"];
  "sha256:b382274f4ba9c631b00ec0af6be16596e18d3a266f1b2139ed65408214be454d" [label="/bin/sh -c mkdir -p /var/log/supervisor/" shape="box"];
  "sha256:bb3c0d18fb8af9387b06b725ac84e4e411972138f1bac68338f368ac7bd15a34" [label="/bin/sh -c mkdir -p /etc/openvswitch" shape="box"];
  "sha256:80c16d26a5f3b39ecb54da62f704d822deb5fdc134af718fc6261497cd86a82a" [label="/bin/sh -c wget https://pypi.python.org/packages/source/s/supervisor-stdout/supervisor-stdout-$SUPERVISOR_STDOUT_VERSION.tar.gz --no-check-certificate && \ttar -xzvf supervisor-stdout-0.1.1.tar.gz && \tmv supervisor-stdout-$SUPERVISOR_STDOUT_VERSION supervisor-stdout && \trm supervisor-stdout-0.1.1.tar.gz && \tcd supervisor-stdout && \tpython setup.py install -q" shape="box"];
  "sha256:3f95398ade790d6694e5cf5ca7fad14d2455d99114ce65a87bb6d974c74e0d9d" [label="/bin/sh -c wget https://s3-us-west-2.amazonaws.com/docker-ovs/openvswitch-$OVS_VERSION.tar.gz --no-check-certificate && \ttar -xzvf openvswitch-$OVS_VERSION.tar.gz &&\tmv openvswitch-$OVS_VERSION openvswitch &&\tcp -r openvswitch/* / &&\trm -r openvswitch &&\trm openvswitch-$OVS_VERSION.tar.gz" shape="box"];
  "sha256:dbb4360bbec676c98231b8245826d0406d36ba35038c3e04a52fe3cfaa90c7de" [label="copy{src=/configure-ovs.sh, dest=/usr/local/share/openvswitch/}" shape="note"];
  "sha256:53792798c7f0079a684c93064e5165e545b4b280dd303dbb428d2697d5d0e364" [label="/bin/sh -c ovsdb-tool create /etc/openvswitch/conf.db /usr/local/share/openvswitch/vswitch.ovsschema" shape="box"];
  "sha256:57d660b516428f99a51413ecda8d8f5563fb1469f962562b410973dfaad6cb03" [label="/bin/sh -c cp -r /usr/local/share/openvswitch/python/ovs /usr/lib/python2.7/site-packages/ovs" shape="box"];
  "sha256:4cc0515e469200f67bca38f2d96f39751f754f108ecce53e8cfac67b231e5da1" [label="sha256:4cc0515e469200f67bca38f2d96f39751f754f108ecce53e8cfac67b231e5da1" shape="plaintext"];
  "sha256:aa933774c775046e9c1c27287dab1920108d20456cb06b704752820bf3ac97ff" -> "sha256:230c1d982781fa92e53b795f9728ce989d23077a1e0dda03ece29b98d24cafa9" [label=""];
  "sha256:230c1d982781fa92e53b795f9728ce989d23077a1e0dda03ece29b98d24cafa9" -> "sha256:54792031a03c57178bde7cace9d6d1d669ed659b93839c10587f71259eab21ff" [label=""];
  "sha256:7bb121ce64c24b2c2fa883dd1b2fa2b7a596d8f77c079048253e3a0f55c1624b" -> "sha256:54792031a03c57178bde7cace9d6d1d669ed659b93839c10587f71259eab21ff" [label=""];
  "sha256:54792031a03c57178bde7cace9d6d1d669ed659b93839c10587f71259eab21ff" -> "sha256:e11255deacbe946059b043b9170f212b953403e11f57855ca946ca71a6ce9bf5" [label=""];
  "sha256:e11255deacbe946059b043b9170f212b953403e11f57855ca946ca71a6ce9bf5" -> "sha256:b382274f4ba9c631b00ec0af6be16596e18d3a266f1b2139ed65408214be454d" [label=""];
  "sha256:b382274f4ba9c631b00ec0af6be16596e18d3a266f1b2139ed65408214be454d" -> "sha256:bb3c0d18fb8af9387b06b725ac84e4e411972138f1bac68338f368ac7bd15a34" [label=""];
  "sha256:bb3c0d18fb8af9387b06b725ac84e4e411972138f1bac68338f368ac7bd15a34" -> "sha256:80c16d26a5f3b39ecb54da62f704d822deb5fdc134af718fc6261497cd86a82a" [label=""];
  "sha256:80c16d26a5f3b39ecb54da62f704d822deb5fdc134af718fc6261497cd86a82a" -> "sha256:3f95398ade790d6694e5cf5ca7fad14d2455d99114ce65a87bb6d974c74e0d9d" [label=""];
  "sha256:3f95398ade790d6694e5cf5ca7fad14d2455d99114ce65a87bb6d974c74e0d9d" -> "sha256:dbb4360bbec676c98231b8245826d0406d36ba35038c3e04a52fe3cfaa90c7de" [label=""];
  "sha256:7bb121ce64c24b2c2fa883dd1b2fa2b7a596d8f77c079048253e3a0f55c1624b" -> "sha256:dbb4360bbec676c98231b8245826d0406d36ba35038c3e04a52fe3cfaa90c7de" [label=""];
  "sha256:dbb4360bbec676c98231b8245826d0406d36ba35038c3e04a52fe3cfaa90c7de" -> "sha256:53792798c7f0079a684c93064e5165e545b4b280dd303dbb428d2697d5d0e364" [label=""];
  "sha256:53792798c7f0079a684c93064e5165e545b4b280dd303dbb428d2697d5d0e364" -> "sha256:57d660b516428f99a51413ecda8d8f5563fb1469f962562b410973dfaad6cb03" [label=""];
  "sha256:57d660b516428f99a51413ecda8d8f5563fb1469f962562b410973dfaad6cb03" -> "sha256:4cc0515e469200f67bca38f2d96f39751f754f108ecce53e8cfac67b231e5da1" [label=""];
}

