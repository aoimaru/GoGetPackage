[app/sources/310163105.Dockerfile]
digraph {
  "sha256:d367dd8df19e0702bb7b2b089f33ac837107af20dd8bc56bc6776e9f65b1c7c8" [label="local://context" shape="ellipse"];
  "sha256:1c2e476513740d31ea79fe7a1fe3c7b418265e66aede6387ac5057592307822b" [label="docker-image://docker.io/library/opensuse:latest" shape="ellipse"];
  "sha256:674ed3e48cf2bec353f9fcd6085b0626dba9b6cf4aa3e9300e192212f1eac5da" [label="/bin/sh -c test -f /var/tmp/ABAP_Trial/install.sh" shape="box"];
  "sha256:16d9247732390e2f35dd2e2c176bf63581e49d3e5e87d862dfaebd7087b7ab2f" [label="/bin/sh -c zypper refresh -y; zypper dup -y; zypper --non-interactive install --replacefiles  systemd uuidd expect tcsh which iputils vim hostname tar net-tools iproute2 curl python-openssl python-pip; zypper clean; (cd /usr/lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); rm -f /usr/lib/systemd/system/multi-user.target.wants/*;rm -f /etc/systemd/system/*.wants/*;rm -f /usr/lib/systemd/system/local-fs.target.wants/*; rm -f /usr/lib/systemd/system/sockets.target.wants/*udev*; rm -f /usr/lib/systemd/system/sockets.target.wants/*initctl*; rm -f /usr/lib/systemd/system/basic.target.wants/*;rm -f /usr/lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:dd5b9f07063addc51518e5fba097012d6fc9515a069b43ffb7728793f2789b17" [label="copy{src=/nwabap.service, dest=/etc/systemd/system}" shape="note"];
  "sha256:b52a8e5b9bbad099923abe0fe861fa2e2b74297785157021272f1e31c3328886" [label="/bin/sh -c systemctl enable nwabap uuidd" shape="box"];
  "sha256:bfddedaf4ccc91981dc6751ad2b22f1699af1b503ce0f9e315a518f201977cd3" [label="/bin/sh -c mkdir -p /etc/pki/ca-trust/source/SAP" shape="box"];
  "sha256:2e300dfbd6a921be0151fcbc1a5ceb9550888589de4fd2f281d3d5de43c06d64" [label="copy{src=/files/certs/*.cer, dest=/etc/pki/ca-trust/source/SAP/}" shape="note"];
  "sha256:25222d3473d0fc39c681aea0b5d5e96848d0c5d79cbb32950e566a3c202a30d3" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:c9faaa998bfe5f5c4c3821dcbefa28d694ae631932676f4ba3f62bf5507a33be" [label="/bin/sh -c cd /var/tmp && curl -LO https://github.com/SAP/PyRFC/raw/master/dist/pyrfc-1.9.93-cp27-cp27mu-linux_x86_64.whl &&     pip install /var/tmp/pyrfc-1.9.93-cp27-cp27mu-linux_x86_64.whl && rm -f /var/tmp/pyrfc-1.9.93-cp27-cp27mu-linux_x86_64.whl" shape="box"];
  "sha256:055de5deea012f1d70bbe2774c9863023db12589724047bd6e9a741f3d1cb4d2" [label="copy{src=/utils/src/sap_add_trusted_server_cert, dest=/usr/local/bin}" shape="note"];
  "sha256:df704ed4be8898f7c8054787e9cba093b2031b94909aefafe169b25390e2951d" [label="copy{src=/utils/src/install.expect, dest=/usr/local/bin}" shape="note"];
  "sha256:7f24d95576b5c9c09c521b2545faf6e46bf0612ed17aef62ac96d46903730268" [label="/bin/sh -c mkdir /usr/local/bin/mock" shape="box"];
  "sha256:3621b176ebdc892e6deca14b88b83a5caca3d46ab60173f014a732daf8838fea" [label="copy{src=/utils/src/mock/sysctl, dest=/usr/local/bin/mock}" shape="note"];
  "sha256:c4cc8678e3b3d07c63c6c88037eb29009b6e30d2ffa4867de8ff4b29052c8a0e" [label="/bin/sh -c echo $(grep $(uname -n) /etc/hosts | cut -f1 -d$'\\t')  \"vhcalnplci\" >> /etc/hosts;      export HOSTNAME=\"vhcalnplci\";      echo $HOSTNAME > /etc/hostname;      echo \"export HOSTNAME=$HOSTNAME\" >> /etc/profile;      test $(hostname) == $HOSTNAME || exit 1;      export SAP_LOG_FILE=\"/var/tmp/abap_trial_install.log\";      export PATH=/usr/local/bin/mock:$PATH;      (/usr/local/bin/install.expect --password \"S3cr3tP@ssw0rd\" --accept-SAP-developer-license || exit 1;        (export LD_LIBRARY_PATH=/sapmnt/NPL/exe/uc/linuxx86_64;         python /usr/local/bin/sap_add_trusted_server_cert -v /etc/pki/ca-trust/source/SAP/*.cer);       su - npladm -c \"stopsap ALL\")" shape="box"];
  "sha256:4ffa20da628c91a562a2cbf7112aebaec73ff3df7c4c80dd1c64f93c58becdee" [label="sha256:4ffa20da628c91a562a2cbf7112aebaec73ff3df7c4c80dd1c64f93c58becdee" shape="plaintext"];
  "sha256:1c2e476513740d31ea79fe7a1fe3c7b418265e66aede6387ac5057592307822b" -> "sha256:674ed3e48cf2bec353f9fcd6085b0626dba9b6cf4aa3e9300e192212f1eac5da" [label=""];
  "sha256:674ed3e48cf2bec353f9fcd6085b0626dba9b6cf4aa3e9300e192212f1eac5da" -> "sha256:16d9247732390e2f35dd2e2c176bf63581e49d3e5e87d862dfaebd7087b7ab2f" [label=""];
  "sha256:16d9247732390e2f35dd2e2c176bf63581e49d3e5e87d862dfaebd7087b7ab2f" -> "sha256:dd5b9f07063addc51518e5fba097012d6fc9515a069b43ffb7728793f2789b17" [label=""];
  "sha256:d367dd8df19e0702bb7b2b089f33ac837107af20dd8bc56bc6776e9f65b1c7c8" -> "sha256:dd5b9f07063addc51518e5fba097012d6fc9515a069b43ffb7728793f2789b17" [label=""];
  "sha256:dd5b9f07063addc51518e5fba097012d6fc9515a069b43ffb7728793f2789b17" -> "sha256:b52a8e5b9bbad099923abe0fe861fa2e2b74297785157021272f1e31c3328886" [label=""];
  "sha256:b52a8e5b9bbad099923abe0fe861fa2e2b74297785157021272f1e31c3328886" -> "sha256:bfddedaf4ccc91981dc6751ad2b22f1699af1b503ce0f9e315a518f201977cd3" [label=""];
  "sha256:bfddedaf4ccc91981dc6751ad2b22f1699af1b503ce0f9e315a518f201977cd3" -> "sha256:2e300dfbd6a921be0151fcbc1a5ceb9550888589de4fd2f281d3d5de43c06d64" [label=""];
  "sha256:d367dd8df19e0702bb7b2b089f33ac837107af20dd8bc56bc6776e9f65b1c7c8" -> "sha256:2e300dfbd6a921be0151fcbc1a5ceb9550888589de4fd2f281d3d5de43c06d64" [label=""];
  "sha256:2e300dfbd6a921be0151fcbc1a5ceb9550888589de4fd2f281d3d5de43c06d64" -> "sha256:25222d3473d0fc39c681aea0b5d5e96848d0c5d79cbb32950e566a3c202a30d3" [label=""];
  "sha256:25222d3473d0fc39c681aea0b5d5e96848d0c5d79cbb32950e566a3c202a30d3" -> "sha256:c9faaa998bfe5f5c4c3821dcbefa28d694ae631932676f4ba3f62bf5507a33be" [label=""];
  "sha256:c9faaa998bfe5f5c4c3821dcbefa28d694ae631932676f4ba3f62bf5507a33be" -> "sha256:055de5deea012f1d70bbe2774c9863023db12589724047bd6e9a741f3d1cb4d2" [label=""];
  "sha256:d367dd8df19e0702bb7b2b089f33ac837107af20dd8bc56bc6776e9f65b1c7c8" -> "sha256:055de5deea012f1d70bbe2774c9863023db12589724047bd6e9a741f3d1cb4d2" [label=""];
  "sha256:055de5deea012f1d70bbe2774c9863023db12589724047bd6e9a741f3d1cb4d2" -> "sha256:df704ed4be8898f7c8054787e9cba093b2031b94909aefafe169b25390e2951d" [label=""];
  "sha256:d367dd8df19e0702bb7b2b089f33ac837107af20dd8bc56bc6776e9f65b1c7c8" -> "sha256:df704ed4be8898f7c8054787e9cba093b2031b94909aefafe169b25390e2951d" [label=""];
  "sha256:df704ed4be8898f7c8054787e9cba093b2031b94909aefafe169b25390e2951d" -> "sha256:7f24d95576b5c9c09c521b2545faf6e46bf0612ed17aef62ac96d46903730268" [label=""];
  "sha256:7f24d95576b5c9c09c521b2545faf6e46bf0612ed17aef62ac96d46903730268" -> "sha256:3621b176ebdc892e6deca14b88b83a5caca3d46ab60173f014a732daf8838fea" [label=""];
  "sha256:d367dd8df19e0702bb7b2b089f33ac837107af20dd8bc56bc6776e9f65b1c7c8" -> "sha256:3621b176ebdc892e6deca14b88b83a5caca3d46ab60173f014a732daf8838fea" [label=""];
  "sha256:3621b176ebdc892e6deca14b88b83a5caca3d46ab60173f014a732daf8838fea" -> "sha256:c4cc8678e3b3d07c63c6c88037eb29009b6e30d2ffa4867de8ff4b29052c8a0e" [label=""];
  "sha256:c4cc8678e3b3d07c63c6c88037eb29009b6e30d2ffa4867de8ff4b29052c8a0e" -> "sha256:4ffa20da628c91a562a2cbf7112aebaec73ff3df7c4c80dd1c64f93c58becdee" [label=""];
}

