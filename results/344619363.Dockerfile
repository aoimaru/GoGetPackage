[app/sources/344619363.Dockerfile]
digraph {
  "sha256:5dd46e1179637dced870a7d19f5df32bac91839840db2712b5d085d68301f0fc" [label="docker-image://docker.io/openshifttools/oso-centos7-ops-base:latest" shape="ellipse"];
  "sha256:34b6f0dfa0850571baa18a55db08243e4c000e7275d1c32ddbd8a5aa8fe22939" [label="/bin/sh -c test \"$OO_PAUSE_ON_BUILD\" = \"true\" && while sleep 10; do true; done || :" shape="box"];
  "sha256:f9b294bd9147a92e9dc3eb9e0977854f327899ebd4180666304aeebbc2a69635" [label="local://context" shape="ellipse"];
  "sha256:18f52daf61120ddfb162b36b91af3f9ba7f3c8d94c3242462f0515143cfbd520" [label="copy{src=/start.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:68010af1d3c2d85b90764c27f99e28c3ee358841a63eed449530266e98f1dd22" [label="/bin/sh -c yum-install-check.sh -y         httpd         inotify-tools         mod_ssl         openssh-server         &&     yum -y update && yum clean all" shape="box"];
  "sha256:1044ffbedd532f855d540790a9632cc5bfbb3826de1b6b0decb992bbc82b63f3" [label="copy{src=/sshd_config, dest=/etc/ssh/sshd_config}" shape="note"];
  "sha256:46155ae65e2ee1748d9ba77b587a4850b469c65789225adf20bbf14f6c95108e" [label="copy{src=/ssl.conf, dest=/etc/httpd/conf.d/ssl.conf}" shape="note"];
  "sha256:c09af3fa775942c22c0c8d896559c212c37d958af73c85196ccd25972a9bfed1" [label="/bin/sh -c chmod g+r /etc/pki/tls/certs/localhost.crt /etc/pki/tls/private/localhost.key" shape="box"];
  "sha256:c1942992ff269fd67f37c8472de3d020a0d52335438378188bcbb00a386bfd38" [label="copy{src=/root, dest=/root/}" shape="note"];
  "sha256:e9e83b8ea88172ae13b1e5689b9082eeacd37f15d9c31fcae88994d6962dc9a6" [label="/bin/sh -c mkdir -p /persistent" shape="box"];
  "sha256:fe76e001f70d3079f3732c0325b46f559d20670f1a1efcd1e3474c7e4b64c9b1" [label="/bin/sh -c mkdir -p /configdata" shape="box"];
  "sha256:6dfad47886080029ff70bb3057f8b750ccad6f90a95ba98ff31df2e4beed70f2" [label="/bin/sh -c mkdir -p /run/httpd &&     chmod -R g+rwX /home /etc/httpd /etc/passwd /etc/group /run /var/log &&     chgrp -R root /run/ /var/log &&     ansible-playbook /root/build.yaml &&     rm -rf /root/.ansible" shape="box"];
  "sha256:1fd98a11bb8bca5d5a17291b49ae375f8f3947ec4d3a272920f3861ef0cfe180" [label="sha256:1fd98a11bb8bca5d5a17291b49ae375f8f3947ec4d3a272920f3861ef0cfe180" shape="plaintext"];
  "sha256:5dd46e1179637dced870a7d19f5df32bac91839840db2712b5d085d68301f0fc" -> "sha256:34b6f0dfa0850571baa18a55db08243e4c000e7275d1c32ddbd8a5aa8fe22939" [label=""];
  "sha256:34b6f0dfa0850571baa18a55db08243e4c000e7275d1c32ddbd8a5aa8fe22939" -> "sha256:18f52daf61120ddfb162b36b91af3f9ba7f3c8d94c3242462f0515143cfbd520" [label=""];
  "sha256:f9b294bd9147a92e9dc3eb9e0977854f327899ebd4180666304aeebbc2a69635" -> "sha256:18f52daf61120ddfb162b36b91af3f9ba7f3c8d94c3242462f0515143cfbd520" [label=""];
  "sha256:18f52daf61120ddfb162b36b91af3f9ba7f3c8d94c3242462f0515143cfbd520" -> "sha256:68010af1d3c2d85b90764c27f99e28c3ee358841a63eed449530266e98f1dd22" [label=""];
  "sha256:68010af1d3c2d85b90764c27f99e28c3ee358841a63eed449530266e98f1dd22" -> "sha256:1044ffbedd532f855d540790a9632cc5bfbb3826de1b6b0decb992bbc82b63f3" [label=""];
  "sha256:f9b294bd9147a92e9dc3eb9e0977854f327899ebd4180666304aeebbc2a69635" -> "sha256:1044ffbedd532f855d540790a9632cc5bfbb3826de1b6b0decb992bbc82b63f3" [label=""];
  "sha256:1044ffbedd532f855d540790a9632cc5bfbb3826de1b6b0decb992bbc82b63f3" -> "sha256:46155ae65e2ee1748d9ba77b587a4850b469c65789225adf20bbf14f6c95108e" [label=""];
  "sha256:f9b294bd9147a92e9dc3eb9e0977854f327899ebd4180666304aeebbc2a69635" -> "sha256:46155ae65e2ee1748d9ba77b587a4850b469c65789225adf20bbf14f6c95108e" [label=""];
  "sha256:46155ae65e2ee1748d9ba77b587a4850b469c65789225adf20bbf14f6c95108e" -> "sha256:c09af3fa775942c22c0c8d896559c212c37d958af73c85196ccd25972a9bfed1" [label=""];
  "sha256:c09af3fa775942c22c0c8d896559c212c37d958af73c85196ccd25972a9bfed1" -> "sha256:c1942992ff269fd67f37c8472de3d020a0d52335438378188bcbb00a386bfd38" [label=""];
  "sha256:f9b294bd9147a92e9dc3eb9e0977854f327899ebd4180666304aeebbc2a69635" -> "sha256:c1942992ff269fd67f37c8472de3d020a0d52335438378188bcbb00a386bfd38" [label=""];
  "sha256:c1942992ff269fd67f37c8472de3d020a0d52335438378188bcbb00a386bfd38" -> "sha256:e9e83b8ea88172ae13b1e5689b9082eeacd37f15d9c31fcae88994d6962dc9a6" [label=""];
  "sha256:e9e83b8ea88172ae13b1e5689b9082eeacd37f15d9c31fcae88994d6962dc9a6" -> "sha256:fe76e001f70d3079f3732c0325b46f559d20670f1a1efcd1e3474c7e4b64c9b1" [label=""];
  "sha256:fe76e001f70d3079f3732c0325b46f559d20670f1a1efcd1e3474c7e4b64c9b1" -> "sha256:6dfad47886080029ff70bb3057f8b750ccad6f90a95ba98ff31df2e4beed70f2" [label=""];
  "sha256:6dfad47886080029ff70bb3057f8b750ccad6f90a95ba98ff31df2e4beed70f2" -> "sha256:1fd98a11bb8bca5d5a17291b49ae375f8f3947ec4d3a272920f3861ef0cfe180" [label=""];
}

