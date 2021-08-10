[app/sources/353281443.Dockerfile]
digraph {
  "sha256:2a0c929f0720583153b6b6fb680635a78a56c5fa6fd4651e062b03bfe712ef64" [label="local://context" shape="ellipse"];
  "sha256:04cb4fd8e7b7233d111314d9114fef7a3cf07b880fb15ebfe398c26b060e32d9" [label="docker-image://docker.io/blacklabelops/jenkins-swarm@sha256:2e03cd81b3e3bd20cff5f47c68b8651c3b38ca893e0afeae996ecc53bca38926" shape="ellipse"];
  "sha256:463acabacf572372575a337b451b58fed0876bf6c79a801fc94c60601c3cdedb" [label="copy{src=/www.docker.com.crt, dest=/etc/pki/ca-trust/source/anchors/}" shape="note"];
  "sha256:d45a18eaaecde6471ef1ca890048b697745e61f0ceb2d49fc511156d5b354767" [label="copy{src=/www.digicert.com.pem, dest=/home/jenkins/}" shape="note"];
  "sha256:273b687fc022a7800c47137c3a7edf274858304956fd4fb5a5e6f434f8cc15b7" [label="/bin/sh -c yum install -y epel-release &&     yum install -y       unzip       zip       gzip       tar       curl       python-pip       wget &&     yum clean all && rm -rf /var/cache/yum/* &&     pip install --upgrade pip" shape="box"];
  "sha256:9c6047cabd1ad89fff55fa37a5f53d8f7389b6e12bd247ee832d97c840a670d6" [label="/bin/sh -c curl -fSL \"https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VERSION.tgz\" -o /tmp/docker.tgz &&     tar -xzvf /tmp/docker.tgz -C /tmp &&     mv /tmp/docker/* /usr/local/bin/ &&     chmod +x /usr/local/bin/docker* &&     pip install --cert /home/jenkins/www.digicert.com.pem docker-compose &&     rm -rf /var/log/* && rm -rf /tmp/*" shape="box"];
  "sha256:0103d93f71a3b9dcec812321811adaaf35f198adc3918a23baa8d515a9f4cc51" [label="copy{src=/docker-entrypoint.sh, dest=/home/jenkins/entrypoint.sh}" shape="note"];
  "sha256:801701a0d63158f0b275a151ea1b027d2b0b3e91919df9c9f2113011df909663" [label="sha256:801701a0d63158f0b275a151ea1b027d2b0b3e91919df9c9f2113011df909663" shape="plaintext"];
  "sha256:04cb4fd8e7b7233d111314d9114fef7a3cf07b880fb15ebfe398c26b060e32d9" -> "sha256:463acabacf572372575a337b451b58fed0876bf6c79a801fc94c60601c3cdedb" [label=""];
  "sha256:2a0c929f0720583153b6b6fb680635a78a56c5fa6fd4651e062b03bfe712ef64" -> "sha256:463acabacf572372575a337b451b58fed0876bf6c79a801fc94c60601c3cdedb" [label=""];
  "sha256:463acabacf572372575a337b451b58fed0876bf6c79a801fc94c60601c3cdedb" -> "sha256:d45a18eaaecde6471ef1ca890048b697745e61f0ceb2d49fc511156d5b354767" [label=""];
  "sha256:2a0c929f0720583153b6b6fb680635a78a56c5fa6fd4651e062b03bfe712ef64" -> "sha256:d45a18eaaecde6471ef1ca890048b697745e61f0ceb2d49fc511156d5b354767" [label=""];
  "sha256:d45a18eaaecde6471ef1ca890048b697745e61f0ceb2d49fc511156d5b354767" -> "sha256:273b687fc022a7800c47137c3a7edf274858304956fd4fb5a5e6f434f8cc15b7" [label=""];
  "sha256:273b687fc022a7800c47137c3a7edf274858304956fd4fb5a5e6f434f8cc15b7" -> "sha256:9c6047cabd1ad89fff55fa37a5f53d8f7389b6e12bd247ee832d97c840a670d6" [label=""];
  "sha256:9c6047cabd1ad89fff55fa37a5f53d8f7389b6e12bd247ee832d97c840a670d6" -> "sha256:0103d93f71a3b9dcec812321811adaaf35f198adc3918a23baa8d515a9f4cc51" [label=""];
  "sha256:2a0c929f0720583153b6b6fb680635a78a56c5fa6fd4651e062b03bfe712ef64" -> "sha256:0103d93f71a3b9dcec812321811adaaf35f198adc3918a23baa8d515a9f4cc51" [label=""];
  "sha256:0103d93f71a3b9dcec812321811adaaf35f198adc3918a23baa8d515a9f4cc51" -> "sha256:801701a0d63158f0b275a151ea1b027d2b0b3e91919df9c9f2113011df909663" [label=""];
}

