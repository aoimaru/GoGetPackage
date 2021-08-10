[app/sources/341511293.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:458157cd577c6ec9ef396de14677f14ede1bc7ac3fd5fb1ff05b9a523f0d9191" [label="/bin/sh -c apt-get update  && DEBIAN_FRONTEND=noninteractive apt-get install -y wget python3 python3-distutils  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:009055703571599ac1e3f917d16dc0ac8d1051ebf43966c329acf10a3d760c82" [label="/bin/sh -c wget https://bootstrap.pypa.io/get-pip.py  && python3 get-pip.py  && rm get-pip.py" shape="box"];
  "sha256:9e783f0da8e27e3af329ab2723db58ffbd491acc4dcbd70b3a44041bcad39ef9" [label="docker-image://docker.io/lballabio/quantlib:latest" shape="ellipse"];
  "sha256:27d8006dc8eb8e3b022974b6362d3a9ede01f17753c7107a06b8cbbb2b45b07e" [label="/bin/sh -c apt-get update  && DEBIAN_FRONTEND=noninteractive apt-get install -y python3-dev  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a7f4d81a82fc17de66f2941b6845bbcba8e25e8e2fb2abd37b56cf5887464fe6" [label="/bin/sh -c wget https://bootstrap.pypa.io/get-pip.py  && python3 get-pip.py  && rm get-pip.py" shape="box"];
  "sha256:b584611e510c8c646dc1d2c2d0e67d3670b7935ec2521b4326bbec7cb80bdc7c" [label="/bin/sh -c wget https://dl.bintray.com/quantlib/releases/QuantLib-SWIG-${quantlib_swig_version}.tar.gz     && tar xfz QuantLib-SWIG-${quantlib_swig_version}.tar.gz     && rm QuantLib-SWIG-${quantlib_swig_version}.tar.gz     && cd QuantLib-SWIG-${quantlib_swig_version}/Python     && CXXFLAGS='-g0 -O3' /usr/bin/python3 setup.py bdist_wheel" shape="box"];
  "sha256:8f30814e54f7573a108ef9269bec3316351f88fa2441f0ff730e57017d976751" [label="copy{src=/usr/lib/libQuantLib.la, dest=/usr/lib/}" shape="note"];
  "sha256:b3d21cf4a21a4eb67151bc068977f093ce99ab7cb6229035c2fa7b4e355f3895" [label="copy{src=/usr/lib/libQuantLib.so.0.0.0, dest=/usr/lib/}" shape="note"];
  "sha256:7db69ca8daa256ebc2fc3ddb7c1d1c414dc5ceb62f1941390b40ca595ef22e03" [label="/bin/sh -c cd /usr/lib && ln -s libQuantLib.so.0.0.0 libQuantLib.so.0" shape="box"];
  "sha256:91119f72a019f7bb4df483da8bec3eed5dedd11ed49745f63ce3a72a4e85555c" [label="/bin/sh -c cd /usr/lib && ln -s libQuantLib.so.0.0.0 libQuantLib.so" shape="box"];
  "sha256:591f1c27dfeb77696d6809833d4a818e4c18ab384f6d9407dcd7eca6c0d38cf1" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:1df228de247ec3ea7f9dfa65b89fd82fe8840139ebf54aca172da995579986ca" [label="copy{src=/QuantLib-SWIG-/Python/dist/QuantLib_Python*.whl, dest=/tmp}" shape="note"];
  "sha256:88f0d6c9dc8f2fe6abe96b1da194d88085bfd5461adc482fb7b5e4124c1552e6" [label="/bin/sh -c pip install /tmp/QuantLib_Python*.whl" shape="box"];
  "sha256:9e57297722dfa2ff7a4f53061cb57320154a70228d980ece5f925076b9d736a5" [label="sha256:9e57297722dfa2ff7a4f53061cb57320154a70228d980ece5f925076b9d736a5" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:458157cd577c6ec9ef396de14677f14ede1bc7ac3fd5fb1ff05b9a523f0d9191" [label=""];
  "sha256:458157cd577c6ec9ef396de14677f14ede1bc7ac3fd5fb1ff05b9a523f0d9191" -> "sha256:009055703571599ac1e3f917d16dc0ac8d1051ebf43966c329acf10a3d760c82" [label=""];
  "sha256:9e783f0da8e27e3af329ab2723db58ffbd491acc4dcbd70b3a44041bcad39ef9" -> "sha256:27d8006dc8eb8e3b022974b6362d3a9ede01f17753c7107a06b8cbbb2b45b07e" [label=""];
  "sha256:27d8006dc8eb8e3b022974b6362d3a9ede01f17753c7107a06b8cbbb2b45b07e" -> "sha256:a7f4d81a82fc17de66f2941b6845bbcba8e25e8e2fb2abd37b56cf5887464fe6" [label=""];
  "sha256:a7f4d81a82fc17de66f2941b6845bbcba8e25e8e2fb2abd37b56cf5887464fe6" -> "sha256:b584611e510c8c646dc1d2c2d0e67d3670b7935ec2521b4326bbec7cb80bdc7c" [label=""];
  "sha256:009055703571599ac1e3f917d16dc0ac8d1051ebf43966c329acf10a3d760c82" -> "sha256:8f30814e54f7573a108ef9269bec3316351f88fa2441f0ff730e57017d976751" [label=""];
  "sha256:b584611e510c8c646dc1d2c2d0e67d3670b7935ec2521b4326bbec7cb80bdc7c" -> "sha256:8f30814e54f7573a108ef9269bec3316351f88fa2441f0ff730e57017d976751" [label=""];
  "sha256:8f30814e54f7573a108ef9269bec3316351f88fa2441f0ff730e57017d976751" -> "sha256:b3d21cf4a21a4eb67151bc068977f093ce99ab7cb6229035c2fa7b4e355f3895" [label=""];
  "sha256:b584611e510c8c646dc1d2c2d0e67d3670b7935ec2521b4326bbec7cb80bdc7c" -> "sha256:b3d21cf4a21a4eb67151bc068977f093ce99ab7cb6229035c2fa7b4e355f3895" [label=""];
  "sha256:b3d21cf4a21a4eb67151bc068977f093ce99ab7cb6229035c2fa7b4e355f3895" -> "sha256:7db69ca8daa256ebc2fc3ddb7c1d1c414dc5ceb62f1941390b40ca595ef22e03" [label=""];
  "sha256:7db69ca8daa256ebc2fc3ddb7c1d1c414dc5ceb62f1941390b40ca595ef22e03" -> "sha256:91119f72a019f7bb4df483da8bec3eed5dedd11ed49745f63ce3a72a4e85555c" [label=""];
  "sha256:91119f72a019f7bb4df483da8bec3eed5dedd11ed49745f63ce3a72a4e85555c" -> "sha256:591f1c27dfeb77696d6809833d4a818e4c18ab384f6d9407dcd7eca6c0d38cf1" [label=""];
  "sha256:591f1c27dfeb77696d6809833d4a818e4c18ab384f6d9407dcd7eca6c0d38cf1" -> "sha256:1df228de247ec3ea7f9dfa65b89fd82fe8840139ebf54aca172da995579986ca" [label=""];
  "sha256:b584611e510c8c646dc1d2c2d0e67d3670b7935ec2521b4326bbec7cb80bdc7c" -> "sha256:1df228de247ec3ea7f9dfa65b89fd82fe8840139ebf54aca172da995579986ca" [label=""];
  "sha256:1df228de247ec3ea7f9dfa65b89fd82fe8840139ebf54aca172da995579986ca" -> "sha256:88f0d6c9dc8f2fe6abe96b1da194d88085bfd5461adc482fb7b5e4124c1552e6" [label=""];
  "sha256:88f0d6c9dc8f2fe6abe96b1da194d88085bfd5461adc482fb7b5e4124c1552e6" -> "sha256:9e57297722dfa2ff7a4f53061cb57320154a70228d980ece5f925076b9d736a5" [label=""];
}

