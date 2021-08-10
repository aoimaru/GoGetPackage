[app/sources/229147577.Dockerfile]
digraph {
  "sha256:cd0e94bad16318295c4c1214a58c7fcbb2bd9ea6d739c1017600e381e9dacb55" [label="docker-image://docker.io/floydhub/dl-opencv:3.2.0-py3.6" shape="ellipse"];
  "sha256:a81952bde3fdab4404f2706beab273016b8ac1cff2a89f9d68d0c189307fe679" [label="/bin/sh -c pip --no-cache-dir install         dlib         gym[all]         incremental         nltk         textacy         scikit-image         spacy         tqdm         wheel" shape="box"];
  "sha256:a176d16c3679930ce753d4983f50e537fc8cb495da5a3401816f5833f216f3d8" [label="/bin/sh -c git clone --branch v0.21.3 https://github.com/openai/universe.git     && cd universe     && pip install .     && cd ..     && rm -rf universe" shape="box"];
  "sha256:35e01874edc3285665eb9d40e0a914d1fa8a1538c3caa8bb2ab7443a0fe200f7" [label="/bin/sh -c git clone --recursive https://github.com/dmlc/xgboost     && cd xgboost     && make -j$(nproc)     && cd python-package     && python setup.py install     && cd ../..     && rm -rf xgboost" shape="box"];
  "sha256:2f7553dc30c79e3d982ca3955c0f96d44060a1d6f12520104e6ab29d208c7a9f" [label="sha256:2f7553dc30c79e3d982ca3955c0f96d44060a1d6f12520104e6ab29d208c7a9f" shape="plaintext"];
  "sha256:cd0e94bad16318295c4c1214a58c7fcbb2bd9ea6d739c1017600e381e9dacb55" -> "sha256:a81952bde3fdab4404f2706beab273016b8ac1cff2a89f9d68d0c189307fe679" [label=""];
  "sha256:a81952bde3fdab4404f2706beab273016b8ac1cff2a89f9d68d0c189307fe679" -> "sha256:a176d16c3679930ce753d4983f50e537fc8cb495da5a3401816f5833f216f3d8" [label=""];
  "sha256:a176d16c3679930ce753d4983f50e537fc8cb495da5a3401816f5833f216f3d8" -> "sha256:35e01874edc3285665eb9d40e0a914d1fa8a1538c3caa8bb2ab7443a0fe200f7" [label=""];
  "sha256:35e01874edc3285665eb9d40e0a914d1fa8a1538c3caa8bb2ab7443a0fe200f7" -> "sha256:2f7553dc30c79e3d982ca3955c0f96d44060a1d6f12520104e6ab29d208c7a9f" [label=""];
}

