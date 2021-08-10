[app/sources/282957874.Dockerfile]
digraph {
  "sha256:757241a665de95af1a16f415db0797583f4c7631c11152ed7e57332ef8c3a899" [label="local://context" shape="ellipse"];
  "sha256:7206e5b70813106cdfa1b5a0b0b7f170ef924f56d82a756db673cda8de79577a" [label="docker-image://docker.io/johnshine/crossover-vnc:latest@sha256:1b02c93f982cf40c0a7ea4e197c3d46f33731c5b3d2717eb707798c6be8586e8" shape="ellipse"];
  "sha256:9359a24d7092cc5a6d76739afb8609e7519d4d397e5ec028965c5f39df900895" [label="/bin/sh -c yum check-update -y ;     yum install -y --setopt=tsflags=nodocs libncurses.so.5 &&     yum clean all && rm -rf /var/cache/yum/*" shape="box"];
  "sha256:7046343a63f6ab44c310a955523b172341eb82611f557e5017e4fb79ccebebc4" [label="mkdir{path=/home/crossover}" shape="note"];
  "sha256:44a259d0a48e3cf5a446c79b040356054f4db2a76fd8acdadf6295b5261fa1cc" [label="/bin/sh -c ${INSTALLDIR}/bin/cxbottle --create --bottle \"${BOTTLE}\" --template \"winxp\"" shape="box"];
  "sha256:b7435222eeeebef3e479d6524446b2d4b206235d466baa47bb524916a73a7d13" [label="/bin/sh -c sed -i -e 's/;;\"AllowUntrusted\" = \"\"/\"AllowUntrusted\" = \"1\"/' ${HOME}/.cxoffice/${BOTTLE}/cxbottle.conf" shape="box"];
  "sha256:32d24989b2dffd76ab075f1dd28ce2ef7911d7908c5c64f3219b428ca5074fad" [label="/bin/sh -c wget https://raw.githubusercontent.com/john-shine/Docker-CodeWeavers_CrossOver-VNC/master/BaiduNetdisk/fonts/simsun.ttc -O ~/.cxoffice/${BOTTLE}/drive_c/windows/Fonts/simsun.ttc" shape="box"];
  "sha256:2ba61d83fddbde1f4ebaa92bdb286cc0989672ae929d16db78946162139e6653" [label="/bin/sh -c wget https://raw.githubusercontent.com/john-shine/Docker-CodeWeavers_CrossOver-VNC/master/Lyx/installers/Lyx.tar.xz -O /tmp/Lyx.tar.xz && tar -Jxf /tmp/Lyx.tar.xz -C ${HOME}/.cxoffice/${BOTTLE}/drive_c/Program\\ Files/ && rm -f /tmp/Lyx.tar.xz" shape="box"];
  "sha256:27d4cbd6abb1f2daad750ec0941ad761af74a62124e2efa9c479e7d6b387b855" [label="/bin/sh -c ${INSTALLDIR}/bin/wine --bottle ${BOTTLE} --wait-children --wl-app 'reboot.exe'" shape="box"];
  "sha256:3018f66208e0b90e12af7ad6295bc9767df3e37faf5d76c800009ccef370509a" [label="copy{src=/xstartup, dest=/home/crossover/.vnc/}" shape="note"];
  "sha256:ccc3bf8cb87e3e3049d282c34884d0cefa16e3bd1dbfc7eb56b42c303f43efa2" [label="/bin/sh -c sudo chown ${USER}:root ${HOME}/.vnc/xstartup" shape="box"];
  "sha256:04ba0e12f508f0513c1fb179c58716d1b7a3e3a7fb1cf7cbe89504592d36f765" [label="/bin/sh -c /bin/echo -e \"export DISPLAY=${DISPLAY}\\n[ -r ${HOME}/.Xresources ] && xrdb ${HOME}/.Xresources\\nxsetroot -solid grey\"  >> ${HOME}/.vnc/xstartup" shape="box"];
  "sha256:76418a4bdaa563484a240b55b01df4759ece7fa3c601537cdcdbbb41b04d6134" [label="/bin/sh -c /bin/echo -e \"${INSTALLDIR}/bin/wine --bottle ${BOTTLE} \\\"c:\\\\\\\\\\\\\\\\Program Files\\\\\\\\\\\\\\\\Lyx\\\\\\\\\\\\\\\\LuYouXia.exe\\\"\" >> ${HOME}/.vnc/xstartup" shape="box"];
  "sha256:d1f741a771be794f09c3eb9a4b46ad23f9d234c16abc0da8ce0043a9b15361eb" [label="/bin/sh -c /bin/echo -e \"tail -f /dev/null\" >> ${HOME}/.vnc/xstartup" shape="box"];
  "sha256:e9196fc8e2ee797828a84c004e0ad3bf645915e8250477ea3ec7de3551f5da62" [label="sha256:e9196fc8e2ee797828a84c004e0ad3bf645915e8250477ea3ec7de3551f5da62" shape="plaintext"];
  "sha256:7206e5b70813106cdfa1b5a0b0b7f170ef924f56d82a756db673cda8de79577a" -> "sha256:9359a24d7092cc5a6d76739afb8609e7519d4d397e5ec028965c5f39df900895" [label=""];
  "sha256:9359a24d7092cc5a6d76739afb8609e7519d4d397e5ec028965c5f39df900895" -> "sha256:7046343a63f6ab44c310a955523b172341eb82611f557e5017e4fb79ccebebc4" [label=""];
  "sha256:7046343a63f6ab44c310a955523b172341eb82611f557e5017e4fb79ccebebc4" -> "sha256:44a259d0a48e3cf5a446c79b040356054f4db2a76fd8acdadf6295b5261fa1cc" [label=""];
  "sha256:44a259d0a48e3cf5a446c79b040356054f4db2a76fd8acdadf6295b5261fa1cc" -> "sha256:b7435222eeeebef3e479d6524446b2d4b206235d466baa47bb524916a73a7d13" [label=""];
  "sha256:b7435222eeeebef3e479d6524446b2d4b206235d466baa47bb524916a73a7d13" -> "sha256:32d24989b2dffd76ab075f1dd28ce2ef7911d7908c5c64f3219b428ca5074fad" [label=""];
  "sha256:32d24989b2dffd76ab075f1dd28ce2ef7911d7908c5c64f3219b428ca5074fad" -> "sha256:2ba61d83fddbde1f4ebaa92bdb286cc0989672ae929d16db78946162139e6653" [label=""];
  "sha256:2ba61d83fddbde1f4ebaa92bdb286cc0989672ae929d16db78946162139e6653" -> "sha256:27d4cbd6abb1f2daad750ec0941ad761af74a62124e2efa9c479e7d6b387b855" [label=""];
  "sha256:27d4cbd6abb1f2daad750ec0941ad761af74a62124e2efa9c479e7d6b387b855" -> "sha256:3018f66208e0b90e12af7ad6295bc9767df3e37faf5d76c800009ccef370509a" [label=""];
  "sha256:757241a665de95af1a16f415db0797583f4c7631c11152ed7e57332ef8c3a899" -> "sha256:3018f66208e0b90e12af7ad6295bc9767df3e37faf5d76c800009ccef370509a" [label=""];
  "sha256:3018f66208e0b90e12af7ad6295bc9767df3e37faf5d76c800009ccef370509a" -> "sha256:ccc3bf8cb87e3e3049d282c34884d0cefa16e3bd1dbfc7eb56b42c303f43efa2" [label=""];
  "sha256:ccc3bf8cb87e3e3049d282c34884d0cefa16e3bd1dbfc7eb56b42c303f43efa2" -> "sha256:04ba0e12f508f0513c1fb179c58716d1b7a3e3a7fb1cf7cbe89504592d36f765" [label=""];
  "sha256:04ba0e12f508f0513c1fb179c58716d1b7a3e3a7fb1cf7cbe89504592d36f765" -> "sha256:76418a4bdaa563484a240b55b01df4759ece7fa3c601537cdcdbbb41b04d6134" [label=""];
  "sha256:76418a4bdaa563484a240b55b01df4759ece7fa3c601537cdcdbbb41b04d6134" -> "sha256:d1f741a771be794f09c3eb9a4b46ad23f9d234c16abc0da8ce0043a9b15361eb" [label=""];
  "sha256:d1f741a771be794f09c3eb9a4b46ad23f9d234c16abc0da8ce0043a9b15361eb" -> "sha256:e9196fc8e2ee797828a84c004e0ad3bf645915e8250477ea3ec7de3551f5da62" [label=""];
}

