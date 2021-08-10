[app/sources/211355728.Dockerfile]
digraph {
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:16aa3da2418ba2205c3a65f3e6b2c9bb2d3f131dc7327062b316e502ec11e8c4" [label="/bin/sh -c groupadd -r couchdb && useradd -d /opt/couchdb-lucene -g couchdb couchdb" shape="box"];
  "sha256:d13119bf52114ae6127d632f0151a966f38a5c2fdb4c8af054df839a877fe4ab" [label="/bin/sh -c gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL \"https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)\"   && curl -o /usr/local/bin/gosu.asc -fSL \"https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc\"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu" shape="box"];
  "sha256:17781a6d7c8c60913812ad228ae50800f0e0743186d3d67cdfc7dde3168761b0" [label="/bin/sh -c apt-get update   && apt-get install -y maven   && cd /usr/src   && curl -L https://github.com/rnewson/couchdb-lucene/archive/v$COUCHDB_LUCENE_VERSION.tar.gz | tar -xz   && cd couchdb-lucene-$COUCHDB_LUCENE_VERSION   && mvn" shape="box"];
  "sha256:f91399d56f7e727eb53631db7299ea786c3c967fef6ba61801bad28cbb1ea4c2" [label="/bin/sh -c cd /usr/src/couchdb-lucene-$COUCHDB_LUCENE_VERSION/target   && unzip couchdb-lucene-$COUCHDB_LUCENE_VERSION-dist.zip   && mv couchdb-lucene-$COUCHDB_LUCENE_VERSION /opt/couchdb-lucene   && rm -rf /usr/src/couchdb-lucene-*" shape="box"];
  "sha256:68c2e593d7c416251484db76aa6df7103220d9eeba77283f77e9b048a0e7756c" [label="/bin/sh -c apt-get remove --auto-remove -y maven   && rm -rf /var/lib/apt/lists/*   && sed -e 's/^host=localhost$/host=0.0.0.0/' -i /opt/couchdb-lucene/conf/couchdb-lucene.ini   && sed -e 's/localhost:5984/couchdb:5984/' -i /opt/couchdb-lucene/conf/couchdb-lucene.ini   && chown -R couchdb:couchdb /opt/couchdb-lucene" shape="box"];
  "sha256:26fbb6efc16ced765de6868aa04b9e00e52c999f8543c0272ad3563ffd7bdead" [label="local://context" shape="ellipse"];
  "sha256:23f46c5cac28ca4316f0a6d0c1d4412e2f06f25aa6e053b460dcfbcee665b8ec" [label="copy{src=/run-lucene.sh, dest=/opt/couchdb-lucene/run-lucene.sh}" shape="note"];
  "sha256:14e110c6b8f20fc688e9d99a33821b75493b3f2f3ab9a07750f23f11b6499b7b" [label="/bin/sh -c chmod +x /opt/couchdb-lucene/run-lucene.sh" shape="box"];
  "sha256:dc7a90a8bc8ac134b102e8504f42382d844437b74c7b85e35b80a9e43b4894d9" [label="mkdir{path=/opt/couchdb-lucene}" shape="note"];
  "sha256:9fcfb99a9941815dc43e7ee29de29709d70ef412d91ee3798161405012e219b8" [label="sha256:9fcfb99a9941815dc43e7ee29de29709d70ef412d91ee3798161405012e219b8" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:16aa3da2418ba2205c3a65f3e6b2c9bb2d3f131dc7327062b316e502ec11e8c4" [label=""];
  "sha256:16aa3da2418ba2205c3a65f3e6b2c9bb2d3f131dc7327062b316e502ec11e8c4" -> "sha256:d13119bf52114ae6127d632f0151a966f38a5c2fdb4c8af054df839a877fe4ab" [label=""];
  "sha256:d13119bf52114ae6127d632f0151a966f38a5c2fdb4c8af054df839a877fe4ab" -> "sha256:17781a6d7c8c60913812ad228ae50800f0e0743186d3d67cdfc7dde3168761b0" [label=""];
  "sha256:17781a6d7c8c60913812ad228ae50800f0e0743186d3d67cdfc7dde3168761b0" -> "sha256:f91399d56f7e727eb53631db7299ea786c3c967fef6ba61801bad28cbb1ea4c2" [label=""];
  "sha256:f91399d56f7e727eb53631db7299ea786c3c967fef6ba61801bad28cbb1ea4c2" -> "sha256:68c2e593d7c416251484db76aa6df7103220d9eeba77283f77e9b048a0e7756c" [label=""];
  "sha256:68c2e593d7c416251484db76aa6df7103220d9eeba77283f77e9b048a0e7756c" -> "sha256:23f46c5cac28ca4316f0a6d0c1d4412e2f06f25aa6e053b460dcfbcee665b8ec" [label=""];
  "sha256:26fbb6efc16ced765de6868aa04b9e00e52c999f8543c0272ad3563ffd7bdead" -> "sha256:23f46c5cac28ca4316f0a6d0c1d4412e2f06f25aa6e053b460dcfbcee665b8ec" [label=""];
  "sha256:23f46c5cac28ca4316f0a6d0c1d4412e2f06f25aa6e053b460dcfbcee665b8ec" -> "sha256:14e110c6b8f20fc688e9d99a33821b75493b3f2f3ab9a07750f23f11b6499b7b" [label=""];
  "sha256:14e110c6b8f20fc688e9d99a33821b75493b3f2f3ab9a07750f23f11b6499b7b" -> "sha256:dc7a90a8bc8ac134b102e8504f42382d844437b74c7b85e35b80a9e43b4894d9" [label=""];
  "sha256:dc7a90a8bc8ac134b102e8504f42382d844437b74c7b85e35b80a9e43b4894d9" -> "sha256:9fcfb99a9941815dc43e7ee29de29709d70ef412d91ee3798161405012e219b8" [label=""];
}

