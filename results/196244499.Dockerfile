[app/sources/196244499.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:c6c5f6bce8bd8c89d8278ea79352fcb15f2e87f34a5089bd7f377c62cc512e68" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     ca-certificates     curl     wget" shape="box"];
  "sha256:f430b292bc42d35b5d286dc81180be36de107b22a1a0b4e6c5107096acd761bb" [label="/bin/sh -c curl -L -O https://download.elastic.co/beats/filebeat/filebeat_1.2.2_amd64.deb &&     dpkg -i filebeat_1.2.2_amd64.deb" shape="box"];
  "sha256:8804e13532b0d3f5ed9a94c89e5e6daf3238c6c14fb7b9ac08c36c747ba22da3" [label="local://context" shape="ellipse"];
  "sha256:18c339e6d7202ddd7913befb60ca73bd646b818217ada4bfc54a63cb7f35c493" [label="copy{src=/filebeat.yml, dest=/etc/filebeat/filebeat.yml}" shape="note"];
  "sha256:5bb6a7c81ec3cfa1d16d70b25cecb574eaf7d6486da865402d240f007ed57c23" [label="sha256:5bb6a7c81ec3cfa1d16d70b25cecb574eaf7d6486da865402d240f007ed57c23" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:c6c5f6bce8bd8c89d8278ea79352fcb15f2e87f34a5089bd7f377c62cc512e68" [label=""];
  "sha256:c6c5f6bce8bd8c89d8278ea79352fcb15f2e87f34a5089bd7f377c62cc512e68" -> "sha256:f430b292bc42d35b5d286dc81180be36de107b22a1a0b4e6c5107096acd761bb" [label=""];
  "sha256:f430b292bc42d35b5d286dc81180be36de107b22a1a0b4e6c5107096acd761bb" -> "sha256:18c339e6d7202ddd7913befb60ca73bd646b818217ada4bfc54a63cb7f35c493" [label=""];
  "sha256:8804e13532b0d3f5ed9a94c89e5e6daf3238c6c14fb7b9ac08c36c747ba22da3" -> "sha256:18c339e6d7202ddd7913befb60ca73bd646b818217ada4bfc54a63cb7f35c493" [label=""];
  "sha256:18c339e6d7202ddd7913befb60ca73bd646b818217ada4bfc54a63cb7f35c493" -> "sha256:5bb6a7c81ec3cfa1d16d70b25cecb574eaf7d6486da865402d240f007ed57c23" [label=""];
}

