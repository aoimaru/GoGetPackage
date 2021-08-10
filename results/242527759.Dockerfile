[app/sources/242527759.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:df18bca141496cc611780d652a2b99e766ba3eda7594ecb58ed89b41eb6817f7" [label="/bin/sh -c yum makecache fast     && yum -y install epel-release     && yum -y install         wget         bzip2         perl         gcc         gcc-c++        git         make         munge         munge-devel         supervisor         python-devel         python-pip         mariadb-server         mariadb-devel         psmisc         bash-completion         docker     && yum clean all" shape="box"];
  "sha256:400bdb9d68e03072c87accf26af7e716496445bff07408f00cca32591e00044f" [label="/bin/sh -c pip install Cython nose nose2" shape="box"];
  "sha256:adb80514675d251c14429cb85884c3a3212ba36bc2ce97362b57bde4a46c0909" [label="/bin/sh -c groupadd -r slurm && useradd -r -g slurm slurm" shape="box"];
  "sha256:8f70edbc4397afd2177ec24c2c2b2f326553a678b58afbc0122377f81b3b1104" [label="/bin/sh -c set -x     && wget -O slurm.tar.bz2 \"$SLURM_DOWNLOAD_URL\"     && echo \"$SLURM_DOWNLOAD_MD5\" slurm.tar.bz2 | md5sum -c -     && mkdir /usr/local/src/slurm     && tar jxf slurm.tar.bz2 -C /usr/local/src/slurm --strip-components=1     && rm slurm.tar.bz2     && cd /usr/local/src/slurm     && ./configure --enable-debug --enable-front-end --prefix=/usr        --sysconfdir=/etc/slurm --with-mysql_config=/usr/bin        --libdir=/usr/lib64     && make install     && install -D -m644 etc/cgroup.conf.example /etc/slurm/cgroup.conf.example     && install -D -m644 etc/slurm.conf.example /etc/slurm/slurm.conf.example     && install -D -m644 etc/slurm.epilog.clean /etc/slurm/slurm.epilog.clean     && install -D -m644 etc/slurmdbd.conf.example /etc/slurm/slurmdbd.conf.example     && install -D -m644 contribs/slurm_completion_help/slurm_completion.sh /etc/profile.d/slurm_completion.sh     && cd     && rm -rf /usr/local/src/slurm     && mkdir /etc/sysconfig/slurm         /var/spool/slurmd         /var/run/slurmd         /var/lib/slurmd         /var/log/slurm     && /sbin/create-munge-key" shape="box"];
  "sha256:f609302a75b6df5c67e61a7bb1edeada2eaf281a688180a90614baf7b570ad1a" [label="local://context" shape="ellipse"];
  "sha256:28af7595495f7050cde1fbe3d4f1c17736967f92c776fc99e45d83bca24740f8" [label="copy{src=/slurm.conf, dest=/etc/slurm/slurm.conf}" shape="note"];
  "sha256:42b3d1cec2e8af34e725df651d0d64dfe875aeec459353963b88a1202604d54c" [label="copy{src=/slurmdbd.conf, dest=/etc/slurm/slurmdbd.conf}" shape="note"];
  "sha256:65cca4c6fc7fc3219e15983356bc011ebb97c14835be80635241423b06a3b840" [label="copy{src=/supervisord.conf, dest=/etc/}" shape="note"];
  "sha256:d9eba257e7619e0f06a4b05da1bd151ae0777d3536a10c4966bddd7bf2fa6e9c" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:86d40c64958b288a704bedf8d06c3b016fcb0aa196bf9ebfc6e68782928a67a2" [label="sha256:86d40c64958b288a704bedf8d06c3b016fcb0aa196bf9ebfc6e68782928a67a2" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:df18bca141496cc611780d652a2b99e766ba3eda7594ecb58ed89b41eb6817f7" [label=""];
  "sha256:df18bca141496cc611780d652a2b99e766ba3eda7594ecb58ed89b41eb6817f7" -> "sha256:400bdb9d68e03072c87accf26af7e716496445bff07408f00cca32591e00044f" [label=""];
  "sha256:400bdb9d68e03072c87accf26af7e716496445bff07408f00cca32591e00044f" -> "sha256:adb80514675d251c14429cb85884c3a3212ba36bc2ce97362b57bde4a46c0909" [label=""];
  "sha256:adb80514675d251c14429cb85884c3a3212ba36bc2ce97362b57bde4a46c0909" -> "sha256:8f70edbc4397afd2177ec24c2c2b2f326553a678b58afbc0122377f81b3b1104" [label=""];
  "sha256:8f70edbc4397afd2177ec24c2c2b2f326553a678b58afbc0122377f81b3b1104" -> "sha256:28af7595495f7050cde1fbe3d4f1c17736967f92c776fc99e45d83bca24740f8" [label=""];
  "sha256:f609302a75b6df5c67e61a7bb1edeada2eaf281a688180a90614baf7b570ad1a" -> "sha256:28af7595495f7050cde1fbe3d4f1c17736967f92c776fc99e45d83bca24740f8" [label=""];
  "sha256:28af7595495f7050cde1fbe3d4f1c17736967f92c776fc99e45d83bca24740f8" -> "sha256:42b3d1cec2e8af34e725df651d0d64dfe875aeec459353963b88a1202604d54c" [label=""];
  "sha256:f609302a75b6df5c67e61a7bb1edeada2eaf281a688180a90614baf7b570ad1a" -> "sha256:42b3d1cec2e8af34e725df651d0d64dfe875aeec459353963b88a1202604d54c" [label=""];
  "sha256:42b3d1cec2e8af34e725df651d0d64dfe875aeec459353963b88a1202604d54c" -> "sha256:65cca4c6fc7fc3219e15983356bc011ebb97c14835be80635241423b06a3b840" [label=""];
  "sha256:f609302a75b6df5c67e61a7bb1edeada2eaf281a688180a90614baf7b570ad1a" -> "sha256:65cca4c6fc7fc3219e15983356bc011ebb97c14835be80635241423b06a3b840" [label=""];
  "sha256:65cca4c6fc7fc3219e15983356bc011ebb97c14835be80635241423b06a3b840" -> "sha256:d9eba257e7619e0f06a4b05da1bd151ae0777d3536a10c4966bddd7bf2fa6e9c" [label=""];
  "sha256:f609302a75b6df5c67e61a7bb1edeada2eaf281a688180a90614baf7b570ad1a" -> "sha256:d9eba257e7619e0f06a4b05da1bd151ae0777d3536a10c4966bddd7bf2fa6e9c" [label=""];
  "sha256:d9eba257e7619e0f06a4b05da1bd151ae0777d3536a10c4966bddd7bf2fa6e9c" -> "sha256:86d40c64958b288a704bedf8d06c3b016fcb0aa196bf9ebfc6e68782928a67a2" [label=""];
}

