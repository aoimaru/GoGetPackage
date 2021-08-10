[app/sources/368520372.Dockerfile]
digraph {
  "sha256:2036fb23617ff76d869c511aecf4e8f3473374c5decab2d0999ad6a391eed015" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:7c90f3a91f22e2de20cddb70a80d31f300eda8d7e0ce11757e0fe98a7dfc05e6" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install     bundler     curl     dnsutils     openssh-server     ruby1.9.3     supervisor     wget &&  apt-get clean &&  rm -Rf /var/cache/*" shape="box"];
  "sha256:4c6d717361486dd75fee668508483c6eb2b14462b74161e5b8395ef90b3c7a3f" [label="/bin/sh -c mkdir -p /var/run/sshd" shape="box"];
  "sha256:61fe8c813ab2eeb85b87fd5c27a882360ed63fd65a75177b48724530d7f2bee3" [label="copy{src=/sshd.conf, dest=/etc/supervisor/conf.d/sshd.conf}" shape="note"];
  "sha256:08919f2a67a67de81e3e80f874c4806b44f8514a301387e3e63f30ad10833e61" [label="copy{src=/id_rsa.pub, dest=/root/.ssh/id_rsa.pub}" shape="note"];
  "sha256:d92e21ebe0b24239adb69f6abc068338dfb55eeee7366b6b172c0b2d93f1cb7b" [label="/bin/sh -c cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys" shape="box"];
  "sha256:cd010ffedfc22c7e35de2b606557694cfeed4c0f433f8fd04f26f184307410e7" [label="/bin/sh -c sed -i 's/session \\+required \\+pam_loginuid\\.so/session    optional     pam_loginuid.so/' /etc/pam.d/sshd" shape="box"];
  "sha256:d33c875538f64cff7970760288bb84ab8549ec0accda6706a9b661846eb87302" [label="/bin/sh -c echo \"deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main\" >> /etc/apt/sources.list" shape="box"];
  "sha256:8433b8dbc80166aa99ff67460159ef8fb1155c4e4caa56a51737de85ef85c718" [label="/bin/sh -c echo \"deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main\" >> /etc/apt/sources.list" shape="box"];
  "sha256:88b24f9e0c2d3a5df8df27900af15a17c9a116766f07d2d8d64ca66aff96d978" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80/ --recv 7B2C3B0889BF5709A105D03AC2518248EEA14886" shape="box"];
  "sha256:14099306cc94cb49ef80608a9949aae49e421ec471b628f279f0208a7e120176" [label="/bin/sh -c echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections" shape="box"];
  "sha256:e1d1aea4ab9ac45313d429692ca04e080376f6386e4b995b2db8c7bd4ad75e8a" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java7-installer oracle-java7-set-default &&  apt-get clean &&  rm -Rf /var/cache/*" shape="box"];
  "sha256:15df311dd4f42f2227a3a50c8c3178f032b6f96e140b30d3b16e85ea9025b304" [label="sha256:15df311dd4f42f2227a3a50c8c3178f032b6f96e140b30d3b16e85ea9025b304" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7c90f3a91f22e2de20cddb70a80d31f300eda8d7e0ce11757e0fe98a7dfc05e6" [label=""];
  "sha256:7c90f3a91f22e2de20cddb70a80d31f300eda8d7e0ce11757e0fe98a7dfc05e6" -> "sha256:4c6d717361486dd75fee668508483c6eb2b14462b74161e5b8395ef90b3c7a3f" [label=""];
  "sha256:4c6d717361486dd75fee668508483c6eb2b14462b74161e5b8395ef90b3c7a3f" -> "sha256:61fe8c813ab2eeb85b87fd5c27a882360ed63fd65a75177b48724530d7f2bee3" [label=""];
  "sha256:2036fb23617ff76d869c511aecf4e8f3473374c5decab2d0999ad6a391eed015" -> "sha256:61fe8c813ab2eeb85b87fd5c27a882360ed63fd65a75177b48724530d7f2bee3" [label=""];
  "sha256:61fe8c813ab2eeb85b87fd5c27a882360ed63fd65a75177b48724530d7f2bee3" -> "sha256:08919f2a67a67de81e3e80f874c4806b44f8514a301387e3e63f30ad10833e61" [label=""];
  "sha256:2036fb23617ff76d869c511aecf4e8f3473374c5decab2d0999ad6a391eed015" -> "sha256:08919f2a67a67de81e3e80f874c4806b44f8514a301387e3e63f30ad10833e61" [label=""];
  "sha256:08919f2a67a67de81e3e80f874c4806b44f8514a301387e3e63f30ad10833e61" -> "sha256:d92e21ebe0b24239adb69f6abc068338dfb55eeee7366b6b172c0b2d93f1cb7b" [label=""];
  "sha256:d92e21ebe0b24239adb69f6abc068338dfb55eeee7366b6b172c0b2d93f1cb7b" -> "sha256:cd010ffedfc22c7e35de2b606557694cfeed4c0f433f8fd04f26f184307410e7" [label=""];
  "sha256:cd010ffedfc22c7e35de2b606557694cfeed4c0f433f8fd04f26f184307410e7" -> "sha256:d33c875538f64cff7970760288bb84ab8549ec0accda6706a9b661846eb87302" [label=""];
  "sha256:d33c875538f64cff7970760288bb84ab8549ec0accda6706a9b661846eb87302" -> "sha256:8433b8dbc80166aa99ff67460159ef8fb1155c4e4caa56a51737de85ef85c718" [label=""];
  "sha256:8433b8dbc80166aa99ff67460159ef8fb1155c4e4caa56a51737de85ef85c718" -> "sha256:88b24f9e0c2d3a5df8df27900af15a17c9a116766f07d2d8d64ca66aff96d978" [label=""];
  "sha256:88b24f9e0c2d3a5df8df27900af15a17c9a116766f07d2d8d64ca66aff96d978" -> "sha256:14099306cc94cb49ef80608a9949aae49e421ec471b628f279f0208a7e120176" [label=""];
  "sha256:14099306cc94cb49ef80608a9949aae49e421ec471b628f279f0208a7e120176" -> "sha256:e1d1aea4ab9ac45313d429692ca04e080376f6386e4b995b2db8c7bd4ad75e8a" [label=""];
  "sha256:e1d1aea4ab9ac45313d429692ca04e080376f6386e4b995b2db8c7bd4ad75e8a" -> "sha256:15df311dd4f42f2227a3a50c8c3178f032b6f96e140b30d3b16e85ea9025b304" [label=""];
}

