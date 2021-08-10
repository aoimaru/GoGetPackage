[app/sources/252783303.Dockerfile]
digraph {
  "sha256:cd76ec759af16361299de7866461649d314c7e40b90bfb5972d067bb290fce72" [label="docker-image://docker.io/library/debian:testing" shape="ellipse"];
  "sha256:1d1e45286b6720268f48dac3c36a68068b445870a91341b7a947cae735a7daef" [label="/bin/sh -c apt-get update && apt-get install -y git && apt-get install -y python2.7 python-numpy cython && cd /tmp && git clone https://github.com/taoliu/MACS.git && cd MACS && git checkout $VERSION && python setup.py install --prefix /opt && cd /tmp && rm -rf MACS && apt-get clean -y && apt-get purge -y cython git libpython2.7-dev libpython-dev && apt-get autoremove -y" shape="box"];
  "sha256:ac2f76bab0cc9c65180219839f337d05453ceccc8255a610329ad6d83d53ed2a" [label="/bin/sh -c useradd -ms /bin/bash biodev" shape="box"];
  "sha256:a8ac67738ed2e011f76ac9dd4cd70620cf7729e988d3bed9fd0c5a1ed29155a0" [label="/bin/sh -c echo 'biodev:biodev' | chpasswd" shape="box"];
  "sha256:cebd604551842b56179646560bdecd29f4210ec7a0d82621df85e020cf06c376" [label="mkdir{path=/home/biodev}" shape="note"];
  "sha256:15bf257003a88ba9f229e859b23d052976c86d7d6dbe8cf7d412ec20d9ff9e11" [label="sha256:15bf257003a88ba9f229e859b23d052976c86d7d6dbe8cf7d412ec20d9ff9e11" shape="plaintext"];
  "sha256:cd76ec759af16361299de7866461649d314c7e40b90bfb5972d067bb290fce72" -> "sha256:1d1e45286b6720268f48dac3c36a68068b445870a91341b7a947cae735a7daef" [label=""];
  "sha256:1d1e45286b6720268f48dac3c36a68068b445870a91341b7a947cae735a7daef" -> "sha256:ac2f76bab0cc9c65180219839f337d05453ceccc8255a610329ad6d83d53ed2a" [label=""];
  "sha256:ac2f76bab0cc9c65180219839f337d05453ceccc8255a610329ad6d83d53ed2a" -> "sha256:a8ac67738ed2e011f76ac9dd4cd70620cf7729e988d3bed9fd0c5a1ed29155a0" [label=""];
  "sha256:a8ac67738ed2e011f76ac9dd4cd70620cf7729e988d3bed9fd0c5a1ed29155a0" -> "sha256:cebd604551842b56179646560bdecd29f4210ec7a0d82621df85e020cf06c376" [label=""];
  "sha256:cebd604551842b56179646560bdecd29f4210ec7a0d82621df85e020cf06c376" -> "sha256:15bf257003a88ba9f229e859b23d052976c86d7d6dbe8cf7d412ec20d9ff9e11" [label=""];
}

