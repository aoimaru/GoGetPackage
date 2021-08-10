[app/sources/209067611.Dockerfile]
digraph {
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" [label="docker-image://docker.io/resin/rpi-raspbian:jessie" shape="ellipse"];
  "sha256:cbd3b8958a67efcfda4a35bb26e7b1d59760c2ce7daad6d075eaf90d1e53bcae" [label="mkdir{path=/root}" shape="note"];
  "sha256:cd57dbf677ffb9c79440faeebf0c88dd0060d611d224472f9d4eb7849b09e082" [label="/bin/sh -c apt-get update && apt-get upgrade && apt-get install -y         build-essential         libncursesw5-dev         libgdbm-dev         libc6-dev         zlib1g-dev         libsqlite3-dev         tk-dev         libssl-dev         openssl         libbz2-dev" shape="box"];
  "sha256:0caa9b121c9c9c3389aca368c5fd83502c719a27775f3f3f1ef36d1c938d2223" [label="/bin/sh -c apt-get install -y ca-certificates" shape="box"];
  "sha256:5cce9ab118fa9e732be5e213e16aa682063d63cc4e847c2426f2e56b204a7b18" [label="https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz" shape="ellipse"];
  "sha256:69d40f797562e38a65bfec18db4bb6e497d7d1961f9fdf40df68b43ecdbb9955" [label="copy{src=/Python-3.6.0.tgz, dest=/root/Python-3.6.0.tgz}" shape="note"];
  "sha256:b4113c2b10dc169354861876b91cfe453388b8c278bae2f02cba548c80204d06" [label="/bin/sh -c tar zxvf \"Python-${PYTHON_VERSION}.tgz\"         && cd Python-${PYTHON_VERSION}         && ./configure         && make         && make install         && cd ..         && rm -rf \"./Python-${PYTHON_VERSION}\"         && rm \"./Python-${PYTHON_VERSION}.tgz\"" shape="box"];
  "sha256:d813143f712873dc00e188020e7d23540b115c204d1581b076c69da7dd9e63f5" [label="/bin/sh -c apt-get install -y libncurses5-dev" shape="box"];
  "sha256:d171702bf4e6421c389869d74d832d6fa3b89963c541d90d4702945fda56a5d0" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:cd7299266d3665fc3693a5c8a451376244d1446f61ab35921325713aa984dd89" [label="/bin/sh -c pip3 install readline jupyter" shape="box"];
  "sha256:06540db85b2329c5fc4ab0f7dbf490088e5ae79bd30a2792b3a3e5800b87d2bd" [label="/bin/sh -c jupyter notebook --generate-config" shape="box"];
  "sha256:cd9a067f0b543a37baf7402d124ce212669d57148c7e8f1659c6c4dfbe1fc9d1" [label="/bin/sh -c mkdir notebooks" shape="box"];
  "sha256:165c2e5f07511f7ad4770c97d80ebb23dc2544a7d09ee228784d84dcb3818b00" [label="/bin/sh -c sed -i \"/c.NotebookApp.open_browser/c c.NotebookApp.open_browser = False\" /root/.jupyter/jupyter_notebook_config.py         && sed -i \"/c.NotebookApp.ip/c c.NotebookApp.ip = '*'\" /root/.jupyter/jupyter_notebook_config.py         && sed -i \"/c.NotebookApp.notebook_dir/c c.NotebookApp.notebook_dir = '/root/notebooks'\" /root/.jupyter/jupyter_notebook_config.py" shape="box"];
  "sha256:cdea655bbc2386f72f87992169dab1fe346c38c69ce5c37947edda226fce4546" [label="https://github.com/krallin/tini/archive/v0.14.0.tar.gz" shape="ellipse"];
  "sha256:052c63724d3a31ddc0799908ddfd4525ff72b8fdc2e2b6f75d20ed13de0b397b" [label="copy{src=/v0.14.0.tar.gz, dest=/root/v0.14.0.tar.gz}" shape="note"];
  "sha256:e81f8df88008905f007a3ad5c243f65d6df64f2953c4d709bf9e671e7a73d9d4" [label="/bin/sh -c apt-get install -y cmake" shape="box"];
  "sha256:e0447c447dc2bdaca19532222541d9eaafddd32a5a6c55fcc7099f8c28297280" [label="/bin/sh -c tar zxvf v${TINI_VERSION}.tar.gz         && cd tini-${TINI_VERSION}         && cmake .         && make         && cp tini /usr/bin/.         && cd ..         && rm -rf \"./tini-${TINI_VERSION}\"         && rm \"./v${TINI_VERSION}.tar.gz\"" shape="box"];
  "sha256:4e4612f0cafedb0c23e14182988324d107b2b58a08d549150588e1b78a16e113" [label="sha256:4e4612f0cafedb0c23e14182988324d107b2b58a08d549150588e1b78a16e113" shape="plaintext"];
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" -> "sha256:cbd3b8958a67efcfda4a35bb26e7b1d59760c2ce7daad6d075eaf90d1e53bcae" [label=""];
  "sha256:cbd3b8958a67efcfda4a35bb26e7b1d59760c2ce7daad6d075eaf90d1e53bcae" -> "sha256:cd57dbf677ffb9c79440faeebf0c88dd0060d611d224472f9d4eb7849b09e082" [label=""];
  "sha256:cd57dbf677ffb9c79440faeebf0c88dd0060d611d224472f9d4eb7849b09e082" -> "sha256:0caa9b121c9c9c3389aca368c5fd83502c719a27775f3f3f1ef36d1c938d2223" [label=""];
  "sha256:0caa9b121c9c9c3389aca368c5fd83502c719a27775f3f3f1ef36d1c938d2223" -> "sha256:69d40f797562e38a65bfec18db4bb6e497d7d1961f9fdf40df68b43ecdbb9955" [label=""];
  "sha256:5cce9ab118fa9e732be5e213e16aa682063d63cc4e847c2426f2e56b204a7b18" -> "sha256:69d40f797562e38a65bfec18db4bb6e497d7d1961f9fdf40df68b43ecdbb9955" [label=""];
  "sha256:69d40f797562e38a65bfec18db4bb6e497d7d1961f9fdf40df68b43ecdbb9955" -> "sha256:b4113c2b10dc169354861876b91cfe453388b8c278bae2f02cba548c80204d06" [label=""];
  "sha256:b4113c2b10dc169354861876b91cfe453388b8c278bae2f02cba548c80204d06" -> "sha256:d813143f712873dc00e188020e7d23540b115c204d1581b076c69da7dd9e63f5" [label=""];
  "sha256:d813143f712873dc00e188020e7d23540b115c204d1581b076c69da7dd9e63f5" -> "sha256:d171702bf4e6421c389869d74d832d6fa3b89963c541d90d4702945fda56a5d0" [label=""];
  "sha256:d171702bf4e6421c389869d74d832d6fa3b89963c541d90d4702945fda56a5d0" -> "sha256:cd7299266d3665fc3693a5c8a451376244d1446f61ab35921325713aa984dd89" [label=""];
  "sha256:cd7299266d3665fc3693a5c8a451376244d1446f61ab35921325713aa984dd89" -> "sha256:06540db85b2329c5fc4ab0f7dbf490088e5ae79bd30a2792b3a3e5800b87d2bd" [label=""];
  "sha256:06540db85b2329c5fc4ab0f7dbf490088e5ae79bd30a2792b3a3e5800b87d2bd" -> "sha256:cd9a067f0b543a37baf7402d124ce212669d57148c7e8f1659c6c4dfbe1fc9d1" [label=""];
  "sha256:cd9a067f0b543a37baf7402d124ce212669d57148c7e8f1659c6c4dfbe1fc9d1" -> "sha256:165c2e5f07511f7ad4770c97d80ebb23dc2544a7d09ee228784d84dcb3818b00" [label=""];
  "sha256:165c2e5f07511f7ad4770c97d80ebb23dc2544a7d09ee228784d84dcb3818b00" -> "sha256:052c63724d3a31ddc0799908ddfd4525ff72b8fdc2e2b6f75d20ed13de0b397b" [label=""];
  "sha256:cdea655bbc2386f72f87992169dab1fe346c38c69ce5c37947edda226fce4546" -> "sha256:052c63724d3a31ddc0799908ddfd4525ff72b8fdc2e2b6f75d20ed13de0b397b" [label=""];
  "sha256:052c63724d3a31ddc0799908ddfd4525ff72b8fdc2e2b6f75d20ed13de0b397b" -> "sha256:e81f8df88008905f007a3ad5c243f65d6df64f2953c4d709bf9e671e7a73d9d4" [label=""];
  "sha256:e81f8df88008905f007a3ad5c243f65d6df64f2953c4d709bf9e671e7a73d9d4" -> "sha256:e0447c447dc2bdaca19532222541d9eaafddd32a5a6c55fcc7099f8c28297280" [label=""];
  "sha256:e0447c447dc2bdaca19532222541d9eaafddd32a5a6c55fcc7099f8c28297280" -> "sha256:4e4612f0cafedb0c23e14182988324d107b2b58a08d549150588e1b78a16e113" [label=""];
}

