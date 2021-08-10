[app/sources/356734460.Dockerfile]
digraph {
  "sha256:294a96fed3078dceea9627b36240f0f4f8f8cd30054687f3cfbfa233700bc21a" [label="docker-image://docker.io/pdonorio/py3kbase:latest" shape="ellipse"];
  "sha256:2dff3149797224b4665c741b9c780db1660d1dea50e7576b82136137c7b03a50" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:3798a499b5faf4cf090ded6a0a8bfc72c4e18d5ee88238c03797f371222bf29f" [label="/bin/sh -c wget --quiet     https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh &&     bash Miniconda-latest-Linux-x86_64.sh -b -p $CONDA_ENV_PATH &&     rm Miniconda-latest-Linux-x86_64.sh &&     chmod -R a+rx $CONDA_ENV_PATH" shape="box"];
  "sha256:feb40366dda2cc75d6660c1f8d5b078400b06c3df3fe71c9bea70d63b1dbcae8" [label="/bin/sh -c apt-get install -y     python-qt4     libxml2-dev libxslt-dev" shape="box"];
  "sha256:d90a96e9ff6512c84bd9217d16ccd5b27b5afd3f3679cc8e9897de69f224d3a0" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:b654fe3f4ba8017a0dcff6b8c7970728c1c4989ae9d12063901da97c19aad8d2" [label="/bin/sh -c conda create -y -n $MY_CONDA_PY3ENV python=3.4" shape="box"];
  "sha256:297e74bf766951c268da3a545b321cd6845602af3ba969f4422ad73404a6b343" [label="/bin/sh -c conda update --quiet --yes conda" shape="box"];
  "sha256:0c80a27a3481246a9c6c47f5a18ae782b1d5561a4aacee863fdadb2c26719fac" [label="/bin/sh -c conda install -y -n $MY_CONDA_PY3ENV         pip jupyter ipython notebook ipywidgets         six sqlalchemy cython pyzmq statsmodels         theano tornado jinja2 sphinx pygments nose readline openpyxl xlrd" shape="box"];
  "sha256:689f199150d421a9c5921bab3aa4c7a542d01ded81594e0c2ca2efe30bf169f3" [label="/bin/sh -c conda install -y -n $MY_CONDA_PY3ENV         numpy scipy pandas scikit-learn sympy         matplotlib seaborn bokeh" shape="box"];
  "sha256:f95e5d6b8e2a4132b7a74bb06758f60a044f1bafc138f6fec6fe15414aae928c" [label="/bin/sh -c conda clean -y -t" shape="box"];
  "sha256:41e7694f4813cbd90502bece761a6460201cb1333338568e0db5611dfafdd23b" [label="/bin/sh -c $CONDA_ACTIVATE && pip install howdoi" shape="box"];
  "sha256:4fd2a4a9bbe781f75d2f9f81f76d6697492608b320389abf58bb1bc3ab5b55b0" [label="/bin/sh -c echo \"#!/bin/bash\" > $STARTSCRIPT" shape="box"];
  "sha256:c066c09abebd6718bdcd5314bbc2fb4ea31a17c6eee783a3b37cead1253c9111" [label="/bin/sh -c echo \"$CONDA_ACTIVATE\" >> $STARTSCRIPT" shape="box"];
  "sha256:2819c3b28802ee288082a718579a91b77209df55717c576cd0db05b5999ee47d" [label="/bin/sh -c echo -e \"# install kernels\\npython3 -m ipykernel.kernelspec\" >> $STARTSCRIPT" shape="box"];
  "sha256:9a37ba7e432a636ab960fe3cac47e1f2730189972f56c1fbb1126ac13c1bcfdf" [label="/bin/sh -c echo -e \"# launch notebook\\njupyter notebook --ip=0.0.0.0 --no-browser\" >> $STARTSCRIPT" shape="box"];
  "sha256:911b0152280721a174a6168273d68b510f095fc01702363a8a224b34270b58d4" [label="/bin/sh -c chmod +x $STARTSCRIPT" shape="box"];
  "sha256:55b625691731b30bae3aa7a08b011199c0cf1da29fc25c90aec6c0a9d45baeee" [label="mkdir{path=/data}" shape="note"];
  "sha256:e78bb2cf50918f0a33c494d9a8960859fd13c7251b5a8c586e323963178a1776" [label="sha256:e78bb2cf50918f0a33c494d9a8960859fd13c7251b5a8c586e323963178a1776" shape="plaintext"];
  "sha256:294a96fed3078dceea9627b36240f0f4f8f8cd30054687f3cfbfa233700bc21a" -> "sha256:2dff3149797224b4665c741b9c780db1660d1dea50e7576b82136137c7b03a50" [label=""];
  "sha256:2dff3149797224b4665c741b9c780db1660d1dea50e7576b82136137c7b03a50" -> "sha256:3798a499b5faf4cf090ded6a0a8bfc72c4e18d5ee88238c03797f371222bf29f" [label=""];
  "sha256:3798a499b5faf4cf090ded6a0a8bfc72c4e18d5ee88238c03797f371222bf29f" -> "sha256:feb40366dda2cc75d6660c1f8d5b078400b06c3df3fe71c9bea70d63b1dbcae8" [label=""];
  "sha256:feb40366dda2cc75d6660c1f8d5b078400b06c3df3fe71c9bea70d63b1dbcae8" -> "sha256:d90a96e9ff6512c84bd9217d16ccd5b27b5afd3f3679cc8e9897de69f224d3a0" [label=""];
  "sha256:d90a96e9ff6512c84bd9217d16ccd5b27b5afd3f3679cc8e9897de69f224d3a0" -> "sha256:b654fe3f4ba8017a0dcff6b8c7970728c1c4989ae9d12063901da97c19aad8d2" [label=""];
  "sha256:b654fe3f4ba8017a0dcff6b8c7970728c1c4989ae9d12063901da97c19aad8d2" -> "sha256:297e74bf766951c268da3a545b321cd6845602af3ba969f4422ad73404a6b343" [label=""];
  "sha256:297e74bf766951c268da3a545b321cd6845602af3ba969f4422ad73404a6b343" -> "sha256:0c80a27a3481246a9c6c47f5a18ae782b1d5561a4aacee863fdadb2c26719fac" [label=""];
  "sha256:0c80a27a3481246a9c6c47f5a18ae782b1d5561a4aacee863fdadb2c26719fac" -> "sha256:689f199150d421a9c5921bab3aa4c7a542d01ded81594e0c2ca2efe30bf169f3" [label=""];
  "sha256:689f199150d421a9c5921bab3aa4c7a542d01ded81594e0c2ca2efe30bf169f3" -> "sha256:f95e5d6b8e2a4132b7a74bb06758f60a044f1bafc138f6fec6fe15414aae928c" [label=""];
  "sha256:f95e5d6b8e2a4132b7a74bb06758f60a044f1bafc138f6fec6fe15414aae928c" -> "sha256:41e7694f4813cbd90502bece761a6460201cb1333338568e0db5611dfafdd23b" [label=""];
  "sha256:41e7694f4813cbd90502bece761a6460201cb1333338568e0db5611dfafdd23b" -> "sha256:4fd2a4a9bbe781f75d2f9f81f76d6697492608b320389abf58bb1bc3ab5b55b0" [label=""];
  "sha256:4fd2a4a9bbe781f75d2f9f81f76d6697492608b320389abf58bb1bc3ab5b55b0" -> "sha256:c066c09abebd6718bdcd5314bbc2fb4ea31a17c6eee783a3b37cead1253c9111" [label=""];
  "sha256:c066c09abebd6718bdcd5314bbc2fb4ea31a17c6eee783a3b37cead1253c9111" -> "sha256:2819c3b28802ee288082a718579a91b77209df55717c576cd0db05b5999ee47d" [label=""];
  "sha256:2819c3b28802ee288082a718579a91b77209df55717c576cd0db05b5999ee47d" -> "sha256:9a37ba7e432a636ab960fe3cac47e1f2730189972f56c1fbb1126ac13c1bcfdf" [label=""];
  "sha256:9a37ba7e432a636ab960fe3cac47e1f2730189972f56c1fbb1126ac13c1bcfdf" -> "sha256:911b0152280721a174a6168273d68b510f095fc01702363a8a224b34270b58d4" [label=""];
  "sha256:911b0152280721a174a6168273d68b510f095fc01702363a8a224b34270b58d4" -> "sha256:55b625691731b30bae3aa7a08b011199c0cf1da29fc25c90aec6c0a9d45baeee" [label=""];
  "sha256:55b625691731b30bae3aa7a08b011199c0cf1da29fc25c90aec6c0a9d45baeee" -> "sha256:e78bb2cf50918f0a33c494d9a8960859fd13c7251b5a8c586e323963178a1776" [label=""];
}

