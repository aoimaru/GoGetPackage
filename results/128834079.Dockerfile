[app/sources/128834079.Dockerfile]
digraph {
  "sha256:7c4599a6ef199ac83a138e104bc86cae4c38b880edabdf9e2423764c0d6ec276" [label="docker-image://nexus.lan.tribe29.com:5010/sles-12sp1-base:latest" shape="ellipse"];
  "sha256:dc74002d84db2e6ac12e1486fd25509df759f40cae32db8c336802c47645989b" [label="/bin/bash -c zypper addrepo -G http://nexus:8081/repository/sles12sp1 sles12sp1     && zypper addrepo -G http://nexus:8081/repository/sles12spx-web-scripting web-scripting     && zypper -n --no-gpg-checks in --replacefiles --force-resolution     gawk     && zypper -n --no-gpg-checks in --replacefiles --force-resolution     curl     cyrus-sasl-devel     enchant-devel     git     krb5-devel     libmysqlclient-devel     make     nodejs10     npm10     openldap2-devel     python     python-devel     python-pyOpenSSL     python-xml     rrdtool-devel     sudo" shape="box"];
  "sha256:32917d0012c74f68b123a522b938da89e4c69d6c908de7c2bae78edcee0abde7" [label="/bin/bash -c curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py     && python get-pip.py" shape="box"];
  "sha256:e928bcdec2338646babf496fd8d19720dd9ae174e742485d688c8b14d0877fa2" [label="/bin/bash -c pip install --upgrade setuptools     && pip install git+https://github.com/svenpanne/pipenv.git@41f30d7ac848fdfe3eb548ddd19b731bfa8c331a     && zypper -n --no-gpg-checks in --replacefiles     $PACKAGES     && zypper clean -a" shape="box"];
  "sha256:e60ef8490322e4d32a1e3c933e75e5f1abac7ddcab197f7e71361151db7c4c87" [label="sha256:e60ef8490322e4d32a1e3c933e75e5f1abac7ddcab197f7e71361151db7c4c87" shape="plaintext"];
  "sha256:7c4599a6ef199ac83a138e104bc86cae4c38b880edabdf9e2423764c0d6ec276" -> "sha256:dc74002d84db2e6ac12e1486fd25509df759f40cae32db8c336802c47645989b" [label=""];
  "sha256:dc74002d84db2e6ac12e1486fd25509df759f40cae32db8c336802c47645989b" -> "sha256:32917d0012c74f68b123a522b938da89e4c69d6c908de7c2bae78edcee0abde7" [label=""];
  "sha256:32917d0012c74f68b123a522b938da89e4c69d6c908de7c2bae78edcee0abde7" -> "sha256:e928bcdec2338646babf496fd8d19720dd9ae174e742485d688c8b14d0877fa2" [label=""];
  "sha256:e928bcdec2338646babf496fd8d19720dd9ae174e742485d688c8b14d0877fa2" -> "sha256:e60ef8490322e4d32a1e3c933e75e5f1abac7ddcab197f7e71361151db7c4c87" [label=""];
}

