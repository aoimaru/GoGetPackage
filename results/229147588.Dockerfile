[app/sources/229147588.Dockerfile]
digraph {
  "sha256:ea59d2862afef3593d961d204eb6d65d8edd9330f2563209d58828e34db015c4" [label="docker-image://docker.io/floydhub/dl-opencv:3.2.0.1-gpu-py3.12" shape="ellipse"];
  "sha256:7464aaf2fa4deb191ccb03e2940acdfe2dcd45484d934e2c0b33e14ed748ad4e" [label="/bin/sh -c apt-get update && apt-get install -y supervisor   && apt-get clean   && apt-get autoremove   && rm -rf /var/cache/apt/archives/*   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9ebf51d3882e1d69399f1b9b381e3b0bfa7e94b18cffe6890d2d0790b1e698c7" [label="local://context" shape="ellipse"];
  "sha256:baccb9da5515bb3aeffaeaba612b1337c7b84293960ce60d50646916590bae24" [label="copy{src=/tensorboard/tensorboard.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:7206469237767c60bfe945e471c1265bb6773c76649e83d2e329d8a79e28c38e" [label="/bin/sh -c apt-get update && apt-get install -y         graphviz     && apt-get clean     && apt-get autoremove     && rm -rf /var/lib/apt/lists/*     && rm -rf /var/cache/apt/archives/*" shape="box"];
  "sha256:10469445e4dd8fe3b655bf897cf14a8da284a1d3e5f51f5d0878d00287ca6752" [label="/bin/sh -c pip --no-cache-dir install         pydot         dlib         incremental         nltk         gym[atari,box2d,classic_control]         textacy         scikit-image         spacy         tqdm         wheel         kaggle-cli         annoy     && rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:dca92c639fc4f8ff642453e8de9bd4b067742627fdec1b00738e80907ee6e539" [label="/bin/sh -c git clone --recursive https://github.com/dmlc/xgboost     && cd xgboost     && mkdir build     && cd build     && cmake .. -DUSE_CUDA=ON     && make -j$(nproc)     && cd ..     && cd python-package     && python setup.py install     && cd ../..     && rm -rf xgboost" shape="box"];
  "sha256:4168a7a74b2c756a3e34a26cb6d3d65eb6dbf6157a7d638bbd837162383880c2" [label="sha256:4168a7a74b2c756a3e34a26cb6d3d65eb6dbf6157a7d638bbd837162383880c2" shape="plaintext"];
  "sha256:ea59d2862afef3593d961d204eb6d65d8edd9330f2563209d58828e34db015c4" -> "sha256:7464aaf2fa4deb191ccb03e2940acdfe2dcd45484d934e2c0b33e14ed748ad4e" [label=""];
  "sha256:7464aaf2fa4deb191ccb03e2940acdfe2dcd45484d934e2c0b33e14ed748ad4e" -> "sha256:baccb9da5515bb3aeffaeaba612b1337c7b84293960ce60d50646916590bae24" [label=""];
  "sha256:9ebf51d3882e1d69399f1b9b381e3b0bfa7e94b18cffe6890d2d0790b1e698c7" -> "sha256:baccb9da5515bb3aeffaeaba612b1337c7b84293960ce60d50646916590bae24" [label=""];
  "sha256:baccb9da5515bb3aeffaeaba612b1337c7b84293960ce60d50646916590bae24" -> "sha256:7206469237767c60bfe945e471c1265bb6773c76649e83d2e329d8a79e28c38e" [label=""];
  "sha256:7206469237767c60bfe945e471c1265bb6773c76649e83d2e329d8a79e28c38e" -> "sha256:10469445e4dd8fe3b655bf897cf14a8da284a1d3e5f51f5d0878d00287ca6752" [label=""];
  "sha256:10469445e4dd8fe3b655bf897cf14a8da284a1d3e5f51f5d0878d00287ca6752" -> "sha256:dca92c639fc4f8ff642453e8de9bd4b067742627fdec1b00738e80907ee6e539" [label=""];
  "sha256:dca92c639fc4f8ff642453e8de9bd4b067742627fdec1b00738e80907ee6e539" -> "sha256:4168a7a74b2c756a3e34a26cb6d3d65eb6dbf6157a7d638bbd837162383880c2" [label=""];
}

