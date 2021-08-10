[app/sources/336786870.Dockerfile]
digraph {
  "sha256:2905a4bc8d54b94648bafe542a73abbd14de89aa84194bd93c9345ff28c39e31" [label="local://context" shape="ellipse"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:907827dea369dcbb83c0d8bb9f26587df789ed8fce5e8d75b7006230f1dece32" [label="/bin/sh -c apt-get update -qq  && apt-get install --no-install-recommends -y \tbuild-essential \tpython3.5 \tpython3-dev \tpython3-pip \tpython3-wheel \tcmake \tlibboost-all-dev \tpython3-h5py \tpython3-yaml \tpython3-pydot \tpython3-setuptools  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:205a1f1d176d17fc1a394106ebbcd364f2923aea219b543f8d58755da273dd53" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:51e2ddd971b7b6927581e65bdbffb71118b6fbc33c127945f36b90da50d292bc" [label="/bin/sh -c pip3 --no-cache-dir install -r ./requirements.txt" shape="box"];
  "sha256:324db1c8e22af53a8756167625285296291b5fa58b362f32d46016f9b0e953ed" [label="mkdir{path=/srv}" shape="note"];
  "sha256:b8ef15c9ff63369e7df2cfd2c2aa52feaf471f7895f2c97bac57f68dafaab4db" [label="sha256:b8ef15c9ff63369e7df2cfd2c2aa52feaf471f7895f2c97bac57f68dafaab4db" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:907827dea369dcbb83c0d8bb9f26587df789ed8fce5e8d75b7006230f1dece32" [label=""];
  "sha256:907827dea369dcbb83c0d8bb9f26587df789ed8fce5e8d75b7006230f1dece32" -> "sha256:205a1f1d176d17fc1a394106ebbcd364f2923aea219b543f8d58755da273dd53" [label=""];
  "sha256:2905a4bc8d54b94648bafe542a73abbd14de89aa84194bd93c9345ff28c39e31" -> "sha256:205a1f1d176d17fc1a394106ebbcd364f2923aea219b543f8d58755da273dd53" [label=""];
  "sha256:205a1f1d176d17fc1a394106ebbcd364f2923aea219b543f8d58755da273dd53" -> "sha256:51e2ddd971b7b6927581e65bdbffb71118b6fbc33c127945f36b90da50d292bc" [label=""];
  "sha256:51e2ddd971b7b6927581e65bdbffb71118b6fbc33c127945f36b90da50d292bc" -> "sha256:324db1c8e22af53a8756167625285296291b5fa58b362f32d46016f9b0e953ed" [label=""];
  "sha256:324db1c8e22af53a8756167625285296291b5fa58b362f32d46016f9b0e953ed" -> "sha256:b8ef15c9ff63369e7df2cfd2c2aa52feaf471f7895f2c97bac57f68dafaab4db" [label=""];
}

