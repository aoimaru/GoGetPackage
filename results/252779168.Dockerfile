[app/sources/252779168.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:aca1ec861823580a39f2f585470ced2d7a5475065c9f92ff996f84e141acf832" [label="/bin/sh -c apt-get update && apt-get -y install openssh-server && rm -rf /var/lib/apt/lists/* && mkdir -p /var/run/sshd && rm -f /etc/ssh/ssh_host_*key*" shape="box"];
  "sha256:9406798dc17a3f1b7b6542a10fdcad2ba60d7d243adb2f9125f796f0315269f3" [label="local://context" shape="ellipse"];
  "sha256:c271ae6bd0bb8186e34e7445ebb17090721660007244cf9bf3a3caf86596f0ab" [label="copy{src=/sshd_config, dest=/etc/ssh/sshd_config}" shape="note"];
  "sha256:13ca53f5f3dfed4aee762f9f2ede50f73f1e1245bd99af163e7664d82a465b15" [label="copy{src=/entrypoint, dest=/}" shape="note"];
  "sha256:58d520539b726b092d8be86356a0a52358ba0bf80faffcb78ab0cc958a3a2d29" [label="sha256:58d520539b726b092d8be86356a0a52358ba0bf80faffcb78ab0cc958a3a2d29" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:aca1ec861823580a39f2f585470ced2d7a5475065c9f92ff996f84e141acf832" [label=""];
  "sha256:aca1ec861823580a39f2f585470ced2d7a5475065c9f92ff996f84e141acf832" -> "sha256:c271ae6bd0bb8186e34e7445ebb17090721660007244cf9bf3a3caf86596f0ab" [label=""];
  "sha256:9406798dc17a3f1b7b6542a10fdcad2ba60d7d243adb2f9125f796f0315269f3" -> "sha256:c271ae6bd0bb8186e34e7445ebb17090721660007244cf9bf3a3caf86596f0ab" [label=""];
  "sha256:c271ae6bd0bb8186e34e7445ebb17090721660007244cf9bf3a3caf86596f0ab" -> "sha256:13ca53f5f3dfed4aee762f9f2ede50f73f1e1245bd99af163e7664d82a465b15" [label=""];
  "sha256:9406798dc17a3f1b7b6542a10fdcad2ba60d7d243adb2f9125f796f0315269f3" -> "sha256:13ca53f5f3dfed4aee762f9f2ede50f73f1e1245bd99af163e7664d82a465b15" [label=""];
  "sha256:13ca53f5f3dfed4aee762f9f2ede50f73f1e1245bd99af163e7664d82a465b15" -> "sha256:58d520539b726b092d8be86356a0a52358ba0bf80faffcb78ab0cc958a3a2d29" [label=""];
}

