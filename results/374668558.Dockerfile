[app/sources/374668558.Dockerfile]
digraph {
  "sha256:5ed97822e59a99c13374e53a77ebbd5eb4e017e8096e2d019404ed5aa031064e" [label="https://github.com/krallin/tini/releases/download/v0.9.0/tini" shape="ellipse"];
  "sha256:097ef91078da7f12326a26d341e6479f7eae7320d2dc05b0dbfe60702dc9ed77" [label="docker-image://docker.io/publicisworldwide/python-conda:latest" shape="ellipse"];
  "sha256:1c1b825e95fa3e99fd27d77ff36db934e0c1cc89cb2214c87e7a0b9d6bb5c01a" [label="/bin/sh -c yum install -y     sudo &&     yum clean all" shape="box"];
  "sha256:d21856a3fabc92be7626621893e7d682ef38df194d447a015e28684f18dd1322" [label="/bin/sh -c mkdir /home/$CONTAINER_USER/work &&     mkdir /home/$CONTAINER_USER/.jupyter &&     mkdir /home/$CONTAINER_USER/.local" shape="box"];
  "sha256:61658e4439120dd48573ca31ac8760fc53f0be0492df06fec6707de1c4480d2c" [label="/bin/sh -c conda install --yes     'ipython=4.0*'     'ipywidgets=4.0*'     'pandas=0.17*'     'matplotlib=1.4*'     'scipy=0.16*'     'seaborn=0.6*'     'scikit-learn=0.16*'     'notebook=4.1*'     terminado     pyzmq     && conda clean -yt" shape="box"];
  "sha256:ba7206377a7222b53c5f5cb4fa63f7e26e152762e3667a7736c2955e374286a7" [label="mkdir{path=/home/work}" shape="note"];
  "sha256:889ca61676e78a3d2024652fef9dd03e612fb9c84fe6557c3966ef0c12a953e9" [label="copy{src=/tini, dest=/tini}" shape="note"];
  "sha256:4f0625416a6bd11c79ce89412ea1b45943bd49faf73743388f943690911ec811" [label="/bin/sh -c chmod +x /tini" shape="box"];
  "sha256:828911b0aa31f5324d72c437d0246385fe9553c705316033d6a4b36b7098966f" [label="local://context" shape="ellipse"];
  "sha256:c3e46d0702c7be13bbd99fd502727b4b631c2c43756b422c55e6f7363123a0b6" [label="copy{src=/start-jupyter.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:9c8cdea0aa8eacb734d7b456f7c3f78de746c85b05ab5d60226687136abe3d14" [label="copy{src=/jupyter_notebook_config.py, dest=/home/.jupyter/}" shape="note"];
  "sha256:4c883e65346a142f46e77896912dc2954ef435e2477a5290a28b43b411c46526" [label="/bin/sh -c chown -R $CONTAINER_USER:users /home/$CONTAINER_USER/.jupyter" shape="box"];
  "sha256:37156b84a89707db868dd3ae9f314609d43a683a29347bcb9bef44c6acdc88a2" [label="sha256:37156b84a89707db868dd3ae9f314609d43a683a29347bcb9bef44c6acdc88a2" shape="plaintext"];
  "sha256:097ef91078da7f12326a26d341e6479f7eae7320d2dc05b0dbfe60702dc9ed77" -> "sha256:1c1b825e95fa3e99fd27d77ff36db934e0c1cc89cb2214c87e7a0b9d6bb5c01a" [label=""];
  "sha256:1c1b825e95fa3e99fd27d77ff36db934e0c1cc89cb2214c87e7a0b9d6bb5c01a" -> "sha256:d21856a3fabc92be7626621893e7d682ef38df194d447a015e28684f18dd1322" [label=""];
  "sha256:d21856a3fabc92be7626621893e7d682ef38df194d447a015e28684f18dd1322" -> "sha256:61658e4439120dd48573ca31ac8760fc53f0be0492df06fec6707de1c4480d2c" [label=""];
  "sha256:61658e4439120dd48573ca31ac8760fc53f0be0492df06fec6707de1c4480d2c" -> "sha256:ba7206377a7222b53c5f5cb4fa63f7e26e152762e3667a7736c2955e374286a7" [label=""];
  "sha256:ba7206377a7222b53c5f5cb4fa63f7e26e152762e3667a7736c2955e374286a7" -> "sha256:889ca61676e78a3d2024652fef9dd03e612fb9c84fe6557c3966ef0c12a953e9" [label=""];
  "sha256:5ed97822e59a99c13374e53a77ebbd5eb4e017e8096e2d019404ed5aa031064e" -> "sha256:889ca61676e78a3d2024652fef9dd03e612fb9c84fe6557c3966ef0c12a953e9" [label=""];
  "sha256:889ca61676e78a3d2024652fef9dd03e612fb9c84fe6557c3966ef0c12a953e9" -> "sha256:4f0625416a6bd11c79ce89412ea1b45943bd49faf73743388f943690911ec811" [label=""];
  "sha256:4f0625416a6bd11c79ce89412ea1b45943bd49faf73743388f943690911ec811" -> "sha256:c3e46d0702c7be13bbd99fd502727b4b631c2c43756b422c55e6f7363123a0b6" [label=""];
  "sha256:828911b0aa31f5324d72c437d0246385fe9553c705316033d6a4b36b7098966f" -> "sha256:c3e46d0702c7be13bbd99fd502727b4b631c2c43756b422c55e6f7363123a0b6" [label=""];
  "sha256:c3e46d0702c7be13bbd99fd502727b4b631c2c43756b422c55e6f7363123a0b6" -> "sha256:9c8cdea0aa8eacb734d7b456f7c3f78de746c85b05ab5d60226687136abe3d14" [label=""];
  "sha256:828911b0aa31f5324d72c437d0246385fe9553c705316033d6a4b36b7098966f" -> "sha256:9c8cdea0aa8eacb734d7b456f7c3f78de746c85b05ab5d60226687136abe3d14" [label=""];
  "sha256:9c8cdea0aa8eacb734d7b456f7c3f78de746c85b05ab5d60226687136abe3d14" -> "sha256:4c883e65346a142f46e77896912dc2954ef435e2477a5290a28b43b411c46526" [label=""];
  "sha256:4c883e65346a142f46e77896912dc2954ef435e2477a5290a28b43b411c46526" -> "sha256:37156b84a89707db868dd3ae9f314609d43a683a29347bcb9bef44c6acdc88a2" [label=""];
}

