[app/sources/476462168.Dockerfile]
digraph {
  "sha256:08c961f3d11a2f4672026c39365556425ce0232dfbaff76c1e3797313c6da115" [label="docker-image://docker.io/gw000/debian-cuda:9.1_7.0" shape="ellipse"];
  "sha256:d5de1cc06e5ec81bc7fd86c07111bafe7c7b492c0fe2be78ba3122aba534f78d" [label="/bin/sh -c apt-get update -qq  && apt-get install --no-install-recommends -y     build-essential     g++     git     openssh-client     python3     python3-dev     python3-pip     python3-setuptools     python3-virtualenv     python3-wheel     pkg-config     libopenblas-base     python3-numpy     python3-scipy     python3-h5py     python3-yaml     python3-pydot     ubuntu-archive-keyring  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a1ab31dc6c514d8e8645b7a2e71431f1bf2c3122beb347174529a8cfd47d2e9c" [label="/bin/sh -c echo 'deb http://archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse' > /etc/apt/sources.list.d/ubuntu-16.04.list" shape="box"];
  "sha256:f76cab212b1db1d645c1fed123cde39b3774809145f61cebe2605891b0febbae" [label="/bin/sh -c apt-get update -qq  && apt-get install --no-install-recommends -y     openmpi-bin=1.10.2-8ubuntu1     openmpi-common=1.10.2-8ubuntu1  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a32f8f14bb4feb41daf2093aade0d4a10b8faaa7866c4e9efa8c5ea0e3f564ff" [label="/bin/sh -c pip3 --no-cache-dir install https://cntk.ai/PythonWheel/${CNTK_DEVICE}/cntk-${CNTK_VERSION}-cp35-cp35m-linux_x86_64.whl" shape="box"];
  "sha256:b1f6b16eba6861df509a4caf55b1be71553c698c3e3fd8fc9004d2ee7a31acc6" [label="/bin/sh -c pip3 --no-cache-dir install --no-dependencies git+https://github.com/fchollet/keras.git@${KERAS_VERSION}" shape="box"];
  "sha256:66c698b134852180df875b3afe65af28f8d1b0ad02383defe6ee8a1fc0125866" [label="/bin/sh -c python3 -c \"import cntk; print(cntk.__version__)\"  && dpkg-query -l > /dpkg-query-l.txt  && pip3 freeze > /pip3-freeze.txt" shape="box"];
  "sha256:6a359df667829425dde995f15a2e084062770307f0295204d953cbef62c5b564" [label="mkdir{path=/srv}" shape="note"];
  "sha256:3d482335875e5a7c6b9a02eade5d531cc81fb8a145035e689a49082fff08a481" [label="sha256:3d482335875e5a7c6b9a02eade5d531cc81fb8a145035e689a49082fff08a481" shape="plaintext"];
  "sha256:08c961f3d11a2f4672026c39365556425ce0232dfbaff76c1e3797313c6da115" -> "sha256:d5de1cc06e5ec81bc7fd86c07111bafe7c7b492c0fe2be78ba3122aba534f78d" [label=""];
  "sha256:d5de1cc06e5ec81bc7fd86c07111bafe7c7b492c0fe2be78ba3122aba534f78d" -> "sha256:a1ab31dc6c514d8e8645b7a2e71431f1bf2c3122beb347174529a8cfd47d2e9c" [label=""];
  "sha256:a1ab31dc6c514d8e8645b7a2e71431f1bf2c3122beb347174529a8cfd47d2e9c" -> "sha256:f76cab212b1db1d645c1fed123cde39b3774809145f61cebe2605891b0febbae" [label=""];
  "sha256:f76cab212b1db1d645c1fed123cde39b3774809145f61cebe2605891b0febbae" -> "sha256:a32f8f14bb4feb41daf2093aade0d4a10b8faaa7866c4e9efa8c5ea0e3f564ff" [label=""];
  "sha256:a32f8f14bb4feb41daf2093aade0d4a10b8faaa7866c4e9efa8c5ea0e3f564ff" -> "sha256:b1f6b16eba6861df509a4caf55b1be71553c698c3e3fd8fc9004d2ee7a31acc6" [label=""];
  "sha256:b1f6b16eba6861df509a4caf55b1be71553c698c3e3fd8fc9004d2ee7a31acc6" -> "sha256:66c698b134852180df875b3afe65af28f8d1b0ad02383defe6ee8a1fc0125866" [label=""];
  "sha256:66c698b134852180df875b3afe65af28f8d1b0ad02383defe6ee8a1fc0125866" -> "sha256:6a359df667829425dde995f15a2e084062770307f0295204d953cbef62c5b564" [label=""];
  "sha256:6a359df667829425dde995f15a2e084062770307f0295204d953cbef62c5b564" -> "sha256:3d482335875e5a7c6b9a02eade5d531cc81fb8a145035e689a49082fff08a481" [label=""];
}

