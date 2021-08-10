[app/sources/293369580.Dockerfile]
digraph {
  "sha256:505fecf0aa56f1c1346f9adcce828442b8c7ed3e358ad3172d35a9b51ee65216" [label="docker-image://docker.io/library/ubuntu:xenial-20180417" shape="ellipse"];
  "sha256:43a184aeba97c723d30d81ff8f5a4223fc4c93a533795dc31c4aaa49cfa484b1" [label="/bin/sh -c sed -e s%http://archive.ubuntu.com/ubuntu/%mirror://mirrors.ubuntu.com/mirrors.txt% -i /etc/apt/sources.list" shape="box"];
  "sha256:402ac29976f63a0730635a7c791e693c32e2c5ed43b2d33836a629e131edee04" [label="/bin/sh -c apt-get update  && apt-get dist-upgrade -y" shape="box"];
  "sha256:6647dd2fe0027b2200b0610fbbc336c44081fc0894fee01f1a5fca83af0cb3c8" [label="/bin/sh -c apt-get install --no-install-recommends -y firefox ttf-wqy-microhei" shape="box"];
  "sha256:40796aa9abcd299d4f7856eab2fdf66a8a8a164018ddf42c72608d0d8eaa6539" [label="/bin/sh -c apt-get install -y locales  && locale-gen zh_TW zh_TW.UTF-8 zh_CN zh_CN.UTF-8 en" shape="box"];
  "sha256:ea5b776d4d57d39642061acbc4b1f5efdc67578a6f854f64c3f573ce1c427257" [label="/bin/sh -c apt-get install -y tzdata  && ln -fs /usr/share/zoneinfo/Asia/Taipei /etc/localtime" shape="box"];
  "sha256:104ca76034b5aee1c168c80bfe0a381025edee251f273c3d842a1d603e44d947" [label="/bin/sh -c apt-get install --no-install-recommends -y pcscd pcsc-tools" shape="box"];
  "sha256:23242836a922ddf5f8c17d6fd61a25780dd89fd99d02367aee5342f07029dd1a" [label="/bin/sh -c apt-get install -y sudo  && echo \"firefox ALL=NOPASSWD: /bin/su, /etc/init.d/pcscd, /usr/sbin/pcscd, /usr/local/share/NHIICC/mLNHIICC\" >> /etc/sudoers.d/firefox" shape="box"];
  "sha256:97eaf4144a3afcd3190c1d95efcca4541523cc673e298010a524566f2f72cbfb" [label="/bin/sh -c echo 'pref(\"browser.startup.homepage\", \"https://efile.tax.nat.gov.tw/irxw/index.jsp\");' >> /etc/firefox/syspref.js  && echo 'pref(\"privacy.cpd.passwords\", true);' >> /etc/firefox/syspref.js  && echo 'pref(\"toolkit.telemetry.reportingpolicy.firstRun\", false);' >> /etc/firefox/syspref.js" shape="box"];
  "sha256:42f922b8ba936975700331df97a623777db18cbdb43c01f59ba8230ac0b04b1e" [label="/bin/sh -c apt-get install --no-install-recommends -y wget unzip" shape="box"];
  "sha256:adfe55e34deb00116c67980ffe3156b05d8750c0a8f91aa5da0f8e7c137c6996" [label="/bin/sh -c wget -O /dev/stdout http://moica.nat.gov.tw/download/File/HiPKILocalSignServer/linux/HiPKILocalSignServerApp.tar.gz | tar zxvf - -C /usr/local" shape="box"];
  "sha256:1ea14e4c1d7d7c713d6b45d0a039929b40de428809dc0eb1c0386ab90cb348cf" [label="/bin/sh -c wget --no-check-certificate -P /tmp https://cloudicweb.nhi.gov.tw/cloudic/system/SMC/mLNHIICC_Setup.Ubuntu.zip  && unzip -d /tmp /tmp/mLNHIICC_Setup.Ubuntu.zip mLNHIICC_Setup.Ubuntu16.tar.gz  && tar zxvf /tmp/mLNHIICC_Setup.Ubuntu16.tar.gz -C /usr/local  && cd /usr/local/mLNHIICC_Setup/ && ./Install" shape="box"];
  "sha256:5021d8631fa4ca3a3ca61d97b7659aa29d13c4a646d16415c8d322edd68df6d5" [label="/bin/sh -c apt-get remove --purge -y wget unzip  && apt-get autoremove -y  && apt-get clean -y" shape="box"];
  "sha256:7e1951fa6156db632976f0a844c6fef8dfd86d12e44e7cc96e8bc9673331fc90" [label="/bin/sh -c rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:3f430e425162845836069f8f735301d9385393bb541185ece9f7ac9033636e82" [label="local://context" shape="ellipse"];
  "sha256:aecd4aa0efbaa3e4256ab37ace6f55e9b7f1be8dae73d6506d15e3a6de6f52bd" [label="copy{src=/start.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:dcc9763604069cf1a8935687ebf6e1667123fb392aa02ff81b4fac4d3bd15e44" [label="/bin/sh -c chmod 755 /usr/local/bin/start.sh" shape="box"];
  "sha256:74beeb542e769b2a881a5de2d837b68d4b56f7ac49a17545be3a90c8fe701881" [label="/bin/sh -c useradd --create-home firefox" shape="box"];
  "sha256:a1cc13b4a855e909bf5f8ffe5eaeadf9c9a79edc9046d18895eee4decceb52fa" [label="sha256:a1cc13b4a855e909bf5f8ffe5eaeadf9c9a79edc9046d18895eee4decceb52fa" shape="plaintext"];
  "sha256:505fecf0aa56f1c1346f9adcce828442b8c7ed3e358ad3172d35a9b51ee65216" -> "sha256:43a184aeba97c723d30d81ff8f5a4223fc4c93a533795dc31c4aaa49cfa484b1" [label=""];
  "sha256:43a184aeba97c723d30d81ff8f5a4223fc4c93a533795dc31c4aaa49cfa484b1" -> "sha256:402ac29976f63a0730635a7c791e693c32e2c5ed43b2d33836a629e131edee04" [label=""];
  "sha256:402ac29976f63a0730635a7c791e693c32e2c5ed43b2d33836a629e131edee04" -> "sha256:6647dd2fe0027b2200b0610fbbc336c44081fc0894fee01f1a5fca83af0cb3c8" [label=""];
  "sha256:6647dd2fe0027b2200b0610fbbc336c44081fc0894fee01f1a5fca83af0cb3c8" -> "sha256:40796aa9abcd299d4f7856eab2fdf66a8a8a164018ddf42c72608d0d8eaa6539" [label=""];
  "sha256:40796aa9abcd299d4f7856eab2fdf66a8a8a164018ddf42c72608d0d8eaa6539" -> "sha256:ea5b776d4d57d39642061acbc4b1f5efdc67578a6f854f64c3f573ce1c427257" [label=""];
  "sha256:ea5b776d4d57d39642061acbc4b1f5efdc67578a6f854f64c3f573ce1c427257" -> "sha256:104ca76034b5aee1c168c80bfe0a381025edee251f273c3d842a1d603e44d947" [label=""];
  "sha256:104ca76034b5aee1c168c80bfe0a381025edee251f273c3d842a1d603e44d947" -> "sha256:23242836a922ddf5f8c17d6fd61a25780dd89fd99d02367aee5342f07029dd1a" [label=""];
  "sha256:23242836a922ddf5f8c17d6fd61a25780dd89fd99d02367aee5342f07029dd1a" -> "sha256:97eaf4144a3afcd3190c1d95efcca4541523cc673e298010a524566f2f72cbfb" [label=""];
  "sha256:97eaf4144a3afcd3190c1d95efcca4541523cc673e298010a524566f2f72cbfb" -> "sha256:42f922b8ba936975700331df97a623777db18cbdb43c01f59ba8230ac0b04b1e" [label=""];
  "sha256:42f922b8ba936975700331df97a623777db18cbdb43c01f59ba8230ac0b04b1e" -> "sha256:adfe55e34deb00116c67980ffe3156b05d8750c0a8f91aa5da0f8e7c137c6996" [label=""];
  "sha256:adfe55e34deb00116c67980ffe3156b05d8750c0a8f91aa5da0f8e7c137c6996" -> "sha256:1ea14e4c1d7d7c713d6b45d0a039929b40de428809dc0eb1c0386ab90cb348cf" [label=""];
  "sha256:1ea14e4c1d7d7c713d6b45d0a039929b40de428809dc0eb1c0386ab90cb348cf" -> "sha256:5021d8631fa4ca3a3ca61d97b7659aa29d13c4a646d16415c8d322edd68df6d5" [label=""];
  "sha256:5021d8631fa4ca3a3ca61d97b7659aa29d13c4a646d16415c8d322edd68df6d5" -> "sha256:7e1951fa6156db632976f0a844c6fef8dfd86d12e44e7cc96e8bc9673331fc90" [label=""];
  "sha256:7e1951fa6156db632976f0a844c6fef8dfd86d12e44e7cc96e8bc9673331fc90" -> "sha256:aecd4aa0efbaa3e4256ab37ace6f55e9b7f1be8dae73d6506d15e3a6de6f52bd" [label=""];
  "sha256:3f430e425162845836069f8f735301d9385393bb541185ece9f7ac9033636e82" -> "sha256:aecd4aa0efbaa3e4256ab37ace6f55e9b7f1be8dae73d6506d15e3a6de6f52bd" [label=""];
  "sha256:aecd4aa0efbaa3e4256ab37ace6f55e9b7f1be8dae73d6506d15e3a6de6f52bd" -> "sha256:dcc9763604069cf1a8935687ebf6e1667123fb392aa02ff81b4fac4d3bd15e44" [label=""];
  "sha256:dcc9763604069cf1a8935687ebf6e1667123fb392aa02ff81b4fac4d3bd15e44" -> "sha256:74beeb542e769b2a881a5de2d837b68d4b56f7ac49a17545be3a90c8fe701881" [label=""];
  "sha256:74beeb542e769b2a881a5de2d837b68d4b56f7ac49a17545be3a90c8fe701881" -> "sha256:a1cc13b4a855e909bf5f8ffe5eaeadf9c9a79edc9046d18895eee4decceb52fa" [label=""];
}

