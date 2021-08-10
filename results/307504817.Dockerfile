[app/sources/307504817.Dockerfile]
digraph {
  "sha256:fa64140406ca11c4e33b67812da48204c0ef9c346689582b9e9fac9d8711b3c7" [label="docker-image://docker.io/barcus/ubuntu:xenial" shape="ellipse"];
  "sha256:0773ce154d139522bca39ef04da9c46c9b91a4ba70273d2018043452ef684e06" [label="/bin/sh -c curl -Ls http://download.bareos.org/bareos/release/18.2/xUbuntu_16.04/Release.key | apt-key --keyring /etc/apt/trusted.gpg.d/breos-keyring.gpg add - &&     echo 'deb http://download.bareos.org/bareos/release/18.2/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/bareos.list &&     echo 'bareos-database-common bareos-database-common/dbconfig-install boolean false' | debconf-set-selections &&     echo 'bareos-database-common bareos-database-common/install-error select ignore' | debconf-set-selections &&     echo 'bareos-database-common bareos-database-common/database-type select psql' | debconf-set-selections &&     echo 'bareos-database-common bareos-database-common/missing-db-package-error select ignore' | debconf-set-selections &&     echo 'postfix postfix/main_mailer_type select No configuration' | debconf-set-selections &&     apt-get update -qq &&     apt-get install -qq -y bareos postgresql-client bareos-tools &&     apt-clean" shape="box"];
  "sha256:f7151f3d49150c45e504708c814775e6f555fb1b5e9c5db580cfd11121ea9f63" [label="local://context" shape="ellipse"];
  "sha256:784b2ce1335f26226265338e790f74a66913b5ccbaf8ea664469d6f7171a11d0" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:b92c4df1b86ebadadbfee83238827988ee3d678ed9032cf84f366de02b90610f" [label="/bin/sh -c chmod u+x /docker-entrypoint.sh" shape="box"];
  "sha256:37c55476af4603503fe46088181197fdc76ceee966557b6fdafdba6dc2336a77" [label="/bin/sh -c tar cfvz /bareos-dir.tgz /etc/bareos" shape="box"];
  "sha256:77b30bba6c75a9198252323c423ed0aec85f705a1bc65a1584b09856b8d250a1" [label="sha256:77b30bba6c75a9198252323c423ed0aec85f705a1bc65a1584b09856b8d250a1" shape="plaintext"];
  "sha256:fa64140406ca11c4e33b67812da48204c0ef9c346689582b9e9fac9d8711b3c7" -> "sha256:0773ce154d139522bca39ef04da9c46c9b91a4ba70273d2018043452ef684e06" [label=""];
  "sha256:0773ce154d139522bca39ef04da9c46c9b91a4ba70273d2018043452ef684e06" -> "sha256:784b2ce1335f26226265338e790f74a66913b5ccbaf8ea664469d6f7171a11d0" [label=""];
  "sha256:f7151f3d49150c45e504708c814775e6f555fb1b5e9c5db580cfd11121ea9f63" -> "sha256:784b2ce1335f26226265338e790f74a66913b5ccbaf8ea664469d6f7171a11d0" [label=""];
  "sha256:784b2ce1335f26226265338e790f74a66913b5ccbaf8ea664469d6f7171a11d0" -> "sha256:b92c4df1b86ebadadbfee83238827988ee3d678ed9032cf84f366de02b90610f" [label=""];
  "sha256:b92c4df1b86ebadadbfee83238827988ee3d678ed9032cf84f366de02b90610f" -> "sha256:37c55476af4603503fe46088181197fdc76ceee966557b6fdafdba6dc2336a77" [label=""];
  "sha256:37c55476af4603503fe46088181197fdc76ceee966557b6fdafdba6dc2336a77" -> "sha256:77b30bba6c75a9198252323c423ed0aec85f705a1bc65a1584b09856b8d250a1" [label=""];
}

