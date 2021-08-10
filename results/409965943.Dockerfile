[app/sources/409965943.Dockerfile]
digraph {
  "sha256:4af5b33c3c5fd9cb7b0f159fb6b1c9aab60973035cff7e3d2bc8374f3754bb69" [label="local://context" shape="ellipse"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:fb11075da317891dd26a77892f5041ec4c2b17a166ffa34d8147ed32694e1dc2" [label="/bin/sh -c useradd -d /home/oracle -m -s /bin/bash oracle" shape="box"];
  "sha256:e9a18a9ec24999439e5a15767f57ecf0ba3c03fdce4303d3fc9be32fd146d494" [label="copy{src=/files/bashrc, dest=/home/oracle/.bashrc}" shape="note"];
  "sha256:0cfcef9701f22941f69578b9f6e0b61121e19ee3fb8b13ea378e433d50135738" [label="/bin/sh -c chown oracle:oracle /home/oracle/.bashrc" shape="box"];
  "sha256:e6c38bf173551f7d96489d6802875ca638b909913da93b21b57718dfd35d1b51" [label="/bin/sh -c yum -y install wget" shape="box"];
  "sha256:786035acb1755a20140da7dc75d19eb3dc2af7ce2b3439be69bdeeb8c2d339ad" [label="/bin/sh -c wget --no-check-certificate -O/etc/yum.repos.d/public-yum-ol6.repo https://public-yum.oracle.com/public-yum-ol6.repo" shape="box"];
  "sha256:dc2d81f7cb830e734749afce6147570ff575581beb39b7e111b7e675b4ca9f0a" [label="/bin/sh -c wget --no-check-certificate -O/etc/pki/rpm-gpg/RPM-GPG-KEY-oracle https://public-yum.oracle.com/RPM-GPG-KEY-oracle-ol6" shape="box"];
  "sha256:6ea87a1d17a38e369a5a696a513e9787c97744dfccfbcf5b5a50c397342f7460" [label="/bin/sh -c yum -y install oracle-rdbms-server-11gR2-preinstall" shape="box"];
  "sha256:b39db5638066353affdcaf26ad65082f1deb234f08a5c83c7ea5807f937fb139" [label="/bin/sh -c yum -y install binutils compat-libstdc++-33 compat-libstdc++-33.i686 ksh elfutils-libelf elfutils-libelf-devel glibc glibc-common glibc-devel gcc gcc-c++ libaio libaio.i686 libaio-devel libaio-devel.i686 libgcc libstdc++ libstdc++.i686 libstdc++-devel libstdc++-devel.i686 make sysstat unixODBC unixODBC-devel unzip xorg-x11-server-Xvfb" shape="box"];
  "sha256:2c72dff93e97414f664fb05b2bc857eb9762cddd0dc4d48ab4ee7e6e92fb8d81" [label="/bin/sh -c echo \"* - nproc unlimited\" >> /etc/security/limits.d/90-nproc.conf" shape="box"];
  "sha256:47c267e723d5ab3b3c42bcd8d6ac99ce6512914686b0baccc234c380174a74dc" [label="/bin/sh -c sed -i -e 's/HOSTNAME=.*/HOSTNAME=oracle11g/' /etc/sysconfig/network" shape="box"];
  "sha256:0a6f7cdc5cbd0288308b10324e3e1f333323cd091dbc905fc6a64a0e47d62206" [label="/bin/sh -c mkdir /opt/oracle && chown oracle:oracle /opt/oracle" shape="box"];
  "sha256:f89b6f26bc13cf89cb4f9cc973bfd401568bf25006c71ff9910114ecfacd1679" [label="/bin/sh -c mkdir /opt/oraInventory && chown oracle:oracle /opt/oraInventory" shape="box"];
  "sha256:4e7a2d55ea3e41443c37b772bb4baa201afb850ce5374ff0087845c500b07901" [label="copy{src=/files/setenv.sh, dest=/root/setenv.sh}" shape="note"];
  "sha256:0e4db035674032117346489626a563eaa97049aeb677c9d8266086df5c65204f" [label="copy{src=/files/install.sh, dest=/root/install.sh}" shape="note"];
  "sha256:70897b32d22d1efb5dc8ded2ebf747d90769cc9916a44dd20f4a119fe9260651" [label="copy{src=/files/start.sh, dest=/start.sh}" shape="note"];
  "sha256:46de1c80502de575168b4ed52d6122b663b479737cd5715e1b2a5db79ae85927" [label="sha256:46de1c80502de575168b4ed52d6122b663b479737cd5715e1b2a5db79ae85927" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:fb11075da317891dd26a77892f5041ec4c2b17a166ffa34d8147ed32694e1dc2" [label=""];
  "sha256:fb11075da317891dd26a77892f5041ec4c2b17a166ffa34d8147ed32694e1dc2" -> "sha256:e9a18a9ec24999439e5a15767f57ecf0ba3c03fdce4303d3fc9be32fd146d494" [label=""];
  "sha256:4af5b33c3c5fd9cb7b0f159fb6b1c9aab60973035cff7e3d2bc8374f3754bb69" -> "sha256:e9a18a9ec24999439e5a15767f57ecf0ba3c03fdce4303d3fc9be32fd146d494" [label=""];
  "sha256:e9a18a9ec24999439e5a15767f57ecf0ba3c03fdce4303d3fc9be32fd146d494" -> "sha256:0cfcef9701f22941f69578b9f6e0b61121e19ee3fb8b13ea378e433d50135738" [label=""];
  "sha256:0cfcef9701f22941f69578b9f6e0b61121e19ee3fb8b13ea378e433d50135738" -> "sha256:e6c38bf173551f7d96489d6802875ca638b909913da93b21b57718dfd35d1b51" [label=""];
  "sha256:e6c38bf173551f7d96489d6802875ca638b909913da93b21b57718dfd35d1b51" -> "sha256:786035acb1755a20140da7dc75d19eb3dc2af7ce2b3439be69bdeeb8c2d339ad" [label=""];
  "sha256:786035acb1755a20140da7dc75d19eb3dc2af7ce2b3439be69bdeeb8c2d339ad" -> "sha256:dc2d81f7cb830e734749afce6147570ff575581beb39b7e111b7e675b4ca9f0a" [label=""];
  "sha256:dc2d81f7cb830e734749afce6147570ff575581beb39b7e111b7e675b4ca9f0a" -> "sha256:6ea87a1d17a38e369a5a696a513e9787c97744dfccfbcf5b5a50c397342f7460" [label=""];
  "sha256:6ea87a1d17a38e369a5a696a513e9787c97744dfccfbcf5b5a50c397342f7460" -> "sha256:b39db5638066353affdcaf26ad65082f1deb234f08a5c83c7ea5807f937fb139" [label=""];
  "sha256:b39db5638066353affdcaf26ad65082f1deb234f08a5c83c7ea5807f937fb139" -> "sha256:2c72dff93e97414f664fb05b2bc857eb9762cddd0dc4d48ab4ee7e6e92fb8d81" [label=""];
  "sha256:2c72dff93e97414f664fb05b2bc857eb9762cddd0dc4d48ab4ee7e6e92fb8d81" -> "sha256:47c267e723d5ab3b3c42bcd8d6ac99ce6512914686b0baccc234c380174a74dc" [label=""];
  "sha256:47c267e723d5ab3b3c42bcd8d6ac99ce6512914686b0baccc234c380174a74dc" -> "sha256:0a6f7cdc5cbd0288308b10324e3e1f333323cd091dbc905fc6a64a0e47d62206" [label=""];
  "sha256:0a6f7cdc5cbd0288308b10324e3e1f333323cd091dbc905fc6a64a0e47d62206" -> "sha256:f89b6f26bc13cf89cb4f9cc973bfd401568bf25006c71ff9910114ecfacd1679" [label=""];
  "sha256:f89b6f26bc13cf89cb4f9cc973bfd401568bf25006c71ff9910114ecfacd1679" -> "sha256:4e7a2d55ea3e41443c37b772bb4baa201afb850ce5374ff0087845c500b07901" [label=""];
  "sha256:4af5b33c3c5fd9cb7b0f159fb6b1c9aab60973035cff7e3d2bc8374f3754bb69" -> "sha256:4e7a2d55ea3e41443c37b772bb4baa201afb850ce5374ff0087845c500b07901" [label=""];
  "sha256:4e7a2d55ea3e41443c37b772bb4baa201afb850ce5374ff0087845c500b07901" -> "sha256:0e4db035674032117346489626a563eaa97049aeb677c9d8266086df5c65204f" [label=""];
  "sha256:4af5b33c3c5fd9cb7b0f159fb6b1c9aab60973035cff7e3d2bc8374f3754bb69" -> "sha256:0e4db035674032117346489626a563eaa97049aeb677c9d8266086df5c65204f" [label=""];
  "sha256:0e4db035674032117346489626a563eaa97049aeb677c9d8266086df5c65204f" -> "sha256:70897b32d22d1efb5dc8ded2ebf747d90769cc9916a44dd20f4a119fe9260651" [label=""];
  "sha256:4af5b33c3c5fd9cb7b0f159fb6b1c9aab60973035cff7e3d2bc8374f3754bb69" -> "sha256:70897b32d22d1efb5dc8ded2ebf747d90769cc9916a44dd20f4a119fe9260651" [label=""];
  "sha256:70897b32d22d1efb5dc8ded2ebf747d90769cc9916a44dd20f4a119fe9260651" -> "sha256:46de1c80502de575168b4ed52d6122b663b479737cd5715e1b2a5db79ae85927" [label=""];
}

