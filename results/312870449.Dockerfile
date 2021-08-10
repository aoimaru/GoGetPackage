[app/sources/312870449.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:24f02340ea48ccf6e7a461af63039f80133e70eea07dc3884091ec6e6e807925" [label="/bin/sh -c yum check-update -y ;     yum install -y --setopt=tsflags=nodocs tigervnc-server xorg-x11-server-utils xorg-x11-server-Xvfb xorg-x11-fonts-* motif xterm &&     yum install -y --setopt=tsflags=nodocs sudo which wget &&     wget --no-check-certificate https://mega.nz/linux/MEGAsync/CentOS_7/x86_64/megasync-CentOS_7.x86_64.rpm -O /tmp/megasync-CentOS_7.x86_64.rpm &&     yum localinstall -y --setopt=tsflags=nodocs --nogpgcheck /tmp/megasync-CentOS_7.x86_64.rpm &&     /bin/echo -e \"\\n${USER}        ALL=(ALL)       NOPASSWD: ALL\" >> /etc/sudoers &&     yum clean all && rm -rf /var/cache/yum/* && rm -f /tmp/megasync-CentOS_7.x86_64.rpm" shape="box"];
  "sha256:03438d5a25a3a42561878898d0c38cfa269a6efa7361306f9ff7ccfeefe272eb" [label="/bin/sh -c /bin/dbus-uuidgen --ensure" shape="box"];
  "sha256:b9adb7c5494c3465b60797096597dfe2cae8c9983d5858bca84a233409e8dc6d" [label="/bin/sh -c useradd -r -m -d ${HOME} -s /bin/bash -G 'root' ${USER}" shape="box"];
  "sha256:66e29a2fe3c7ac72266835df735bbcf8548a897564844e4850945a975945a4e6" [label="/bin/sh -c echo \"root:root\" | chpasswd" shape="box"];
  "sha256:11079144b05f7a16c0b7f96f12410a991cc53b93e42e58784bda250a8fdd830c" [label="/bin/sh -c echo \"${USER}:${USER}\" | chpasswd" shape="box"];
  "sha256:2116e49345f7a8ab9885eb93413c96d8fd38f81f40f13802758ee190f32a01ee" [label="local://context" shape="ellipse"];
  "sha256:f0787c146f84fb925facb75f399f685915d899e5df067ee53ad1377850667594" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:6c77603d95b7aa98f73c8ea46a805237ac640b949e37aa5f71f75d37afbf4ae4" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:b201b11e06bbc1b6c594fd32601585b3c0bab729d4708ea048cfffd1ab889928" [label="/bin/sh -c mkdir -p ${HOME}/.vnc/" shape="box"];
  "sha256:7e41fbda218126ea1ef783a6f687d524df39f21c44f5be3ed31f155692d213e8" [label="copy{src=/xstartup, dest=/home/mega/.vnc/xstartup}" shape="note"];
  "sha256:88d0f8386b6d671ea459a6e6d96ce4f3318a2d34029762feac06000ab4eaef01" [label="/bin/sh -c touch ${HOME}/.vnc/passwd ${HOME}/.Xauthority" shape="box"];
  "sha256:c6e8371ff2f622bda3b3e207ea4121c8686d9a0426b88956f40e4e4927306915" [label="/bin/sh -c sudo chown ${USER}:'root' ${HOME}/.vnc/xstartup &&     sudo chmod 600 ${HOME}/.vnc/passwd" shape="box"];
  "sha256:e07f47f28df85f0be2e4131d9446817c549ccd58c4d7e12efc83ebd1a82e56cb" [label="/bin/sh -c /bin/echo -e \"export DISPLAY=${DISPLAY}\"  >> ${HOME}/.vnc/xstartup" shape="box"];
  "sha256:f609a1941dd2eb01d0952d84144a06b7bbeae663ed9639e3b209aac4bf6ee696" [label="/bin/sh -c /bin/echo -e \"[ -r ${HOME}/.Xresources ] && xrdb ${HOME}/.Xresources\\nxsetroot -solid grey\"  >> ${HOME}/.vnc/xstartup" shape="box"];
  "sha256:2bce958c6934780c7e06a0eb20a3e9b8bcaccddb806a7298c2304e7391c453f7" [label="/bin/sh -c /bin/echo -e \"megasync\"  >> ${HOME}/.vnc/xstartup" shape="box"];
  "sha256:bcf49fb7678cdb68c9fc2a14e8b5be7cd727ac8137a403831b99cff3f261ad83" [label="/bin/sh -c /bin/echo -e \"tailf /dev/null\"  >> ${HOME}/.vnc/xstartup" shape="box"];
  "sha256:aaed2b3209fcdc307c2b5ac337b8b84743f3174211c260879b4b6870d307d56f" [label="/bin/sh -c /bin/echo -e 'alias ll=\"ls -last\"' >> ${HOME}/.bashrc" shape="box"];
  "sha256:87d8ab005be0b369de7a59dcf58021cd69ee99bdbc84894afc88f012094964a0" [label="sha256:87d8ab005be0b369de7a59dcf58021cd69ee99bdbc84894afc88f012094964a0" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:24f02340ea48ccf6e7a461af63039f80133e70eea07dc3884091ec6e6e807925" [label=""];
  "sha256:24f02340ea48ccf6e7a461af63039f80133e70eea07dc3884091ec6e6e807925" -> "sha256:03438d5a25a3a42561878898d0c38cfa269a6efa7361306f9ff7ccfeefe272eb" [label=""];
  "sha256:03438d5a25a3a42561878898d0c38cfa269a6efa7361306f9ff7ccfeefe272eb" -> "sha256:b9adb7c5494c3465b60797096597dfe2cae8c9983d5858bca84a233409e8dc6d" [label=""];
  "sha256:b9adb7c5494c3465b60797096597dfe2cae8c9983d5858bca84a233409e8dc6d" -> "sha256:66e29a2fe3c7ac72266835df735bbcf8548a897564844e4850945a975945a4e6" [label=""];
  "sha256:66e29a2fe3c7ac72266835df735bbcf8548a897564844e4850945a975945a4e6" -> "sha256:11079144b05f7a16c0b7f96f12410a991cc53b93e42e58784bda250a8fdd830c" [label=""];
  "sha256:11079144b05f7a16c0b7f96f12410a991cc53b93e42e58784bda250a8fdd830c" -> "sha256:f0787c146f84fb925facb75f399f685915d899e5df067ee53ad1377850667594" [label=""];
  "sha256:2116e49345f7a8ab9885eb93413c96d8fd38f81f40f13802758ee190f32a01ee" -> "sha256:f0787c146f84fb925facb75f399f685915d899e5df067ee53ad1377850667594" [label=""];
  "sha256:f0787c146f84fb925facb75f399f685915d899e5df067ee53ad1377850667594" -> "sha256:6c77603d95b7aa98f73c8ea46a805237ac640b949e37aa5f71f75d37afbf4ae4" [label=""];
  "sha256:6c77603d95b7aa98f73c8ea46a805237ac640b949e37aa5f71f75d37afbf4ae4" -> "sha256:b201b11e06bbc1b6c594fd32601585b3c0bab729d4708ea048cfffd1ab889928" [label=""];
  "sha256:b201b11e06bbc1b6c594fd32601585b3c0bab729d4708ea048cfffd1ab889928" -> "sha256:7e41fbda218126ea1ef783a6f687d524df39f21c44f5be3ed31f155692d213e8" [label=""];
  "sha256:2116e49345f7a8ab9885eb93413c96d8fd38f81f40f13802758ee190f32a01ee" -> "sha256:7e41fbda218126ea1ef783a6f687d524df39f21c44f5be3ed31f155692d213e8" [label=""];
  "sha256:7e41fbda218126ea1ef783a6f687d524df39f21c44f5be3ed31f155692d213e8" -> "sha256:88d0f8386b6d671ea459a6e6d96ce4f3318a2d34029762feac06000ab4eaef01" [label=""];
  "sha256:88d0f8386b6d671ea459a6e6d96ce4f3318a2d34029762feac06000ab4eaef01" -> "sha256:c6e8371ff2f622bda3b3e207ea4121c8686d9a0426b88956f40e4e4927306915" [label=""];
  "sha256:c6e8371ff2f622bda3b3e207ea4121c8686d9a0426b88956f40e4e4927306915" -> "sha256:e07f47f28df85f0be2e4131d9446817c549ccd58c4d7e12efc83ebd1a82e56cb" [label=""];
  "sha256:e07f47f28df85f0be2e4131d9446817c549ccd58c4d7e12efc83ebd1a82e56cb" -> "sha256:f609a1941dd2eb01d0952d84144a06b7bbeae663ed9639e3b209aac4bf6ee696" [label=""];
  "sha256:f609a1941dd2eb01d0952d84144a06b7bbeae663ed9639e3b209aac4bf6ee696" -> "sha256:2bce958c6934780c7e06a0eb20a3e9b8bcaccddb806a7298c2304e7391c453f7" [label=""];
  "sha256:2bce958c6934780c7e06a0eb20a3e9b8bcaccddb806a7298c2304e7391c453f7" -> "sha256:bcf49fb7678cdb68c9fc2a14e8b5be7cd727ac8137a403831b99cff3f261ad83" [label=""];
  "sha256:bcf49fb7678cdb68c9fc2a14e8b5be7cd727ac8137a403831b99cff3f261ad83" -> "sha256:aaed2b3209fcdc307c2b5ac337b8b84743f3174211c260879b4b6870d307d56f" [label=""];
  "sha256:aaed2b3209fcdc307c2b5ac337b8b84743f3174211c260879b4b6870d307d56f" -> "sha256:87d8ab005be0b369de7a59dcf58021cd69ee99bdbc84894afc88f012094964a0" [label=""];
}

