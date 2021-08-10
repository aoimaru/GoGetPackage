[app/sources/243131740.Dockerfile]
digraph {
  "sha256:8e6606d69f390870f9e703f2b128969b23c03e4f503bb428c317bbb8e7eb85d2" [label="docker-image://docker.io/ppc64le/openjdk:8-jre" shape="ellipse"];
  "sha256:d6d92d884ec450b29d7e4ed1cf0574a5e1345e4189e2c7009214d2805a9cdb39" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends    mysql-client     postgresql-client     zip     && rm -rf /var/lib/apt/lists/*    &&  mkdir /opt/custom-init.d/    && groupadd -r bonita -g 1000     && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c \"Bonita User\" bonita    && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4    &&  mkdir /opt/files     && wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip     && echo \"$BONITA_SHA256\" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -    && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && curl -o /usr/local/bin/gosu -fSL \"https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)\"     && curl -o /usr/local/bin/gosu.asc -fSL \"https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc\"     && gpg --verify /usr/local/bin/gosu.asc     && rm /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && apt-get autoremove -y zip && apt-get clean" shape="box"];
  "sha256:069fb8b348048f351c9b3bd0d18fbb990c3ee19158881b504a449d552baf64eb" [label="local://context" shape="ellipse"];
  "sha256:b94121e10d996362d1f6c8d725fa6622fcd342404d4877ca64aeda1cc092e494" [label="copy{src=/files, dest=/opt/files}" shape="note"];
  "sha256:0729b219e40efb2f19ce0d844040631613c37c8fe018a2823c3431562d9954b7" [label="copy{src=/templates, dest=/opt/templates}" shape="note"];
  "sha256:a4dce2be1f84b3f0ac81afe2ec020acd76b36937e4998ff6c77601e69a4ecc84" [label="/bin/sh -c chmod +x /opt/files/startup.sh &&  chmod +x /opt/files/functions.sh && chmod +x /opt/files/config.sh    && chmod +x /opt/templates/setenv.sh" shape="box"];
  "sha256:137c0cff5656d6ea7c14262ba1ba99db5f1ad0c41cf9d5fc9c3d2484a86a7b01" [label="sha256:137c0cff5656d6ea7c14262ba1ba99db5f1ad0c41cf9d5fc9c3d2484a86a7b01" shape="plaintext"];
  "sha256:8e6606d69f390870f9e703f2b128969b23c03e4f503bb428c317bbb8e7eb85d2" -> "sha256:d6d92d884ec450b29d7e4ed1cf0574a5e1345e4189e2c7009214d2805a9cdb39" [label=""];
  "sha256:d6d92d884ec450b29d7e4ed1cf0574a5e1345e4189e2c7009214d2805a9cdb39" -> "sha256:b94121e10d996362d1f6c8d725fa6622fcd342404d4877ca64aeda1cc092e494" [label=""];
  "sha256:069fb8b348048f351c9b3bd0d18fbb990c3ee19158881b504a449d552baf64eb" -> "sha256:b94121e10d996362d1f6c8d725fa6622fcd342404d4877ca64aeda1cc092e494" [label=""];
  "sha256:b94121e10d996362d1f6c8d725fa6622fcd342404d4877ca64aeda1cc092e494" -> "sha256:0729b219e40efb2f19ce0d844040631613c37c8fe018a2823c3431562d9954b7" [label=""];
  "sha256:069fb8b348048f351c9b3bd0d18fbb990c3ee19158881b504a449d552baf64eb" -> "sha256:0729b219e40efb2f19ce0d844040631613c37c8fe018a2823c3431562d9954b7" [label=""];
  "sha256:0729b219e40efb2f19ce0d844040631613c37c8fe018a2823c3431562d9954b7" -> "sha256:a4dce2be1f84b3f0ac81afe2ec020acd76b36937e4998ff6c77601e69a4ecc84" [label=""];
  "sha256:a4dce2be1f84b3f0ac81afe2ec020acd76b36937e4998ff6c77601e69a4ecc84" -> "sha256:137c0cff5656d6ea7c14262ba1ba99db5f1ad0c41cf9d5fc9c3d2484a86a7b01" [label=""];
}

