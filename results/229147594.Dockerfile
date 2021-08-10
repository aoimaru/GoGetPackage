[app/sources/229147594.Dockerfile]
digraph {
  "sha256:48e662e78433a5e5fd791fcd8447268263547b571b9f9cc31a18860e22281025" [label="docker-image://docker.io/floydhub/dl-python:3.1.0-gpu-py2.33@sha256:17c7a786339d60fbcaa010e1baf0967923507e9a4bf76f44addc18692c8d03d7" shape="ellipse"];
  "sha256:674f5308d34638f9e08ece661116479bf9f21d9b6c2644d0a6615d5c01c74ef0" [label="/bin/sh -c wget -qO- https://deb.nodesource.com/setup_8.x | bash -" shape="box"];
  "sha256:be6df79195f1ff785a6f935efcf20237f917aeadb2f4e97dbbfce25ea9ad3b3a" [label="/bin/sh -c apt-get update && apt-get install -y         supervisor         binutils         nodejs         lua5.1 libav-tools         nginx         graphviz         axel         imagemagick   && apt-get clean   && apt-get autoremove   && rm -rf /var/cache/apt/archives/*   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:75e0b3ea31e81a8557dde00423dd18b5cfe4f8abaf6d9630853fe939b9ec625f" [label="local://context" shape="ellipse"];
  "sha256:234a8b477274ce3ee6c1af8b3ff167c30a8364fba5af4e6d7f9f6ea5246dd19d" [label="copy{src=/tensorboard/tensorboard.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:ddc35f6655461753ffc7fa1cd914d9535de41639fc51ecc1cdbae4e248736cf8" [label="/bin/sh -c pip --no-cache-dir install         floyd-cli         flask==1.0.2         uwsgi==2.0.17         pydot         dlib         incremental         nltk         jupyterlab==0.33.12         gym[atari,box2d,classic_control]         pattern         textacy         scikit-image         scikit-umfpack         spacy         tqdm         wheel         kaggle         h5py==2.8.0         seaborn         plotly         annoy         pynvrtc         menpo         cupy-cuda91     && rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:4bb4ca220d025436f333bedd4a3be570ccd31e047f33b45b5fa111557cb93ce8" [label="/bin/sh -c jupyter labextension install @jupyter-widgets/jupyterlab-manager@0.36.2" shape="box"];
  "sha256:deb73ec79eaf661394b2b5767b4d802d1e1cf91aabc4c6f746c531619de5e154" [label="/bin/sh -c git clone --recursive https://github.com/dmlc/xgboost     && cd xgboost     && mkdir build     && cd build     && cmake .. -DUSE_CUDA=ON     && make -j$(nproc)     && cd ..     && cd python-package     && python setup.py install     && cd ../..     && rm -rf xgboost" shape="box"];
  "sha256:6b5199d853bfbe05a63ca7b1c139c9d66d98d900c70e7aa650c1e9673d332c3e" [label="sha256:6b5199d853bfbe05a63ca7b1c139c9d66d98d900c70e7aa650c1e9673d332c3e" shape="plaintext"];
  "sha256:48e662e78433a5e5fd791fcd8447268263547b571b9f9cc31a18860e22281025" -> "sha256:674f5308d34638f9e08ece661116479bf9f21d9b6c2644d0a6615d5c01c74ef0" [label=""];
  "sha256:674f5308d34638f9e08ece661116479bf9f21d9b6c2644d0a6615d5c01c74ef0" -> "sha256:be6df79195f1ff785a6f935efcf20237f917aeadb2f4e97dbbfce25ea9ad3b3a" [label=""];
  "sha256:be6df79195f1ff785a6f935efcf20237f917aeadb2f4e97dbbfce25ea9ad3b3a" -> "sha256:234a8b477274ce3ee6c1af8b3ff167c30a8364fba5af4e6d7f9f6ea5246dd19d" [label=""];
  "sha256:75e0b3ea31e81a8557dde00423dd18b5cfe4f8abaf6d9630853fe939b9ec625f" -> "sha256:234a8b477274ce3ee6c1af8b3ff167c30a8364fba5af4e6d7f9f6ea5246dd19d" [label=""];
  "sha256:234a8b477274ce3ee6c1af8b3ff167c30a8364fba5af4e6d7f9f6ea5246dd19d" -> "sha256:ddc35f6655461753ffc7fa1cd914d9535de41639fc51ecc1cdbae4e248736cf8" [label=""];
  "sha256:ddc35f6655461753ffc7fa1cd914d9535de41639fc51ecc1cdbae4e248736cf8" -> "sha256:4bb4ca220d025436f333bedd4a3be570ccd31e047f33b45b5fa111557cb93ce8" [label=""];
  "sha256:4bb4ca220d025436f333bedd4a3be570ccd31e047f33b45b5fa111557cb93ce8" -> "sha256:deb73ec79eaf661394b2b5767b4d802d1e1cf91aabc4c6f746c531619de5e154" [label=""];
  "sha256:deb73ec79eaf661394b2b5767b4d802d1e1cf91aabc4c6f746c531619de5e154" -> "sha256:6b5199d853bfbe05a63ca7b1c139c9d66d98d900c70e7aa650c1e9673d332c3e" [label=""];
}

