[app/sources/363519660.Dockerfile]
digraph {
  "sha256:ee39e4e323933dd2f9cc4230bd3bef6013352797c64babef0fd86a1d926f1ab4" [label="docker-image://docker.io/library/solr:6.3.0" shape="ellipse"];
  "sha256:5e81cc1437c16287e949a79429ada6272f94b02369affad5c088bb5b5167bba1" [label="docker-image://docker.io/webdevops/toolbox@sha256:08774f4b10a501c725fe5fff28d05c6c6e57f99271616b7b8f4e1235324b3fc7" shape="ellipse"];
  "sha256:83736f74206f0918306e49b5e4d7bb445fa52afb011a3d1f419c1f370585ae6c" [label="/bin/sh -c mkdir -p         /baselayout/sbin         /baselayout/usr/local/bin     && wget -O /tmp/baselayout-install.sh https://raw.githubusercontent.com/webdevops/Docker-Image-Baselayout/master/install.sh     && sh /tmp/baselayout-install.sh /baselayout     && wget -O \"/baselayout/usr/local/bin/go-replace\" \"https://github.com/webdevops/goreplace/releases/download/1.1.2/gr-64-linux\"     && chmod +x \"/baselayout/usr/local/bin/go-replace\"     && \"/baselayout/usr/local/bin/go-replace\" --version     && wget -O \"/baselayout/sbin/gosu\" \"https://github.com/tianon/gosu/releases/download/1.10/gosu-amd64\"     && wget -O \"/tmp/gosu.asc\" \"https://github.com/tianon/gosu/releases/download/1.10/gosu-amd64.asc\"     && export GNUPGHOME=\"$(mktemp -d)\"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /tmp/gosu.asc \"/baselayout/sbin/gosu\"     && rm -rf \"$GNUPGHOME\" /tmp/gosu.asc     && chmod +x \"/baselayout/sbin/gosu\"     && \"/baselayout/sbin/gosu\" nobody true" shape="box"];
  "sha256:86cf929d859999fb46cceba1d9d67c3ba0f32baee1d3b6231d3980511ea5a922" [label="copy{src=/baselayout, dest=/}" shape="note"];
  "sha256:d6385ac60a61cd0ec3f28562f365dbe9be8c453a58fb729e56133ef6b6e0be47" [label="/bin/sh -c apt-update     && apt-install net-tools     && generate-dockerimage-info     && mkdir /tmp/solr     && wget -O/tmp/solr/extension.tar.gz \"https://github.com/TYPO3-Solr/ext-solr/archive/6.1.0.tar.gz\"     && cd /tmp/solr     && tar --strip 1 -zxf /tmp/solr/extension.tar.gz     && rm -rf /opt/solr/server/solr     && mv /tmp/solr/Resources/Private/Solr/ /opt/solr/server/solr     && mkdir -p /opt/solr/server/solr/data     && chown -R solr:solr /opt/solr/server/solr     && chmod 755 /opt/solr/server/solr     && cd /     && rm -rf /tmp/solr     && docker-image-cleanup" shape="box"];
  "sha256:348932601e4fce6d1de698126c9b9a20dc5345fccb0397bc21991d8e58a5f754" [label="sha256:348932601e4fce6d1de698126c9b9a20dc5345fccb0397bc21991d8e58a5f754" shape="plaintext"];
  "sha256:5e81cc1437c16287e949a79429ada6272f94b02369affad5c088bb5b5167bba1" -> "sha256:83736f74206f0918306e49b5e4d7bb445fa52afb011a3d1f419c1f370585ae6c" [label=""];
  "sha256:ee39e4e323933dd2f9cc4230bd3bef6013352797c64babef0fd86a1d926f1ab4" -> "sha256:86cf929d859999fb46cceba1d9d67c3ba0f32baee1d3b6231d3980511ea5a922" [label=""];
  "sha256:83736f74206f0918306e49b5e4d7bb445fa52afb011a3d1f419c1f370585ae6c" -> "sha256:86cf929d859999fb46cceba1d9d67c3ba0f32baee1d3b6231d3980511ea5a922" [label=""];
  "sha256:86cf929d859999fb46cceba1d9d67c3ba0f32baee1d3b6231d3980511ea5a922" -> "sha256:d6385ac60a61cd0ec3f28562f365dbe9be8c453a58fb729e56133ef6b6e0be47" [label=""];
  "sha256:d6385ac60a61cd0ec3f28562f365dbe9be8c453a58fb729e56133ef6b6e0be47" -> "sha256:348932601e4fce6d1de698126c9b9a20dc5345fccb0397bc21991d8e58a5f754" [label=""];
}

