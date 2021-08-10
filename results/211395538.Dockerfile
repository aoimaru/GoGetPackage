[app/sources/211395538.Dockerfile]
digraph {
  "sha256:d4b5873db31808cb551c236b8d5c33d6f6d2a35685c05caeb9defc21185a1e73" [label="docker-image://docker.io/library/centos:centos6.6" shape="ellipse"];
  "sha256:9674eb4a5d137bcd6e7d31660cc238e9f602c0890062a19902b9261dd39ac2d0" [label="/bin/sh -c sed -i \"s/#baseurl/baseurl/g\" /etc/yum.repos.d/CentOS-Base.repo" shape="box"];
  "sha256:3a80eaac8c49d5f5448b5195124ac39fd71d5774751debc49047f776a1422862" [label="/bin/sh -c yum -y update         && yum -y install         xz         passwd         git         tar         wget         telnet         curl         dialog         net-tools         which         vim         make         gcc         cc-++         python-tornado         python-requests         groupinstall         development         zlib-dev         openssl-devel         sqlite-devel         bzip2-devel         openssh-server         openssh-client         sudo" shape="box"];
  "sha256:b70dbcd28ccab5ebdd5c79cbb3b5920fbdd5b6994e7365451e4a62e3a0fac59f" [label="local://context" shape="ellipse"];
  "sha256:fb9fae8226ce70f6babb4ef6775a27c6609d6e9864e29f5cda71ddf6f38d4d07" [label="copy{src=/files, dest=/opt/files}" shape="note"];
  "sha256:94ba816176cd6a6208950ecedc3673284e6fe8327dddb51041dc25898b8550a4" [label="/bin/sh -c /opt/files/python_install.sh" shape="box"];
  "sha256:5a1d4df3736e801854834d416d76b103f95d8252338f8d409ed1ff4321834a0c" [label="/bin/sh -c /opt/files/user_cisco.sh" shape="box"];
  "sha256:17da357f9d0ed5dd40135dcbc865fc005f24bbd8309bb60e331f572864f23c14" [label="mkdir{path=/opt}" shape="note"];
  "sha256:9e6048f1fd493d20194f53decd8fe4435b7a3315631c9940245b7727b85e8d04" [label="/bin/sh -c su -l cisco -c 'git clone https://github.com/CiscoDevNet/pathman-sr'     && su -l cisco -c 'sed -i 's/localhost:8020/198.18.1.80:8021/g' /home/cisco/pathman-sr/client/pathman_sr/js/app.js'     && su -l cisco -c 'cp -p /opt/files/backend.sh /home/cisco'" shape="box"];
  "sha256:42858bdf75274ab7e6cd4a9e36cdc136a884d109a32374e0dcefd37cb9152c52" [label="sha256:42858bdf75274ab7e6cd4a9e36cdc136a884d109a32374e0dcefd37cb9152c52" shape="plaintext"];
  "sha256:d4b5873db31808cb551c236b8d5c33d6f6d2a35685c05caeb9defc21185a1e73" -> "sha256:9674eb4a5d137bcd6e7d31660cc238e9f602c0890062a19902b9261dd39ac2d0" [label=""];
  "sha256:9674eb4a5d137bcd6e7d31660cc238e9f602c0890062a19902b9261dd39ac2d0" -> "sha256:3a80eaac8c49d5f5448b5195124ac39fd71d5774751debc49047f776a1422862" [label=""];
  "sha256:3a80eaac8c49d5f5448b5195124ac39fd71d5774751debc49047f776a1422862" -> "sha256:fb9fae8226ce70f6babb4ef6775a27c6609d6e9864e29f5cda71ddf6f38d4d07" [label=""];
  "sha256:b70dbcd28ccab5ebdd5c79cbb3b5920fbdd5b6994e7365451e4a62e3a0fac59f" -> "sha256:fb9fae8226ce70f6babb4ef6775a27c6609d6e9864e29f5cda71ddf6f38d4d07" [label=""];
  "sha256:fb9fae8226ce70f6babb4ef6775a27c6609d6e9864e29f5cda71ddf6f38d4d07" -> "sha256:94ba816176cd6a6208950ecedc3673284e6fe8327dddb51041dc25898b8550a4" [label=""];
  "sha256:94ba816176cd6a6208950ecedc3673284e6fe8327dddb51041dc25898b8550a4" -> "sha256:5a1d4df3736e801854834d416d76b103f95d8252338f8d409ed1ff4321834a0c" [label=""];
  "sha256:5a1d4df3736e801854834d416d76b103f95d8252338f8d409ed1ff4321834a0c" -> "sha256:17da357f9d0ed5dd40135dcbc865fc005f24bbd8309bb60e331f572864f23c14" [label=""];
  "sha256:17da357f9d0ed5dd40135dcbc865fc005f24bbd8309bb60e331f572864f23c14" -> "sha256:9e6048f1fd493d20194f53decd8fe4435b7a3315631c9940245b7727b85e8d04" [label=""];
  "sha256:9e6048f1fd493d20194f53decd8fe4435b7a3315631c9940245b7727b85e8d04" -> "sha256:42858bdf75274ab7e6cd4a9e36cdc136a884d109a32374e0dcefd37cb9152c52" [label=""];
}

