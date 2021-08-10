[app/sources/158038832.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:d9c3835aad7474513e4562c918665360b5380f955cd931f4fbf1e3de8f6d5daa" [label="/bin/bash -o pipefail -c apt-get update -q -y &&     apt-get install -y --no-install-recommends software-properties-common &&     apt-get update -q -y &&     apt-get install -y         wget vim iputils-ping curl         libsqlite3-dev libssl-dev         python2.7 python2.7-dev python-virtualenv         git subversion         build-essential gdb &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:89bf27f6948368692889afc2f578fc24bd5354717775b2f6de32deb58c44ac9f" [label="/bin/bash -o pipefail -c wget https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer -O - | bash" shape="box"];
  "sha256:1903774decffd8cb7f8fa1a16ef63b6000fb07d917655193368c757f0cfed2bf" [label="/bin/bash -o pipefail -c pyenv --version &&     pyenv install 2.7.13 &&     pyenv install 3.5.2 &&     pyenv install 3.6.0" shape="box"];
  "sha256:90ac83895348a51c6f8354cc26afe5e380c9f6e9a47188f1fae67561e0caf928" [label="/bin/bash -o pipefail -c pyenv local 2.7.13 &&      pip install --upgrade setuptools pip tox requests &&      pyenv local --unset" shape="box"];
  "sha256:6be24b05e7d49eeca4cfe2e401c28d8581f62e3c51cce26d02df6f85e67098e1" [label="/bin/bash -o pipefail -c pyenv local 3.5.2 &&      pip install --upgrade setuptools pip tox requests &&      pyenv local --unset" shape="box"];
  "sha256:a4c3d3376a3f50bd8f5a6a5d191ff71925341b99298d0c607a16d4119b018a5f" [label="/bin/bash -o pipefail -c pyenv local 3.6.0 &&      pip install --upgrade setuptools pip tox requests &&      pyenv local --unset" shape="box"];
  "sha256:4797890dbebf7576335f4a7ad63c4105c4750806a01732a3487bfc5e51d26ef1" [label="/bin/bash -o pipefail -c pyenv local 2.7.13 3.5.2 3.6.0" shape="box"];
  "sha256:47b77d370e33663cf5a3bf9c8ddba7ec4c1dbe2f8ce928b85bde363a0444dd07" [label="/bin/bash -o pipefail -c pip install virtualenv" shape="box"];
  "sha256:341bc2836315c9b37e2f04007dde55d647438168c7498d40ad1cbf59593aa80b" [label="/bin/bash -o pipefail -c add-apt-repository -y ppa:ubuntu-toolchain-r/test &&     apt-get update &&     apt-get install -y --no-install-recommends g++-8 gcc-8 &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2ef363d624477ffa12d2e0784d2500a0af92b7830423724a506fe737763028f4" [label="/bin/bash -o pipefail -c update-alternatives --install /usr/bin/gcc  gcc  /usr/bin/gcc-8 1000                         --slave   /usr/bin/g++  g++  /usr/bin/g++-8                         --slave   /usr/bin/gcov gcov /usr/bin/gcov-8" shape="box"];
  "sha256:9e23ca8699d66b3a5a71079fc86a9ad7f755220372520f50808365e0cad6c91a" [label="/bin/bash -o pipefail -c wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - &&     apt-add-repository \"deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-7 main\" &&     apt-get update &&     apt-get install -y --no-install-recommends clang-7 &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7bad1a3624f4a8816711779fd19f928beca1b5eaf108a95f978cbb111547e0c9" [label="/bin/bash -o pipefail -c update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-7 1000                         --slave   /usr/bin/clang clang /usr/bin/clang-7" shape="box"];
  "sha256:2dfccc39ac057a1a7ce6ea43215ca81f2ffef03307010c2ba466fcecdc6d737b" [label="/bin/bash -o pipefail -c mkdir /iutest" shape="box"];
  "sha256:d45886437cfdce4c07fafed42da61ea55ec2c4b8f798c1968e0c530bac7973f0" [label="mkdir{path=/iutest}" shape="note"];
  "sha256:adc976c3cd6db6d9465cdcfa928597cbde2c6a6b1eb26cb1feef9af4e4515f83" [label="sha256:adc976c3cd6db6d9465cdcfa928597cbde2c6a6b1eb26cb1feef9af4e4515f83" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:d9c3835aad7474513e4562c918665360b5380f955cd931f4fbf1e3de8f6d5daa" [label=""];
  "sha256:d9c3835aad7474513e4562c918665360b5380f955cd931f4fbf1e3de8f6d5daa" -> "sha256:89bf27f6948368692889afc2f578fc24bd5354717775b2f6de32deb58c44ac9f" [label=""];
  "sha256:89bf27f6948368692889afc2f578fc24bd5354717775b2f6de32deb58c44ac9f" -> "sha256:1903774decffd8cb7f8fa1a16ef63b6000fb07d917655193368c757f0cfed2bf" [label=""];
  "sha256:1903774decffd8cb7f8fa1a16ef63b6000fb07d917655193368c757f0cfed2bf" -> "sha256:90ac83895348a51c6f8354cc26afe5e380c9f6e9a47188f1fae67561e0caf928" [label=""];
  "sha256:90ac83895348a51c6f8354cc26afe5e380c9f6e9a47188f1fae67561e0caf928" -> "sha256:6be24b05e7d49eeca4cfe2e401c28d8581f62e3c51cce26d02df6f85e67098e1" [label=""];
  "sha256:6be24b05e7d49eeca4cfe2e401c28d8581f62e3c51cce26d02df6f85e67098e1" -> "sha256:a4c3d3376a3f50bd8f5a6a5d191ff71925341b99298d0c607a16d4119b018a5f" [label=""];
  "sha256:a4c3d3376a3f50bd8f5a6a5d191ff71925341b99298d0c607a16d4119b018a5f" -> "sha256:4797890dbebf7576335f4a7ad63c4105c4750806a01732a3487bfc5e51d26ef1" [label=""];
  "sha256:4797890dbebf7576335f4a7ad63c4105c4750806a01732a3487bfc5e51d26ef1" -> "sha256:47b77d370e33663cf5a3bf9c8ddba7ec4c1dbe2f8ce928b85bde363a0444dd07" [label=""];
  "sha256:47b77d370e33663cf5a3bf9c8ddba7ec4c1dbe2f8ce928b85bde363a0444dd07" -> "sha256:341bc2836315c9b37e2f04007dde55d647438168c7498d40ad1cbf59593aa80b" [label=""];
  "sha256:341bc2836315c9b37e2f04007dde55d647438168c7498d40ad1cbf59593aa80b" -> "sha256:2ef363d624477ffa12d2e0784d2500a0af92b7830423724a506fe737763028f4" [label=""];
  "sha256:2ef363d624477ffa12d2e0784d2500a0af92b7830423724a506fe737763028f4" -> "sha256:9e23ca8699d66b3a5a71079fc86a9ad7f755220372520f50808365e0cad6c91a" [label=""];
  "sha256:9e23ca8699d66b3a5a71079fc86a9ad7f755220372520f50808365e0cad6c91a" -> "sha256:7bad1a3624f4a8816711779fd19f928beca1b5eaf108a95f978cbb111547e0c9" [label=""];
  "sha256:7bad1a3624f4a8816711779fd19f928beca1b5eaf108a95f978cbb111547e0c9" -> "sha256:2dfccc39ac057a1a7ce6ea43215ca81f2ffef03307010c2ba466fcecdc6d737b" [label=""];
  "sha256:2dfccc39ac057a1a7ce6ea43215ca81f2ffef03307010c2ba466fcecdc6d737b" -> "sha256:d45886437cfdce4c07fafed42da61ea55ec2c4b8f798c1968e0c530bac7973f0" [label=""];
  "sha256:d45886437cfdce4c07fafed42da61ea55ec2c4b8f798c1968e0c530bac7973f0" -> "sha256:adc976c3cd6db6d9465cdcfa928597cbde2c6a6b1eb26cb1feef9af4e4515f83" [label=""];
}

