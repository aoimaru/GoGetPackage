[app/sources/277639925.Dockerfile]
digraph {
  "sha256:2d6f22734ee766a65fe49f5e3a9d757ff0f8f19e19f8ae2db9d56ad52fd0432e" [label="docker-image://docker.io/wlog/rsuite:ubuntu_r3.3_v0.23.232" shape="ellipse"];
  "sha256:a326eb37765a5c6b3caf50ec414d2887236b90ba0786b40a38c4f02b43251bb2" [label="/bin/sh -c apt-get update     && echo \"deb http://http.debian.net/debian jessie-backports main\" | sudo tee --append /etc/apt/sources.list.d/jessie-backports.list > /dev/null     && apt-get update" shape="box"];
  "sha256:5751775c1bc46da382ef517762d58a5bcf1748ade4784b43f42c7d35ea57f75f" [label="/bin/sh -c apt-get install -y openssh-server openssh-client     && mkdir -p /var/run/sshd     && echo \"[program:sshd]\" > /etc/supervisor/conf.d/sshd.conf     && echo \"command=/usr/sbin/sshd -D -e\" >> /etc/supervisor/conf.d/sshd.conf     && echo \"autorestart=true\" >> /etc/supervisor/conf.d/sshd.conf     && echo \"startretries=3\" >> /etc/supervisor/conf.d/sshd.conf" shape="box"];
  "sha256:0b772e882f32c10f942269b97a7610d3a3bf9e365b133c9a85f20cb39428d600" [label="/bin/sh -c apt-get install -y -t jessie-backports openjdk-8-jdk     && useradd -m jenkins     && echo \"jenkins:WLOGsc2017\" | chpasswd     && mkdir -p /opt/jenkins     && chown jenkins:jenkins /opt/jenkins" shape="box"];
  "sha256:555c2a82d029f59724c5975a680968e4c9f5a7697c1361759e663916bb3420d8" [label="/bin/sh -c apt-get install -y libaio1 libaio-dev     && echo \"options(repos = c(WLOG = 'http://wlog-cran.s3.amazonaws.com', CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl')\" > /usr/local/lib/R/etc/Rprofile.site" shape="box"];
  "sha256:8d7c9c9082aeaee6f2a8d0179e6d1ee41b619b0b6cdb017b9d8caf1f1035c896" [label="mkdir{path=/opt/jenkins}" shape="note"];
  "sha256:dcfd34f1548fdec265fdcfd2c54509bc7fe55b960464a8019ec5873e2e3b9440" [label="sha256:dcfd34f1548fdec265fdcfd2c54509bc7fe55b960464a8019ec5873e2e3b9440" shape="plaintext"];
  "sha256:2d6f22734ee766a65fe49f5e3a9d757ff0f8f19e19f8ae2db9d56ad52fd0432e" -> "sha256:a326eb37765a5c6b3caf50ec414d2887236b90ba0786b40a38c4f02b43251bb2" [label=""];
  "sha256:a326eb37765a5c6b3caf50ec414d2887236b90ba0786b40a38c4f02b43251bb2" -> "sha256:5751775c1bc46da382ef517762d58a5bcf1748ade4784b43f42c7d35ea57f75f" [label=""];
  "sha256:5751775c1bc46da382ef517762d58a5bcf1748ade4784b43f42c7d35ea57f75f" -> "sha256:0b772e882f32c10f942269b97a7610d3a3bf9e365b133c9a85f20cb39428d600" [label=""];
  "sha256:0b772e882f32c10f942269b97a7610d3a3bf9e365b133c9a85f20cb39428d600" -> "sha256:555c2a82d029f59724c5975a680968e4c9f5a7697c1361759e663916bb3420d8" [label=""];
  "sha256:555c2a82d029f59724c5975a680968e4c9f5a7697c1361759e663916bb3420d8" -> "sha256:8d7c9c9082aeaee6f2a8d0179e6d1ee41b619b0b6cdb017b9d8caf1f1035c896" [label=""];
  "sha256:8d7c9c9082aeaee6f2a8d0179e6d1ee41b619b0b6cdb017b9d8caf1f1035c896" -> "sha256:dcfd34f1548fdec265fdcfd2c54509bc7fe55b960464a8019ec5873e2e3b9440" [label=""];
}

