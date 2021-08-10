[app/sources/211162738.Dockerfile]
digraph {
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" [label="docker-image://docker.io/library/fedora:25" shape="ellipse"];
  "sha256:c76827e4674156701e4262127315c69f3baa5cf66f675de30ad0fdbdf3bcd9d4" [label="/bin/sh -c dnf --setopt=deltarpm=false -y install net-tools procps git tar bzip2 redis python3-devel gcc nss_wrapper gettext" shape="box"];
  "sha256:47aa5d621b1a7d98dfc4568dcfbb7d2c77fd07170026edc20fa0c63d45d6172c" [label="/bin/sh -c useradd -ms /bin/bash flask" shape="box"];
  "sha256:af9c2e3ef07900cfcda8bf8c2cd26afb36a7df964123d487d9a291126bfac9f2" [label="/bin/sh -c mkdir -p /opt/sarjitsu/conf" shape="box"];
  "sha256:5f35d5ce05980abe06987014906233dfe078360863bcba2bfdc2831632811afb" [label="local://context" shape="ellipse"];
  "sha256:123a1c7405278d62f64b630b6d5030c5e25ca7cf9c38442e366cfea508ab5f9b" [label="copy{src=/conf/sarjitsu.ini.example, dest=/opt/sarjitsu/conf/sarjitsu.ini}" shape="note"];
  "sha256:b5904f91f999d468f8ddfc83695773ba078aa6f99375048cf052b0d3d2543caa" [label="copy{src=/conf/sar-index.cfg.example, dest=/opt/sarjitsu/conf/sar-index.cfg}" shape="note"];
  "sha256:29ed16d84c960f76564cce8b011622e26c59c773c506c71b268ba0a4f326b087" [label="copy{src=/src/requirements.txt, dest=/opt/sarjitsu/}" shape="note"];
  "sha256:bec5c0294aa4d2c6bf52166e035ff034c0cdd5fbdebdb97f24b7d84d88bba162" [label="/bin/sh -c cd /opt/sarjitsu/ && pip3 install -r requirements.txt" shape="box"];
  "sha256:2ae00f54e6f244350a13fa1ff9c69363a2f4cb5ad04cea553ea931ab9fa45b68" [label="copy{src=/src, dest=/opt/sarjitsu/src}" shape="note"];
  "sha256:eb1ddec88b76b85744f18cf941e693f6e1f52a25826d1760f421f5d792ccbf38" [label="/bin/sh -c chgrp -R 0 /opt/sarjitsu/   && chmod -R g+rwX /opt/sarjitsu/   && chown -R flask:root /opt/sarjitsu/" shape="box"];
  "sha256:70c76469a27bb2a4d45e9e9d787706988aa5bc66a353c263df080193378ccf51" [label="mkdir{path=/opt/sarjitsu/src}" shape="note"];
  "sha256:62d3f9f3f494db58dd52e5f0d36919601bf93b878d13705bdbac1e6beca7acfb" [label="copy{src=/conf/passwd.template, dest=/passwd.template}" shape="note"];
  "sha256:aae51cad681c856011ba53bbd0bf1d454354ecedc4a77df74df9cba65c95f730" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:60bf4bde479aabf05e5d8330fbb0bf78ea63072c1bfde70842069a59cce02526" [label="/bin/sh -c rm -f /opt/sarjitsu/src/config_local.py" shape="box"];
  "sha256:70c64a4a4d854f1d217b45d423252530157d27fa991882e9c5e20e4b11e58ba7" [label="sha256:70c64a4a4d854f1d217b45d423252530157d27fa991882e9c5e20e4b11e58ba7" shape="plaintext"];
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" -> "sha256:c76827e4674156701e4262127315c69f3baa5cf66f675de30ad0fdbdf3bcd9d4" [label=""];
  "sha256:c76827e4674156701e4262127315c69f3baa5cf66f675de30ad0fdbdf3bcd9d4" -> "sha256:47aa5d621b1a7d98dfc4568dcfbb7d2c77fd07170026edc20fa0c63d45d6172c" [label=""];
  "sha256:47aa5d621b1a7d98dfc4568dcfbb7d2c77fd07170026edc20fa0c63d45d6172c" -> "sha256:af9c2e3ef07900cfcda8bf8c2cd26afb36a7df964123d487d9a291126bfac9f2" [label=""];
  "sha256:af9c2e3ef07900cfcda8bf8c2cd26afb36a7df964123d487d9a291126bfac9f2" -> "sha256:123a1c7405278d62f64b630b6d5030c5e25ca7cf9c38442e366cfea508ab5f9b" [label=""];
  "sha256:5f35d5ce05980abe06987014906233dfe078360863bcba2bfdc2831632811afb" -> "sha256:123a1c7405278d62f64b630b6d5030c5e25ca7cf9c38442e366cfea508ab5f9b" [label=""];
  "sha256:123a1c7405278d62f64b630b6d5030c5e25ca7cf9c38442e366cfea508ab5f9b" -> "sha256:b5904f91f999d468f8ddfc83695773ba078aa6f99375048cf052b0d3d2543caa" [label=""];
  "sha256:5f35d5ce05980abe06987014906233dfe078360863bcba2bfdc2831632811afb" -> "sha256:b5904f91f999d468f8ddfc83695773ba078aa6f99375048cf052b0d3d2543caa" [label=""];
  "sha256:b5904f91f999d468f8ddfc83695773ba078aa6f99375048cf052b0d3d2543caa" -> "sha256:29ed16d84c960f76564cce8b011622e26c59c773c506c71b268ba0a4f326b087" [label=""];
  "sha256:5f35d5ce05980abe06987014906233dfe078360863bcba2bfdc2831632811afb" -> "sha256:29ed16d84c960f76564cce8b011622e26c59c773c506c71b268ba0a4f326b087" [label=""];
  "sha256:29ed16d84c960f76564cce8b011622e26c59c773c506c71b268ba0a4f326b087" -> "sha256:bec5c0294aa4d2c6bf52166e035ff034c0cdd5fbdebdb97f24b7d84d88bba162" [label=""];
  "sha256:bec5c0294aa4d2c6bf52166e035ff034c0cdd5fbdebdb97f24b7d84d88bba162" -> "sha256:2ae00f54e6f244350a13fa1ff9c69363a2f4cb5ad04cea553ea931ab9fa45b68" [label=""];
  "sha256:5f35d5ce05980abe06987014906233dfe078360863bcba2bfdc2831632811afb" -> "sha256:2ae00f54e6f244350a13fa1ff9c69363a2f4cb5ad04cea553ea931ab9fa45b68" [label=""];
  "sha256:2ae00f54e6f244350a13fa1ff9c69363a2f4cb5ad04cea553ea931ab9fa45b68" -> "sha256:eb1ddec88b76b85744f18cf941e693f6e1f52a25826d1760f421f5d792ccbf38" [label=""];
  "sha256:eb1ddec88b76b85744f18cf941e693f6e1f52a25826d1760f421f5d792ccbf38" -> "sha256:70c76469a27bb2a4d45e9e9d787706988aa5bc66a353c263df080193378ccf51" [label=""];
  "sha256:70c76469a27bb2a4d45e9e9d787706988aa5bc66a353c263df080193378ccf51" -> "sha256:62d3f9f3f494db58dd52e5f0d36919601bf93b878d13705bdbac1e6beca7acfb" [label=""];
  "sha256:5f35d5ce05980abe06987014906233dfe078360863bcba2bfdc2831632811afb" -> "sha256:62d3f9f3f494db58dd52e5f0d36919601bf93b878d13705bdbac1e6beca7acfb" [label=""];
  "sha256:62d3f9f3f494db58dd52e5f0d36919601bf93b878d13705bdbac1e6beca7acfb" -> "sha256:aae51cad681c856011ba53bbd0bf1d454354ecedc4a77df74df9cba65c95f730" [label=""];
  "sha256:5f35d5ce05980abe06987014906233dfe078360863bcba2bfdc2831632811afb" -> "sha256:aae51cad681c856011ba53bbd0bf1d454354ecedc4a77df74df9cba65c95f730" [label=""];
  "sha256:aae51cad681c856011ba53bbd0bf1d454354ecedc4a77df74df9cba65c95f730" -> "sha256:60bf4bde479aabf05e5d8330fbb0bf78ea63072c1bfde70842069a59cce02526" [label=""];
  "sha256:60bf4bde479aabf05e5d8330fbb0bf78ea63072c1bfde70842069a59cce02526" -> "sha256:70c64a4a4d854f1d217b45d423252530157d27fa991882e9c5e20e4b11e58ba7" [label=""];
}

