[app/sources/443335312.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:8002fcba39d0e3364fab2023bedc8beef4aba982ee2ff7feb5a6719ddea552a3" [label="/bin/sh -c apt-get update &&     apt-get -y install     openssh-server     sudo     procps     wget     unzip     mc     locales     ca-certificates     curl &&     mkdir /var/run/sshd &&     sed 's@session\\s*required\\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd &&     echo \"%sudo ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers &&     useradd -u 1000 -G users,sudo -d /home/user --shell /bin/bash -m user" shape="box"];
  "sha256:2e16daf4ff5845af89113e2dc8c8123564a32c49948eb6c78e9fbe36b91a49b4" [label="/bin/sh -c PASS=$(openssl rand -base64 32) &&     echo \"$PASS\\n$PASS\" | passwd user &&     sudo echo -e \"deb http://ppa.launchpad.net/git-core/ppa/ubuntu precise main\\ndeb-src http://ppa.launchpad.net/git-core/ppa/ubuntu precise main\" >> /etc/apt/sources.list.d/sources.list &&     sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A1715D88E1DF1F24 &&     sudo apt-get install git subversion -y &&     apt-get clean &&     wget    --no-cookies    --no-check-certificate    --header \"Cookie: oraclelicense=accept-securebackup-cookie\"    -qO-    \"http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-b17/jre-$JAVA_VERSION-linux-x64.tar.gz\" | tar -zx -C /opt/ &&     apt-get -y autoremove     && apt-get -y clean     && rm -rf /var/lib/apt/lists/* &&     echo \"#! /bin/bash\\n set -e\\n sudo /usr/sbin/sshd -D &\\n exec \\\"\\$@\\\"\" > /home/user/entrypoint.sh && chmod a+x /home/user/entrypoint.sh" shape="box"];
  "sha256:1fe82008dae043f0635de59523095983c1c6337e71b356637b0d8faa9e4f861e" [label="/bin/sh -c echo \"export JAVA_HOME=/opt/jre$JAVA_VERSION_PREFIX\\nexport PATH=$JAVA_HOME/bin:$M2_HOME/bin:$PATH\" >> /home/user/.bashrc &&     sudo localedef -i en_US -f UTF-8 en_US.UTF-8" shape="box"];
  "sha256:e4c54074496ec79c65c075db5f1d25b5093052237018462ae2b8a5f097e87fbe" [label="mkdir{path=/projects}" shape="note"];
  "sha256:2388608794d1a8bc7c46ddd4b9d033adb9e0380c5d2b377f6e8e1e4b937267b6" [label="sha256:2388608794d1a8bc7c46ddd4b9d033adb9e0380c5d2b377f6e8e1e4b937267b6" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:8002fcba39d0e3364fab2023bedc8beef4aba982ee2ff7feb5a6719ddea552a3" [label=""];
  "sha256:8002fcba39d0e3364fab2023bedc8beef4aba982ee2ff7feb5a6719ddea552a3" -> "sha256:2e16daf4ff5845af89113e2dc8c8123564a32c49948eb6c78e9fbe36b91a49b4" [label=""];
  "sha256:2e16daf4ff5845af89113e2dc8c8123564a32c49948eb6c78e9fbe36b91a49b4" -> "sha256:1fe82008dae043f0635de59523095983c1c6337e71b356637b0d8faa9e4f861e" [label=""];
  "sha256:1fe82008dae043f0635de59523095983c1c6337e71b356637b0d8faa9e4f861e" -> "sha256:e4c54074496ec79c65c075db5f1d25b5093052237018462ae2b8a5f097e87fbe" [label=""];
  "sha256:e4c54074496ec79c65c075db5f1d25b5093052237018462ae2b8a5f097e87fbe" -> "sha256:2388608794d1a8bc7c46ddd4b9d033adb9e0380c5d2b377f6e8e1e4b937267b6" [label=""];
}

