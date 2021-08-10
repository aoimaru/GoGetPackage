[app/sources/202967964.Dockerfile]
digraph {
  "sha256:2633670a5bd344d91c63ad57b8423a83993bb0c9d71848ac00a125973fc0ba8f" [label="docker-image://docker.io/library/node:10-wheezy" shape="ellipse"];
  "sha256:947469397d8a823738c47819fc99d2af99b8294ae1c89cb343ef61d6292b80df" [label="/bin/sh -c set -x     && apt-get -qq update     && apt-get install -qqy apt-transport-https apt-utils     && apt-get -qq upgrade     && apt-get -qq dist-upgrade     && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -     && echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | tee /etc/apt/sources.list.d/yarn.list     && apt-get -qq update     && apt-get install -qqy         acl         git         mercurial         rsync         subversion         sudo         wget     && rm /bin/sh     && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:11028e07cecb81d61498ffedcab363dcfee2e45fe258b7830737421ca68b3d70" [label="/bin/sh -c set -x     && npm install --silent --global         gulp-cli         grunt-cli         bower         markdown-styles         npx     && curl --compressed -o- -L https://yarnpkg.com/install.sh | sh" shape="box"];
  "sha256:36be4cd625c3e56a96fa13104c21f3e89151436a7a9ebe9c1aa4a739eb420415" [label="/bin/sh -c set -x     && apt-get install -qqy locales     && locale-gen C.UTF-8 ${UTF8_LOCALE}     && dpkg-reconfigure locales     && /usr/sbin/update-locale LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8     && export LANG=C.UTF-8     && export LANGUAGE=C.UTF-8     && export LC_ALL=C.UTF-8     && echo $TIMEZONE > /etc/timezone     && dpkg-reconfigure -f noninteractive tzdata" shape="box"];
  "sha256:a756ab000f4ba5df8d2d70f9e8a7132ee7088394b598e2627255cfc8872e502b" [label="/bin/sh -c set -x     && echo \"export NLS_LANG=$(echo $NLS_LANG)\"                >> /root/.bash_profile     && echo \"export LANG=$(echo $LANG)\"                        >> /root/.bash_profile     && echo \"export LANGUAGE=$(echo $LANGUAGE)\"                >> /root/.bash_profile     && echo \"export LC_ALL=$(echo $LC_ALL)\"                    >> /root/.bash_profile     && echo \"export TERM=xterm\"                                >> /root/.bash_profile     && echo \"export PATH=$(echo $PATH)\"                        >> /root/.bash_profile     && echo \"cd /src\"                                          >> /root/.bash_profile     && echo \"source \\$HOME/.bashrc\"                            >> /root/.bash_profile     && groupadd dev     && useradd dev -s /bin/bash -m -g dev     && echo \"dev:password\" | chpasswd     && echo \"dev ALL=(ALL:ALL) NOPASSWD: ALL\" >> /etc/sudoers     && rsync -a /root/ /home/dev/     && chown -R dev:dev /home/dev/     && chmod 0777 /home/dev     && chmod -R u+rwX,g+rwX,o+rwX /home/dev     && setfacl -R -d -m user::rwx,group::rwx,other::rwx /home/dev" shape="box"];
  "sha256:08e32ed2a00b006f7fac441996aede56b81294365c34855c6c2dd3dde0b9f8c2" [label="/bin/sh -c set -x     && wget -O /run-as-user https://raw.githubusercontent.com/mkenney/docker-scripts/master/container/run-as-user     && chmod 0755 /run-as-user     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:738015cdfeeb34ef8fb552172a8bb9dc54b34baffa6becb96b0260f8b4114991" [label="mkdir{path=/src}" shape="note"];
  "sha256:2ed2cc2fd2d8c30443059670db320159e64898e021a2fd2eaa4dcb135e7d7195" [label="sha256:2ed2cc2fd2d8c30443059670db320159e64898e021a2fd2eaa4dcb135e7d7195" shape="plaintext"];
  "sha256:2633670a5bd344d91c63ad57b8423a83993bb0c9d71848ac00a125973fc0ba8f" -> "sha256:947469397d8a823738c47819fc99d2af99b8294ae1c89cb343ef61d6292b80df" [label=""];
  "sha256:947469397d8a823738c47819fc99d2af99b8294ae1c89cb343ef61d6292b80df" -> "sha256:11028e07cecb81d61498ffedcab363dcfee2e45fe258b7830737421ca68b3d70" [label=""];
  "sha256:11028e07cecb81d61498ffedcab363dcfee2e45fe258b7830737421ca68b3d70" -> "sha256:36be4cd625c3e56a96fa13104c21f3e89151436a7a9ebe9c1aa4a739eb420415" [label=""];
  "sha256:36be4cd625c3e56a96fa13104c21f3e89151436a7a9ebe9c1aa4a739eb420415" -> "sha256:a756ab000f4ba5df8d2d70f9e8a7132ee7088394b598e2627255cfc8872e502b" [label=""];
  "sha256:a756ab000f4ba5df8d2d70f9e8a7132ee7088394b598e2627255cfc8872e502b" -> "sha256:08e32ed2a00b006f7fac441996aede56b81294365c34855c6c2dd3dde0b9f8c2" [label=""];
  "sha256:08e32ed2a00b006f7fac441996aede56b81294365c34855c6c2dd3dde0b9f8c2" -> "sha256:738015cdfeeb34ef8fb552172a8bb9dc54b34baffa6becb96b0260f8b4114991" [label=""];
  "sha256:738015cdfeeb34ef8fb552172a8bb9dc54b34baffa6becb96b0260f8b4114991" -> "sha256:2ed2cc2fd2d8c30443059670db320159e64898e021a2fd2eaa4dcb135e7d7195" [label=""];
}

