[app/sources/243736924.Dockerfile]
digraph {
  "sha256:0a2a2542bf4ba1368b2c3be9af1150a8a058cf1bb20919fdc634ef361c8443d8" [label="docker-image://docker.io/tensorflow/tensorflow:1.0.0-rc1-devel-gpu-py3" shape="ellipse"];
  "sha256:47ddc1cf18da0f0776da75134ecf3fa6e13f6797163b3b7e3d9e6c03080ad8c2" [label="/bin/sh -c apt-get update && apt-get install -y     less     vim     man     wget     byobu     unzip     cmake     libgtk2.0-dev     libjpeg-dev     libpng-dev     python3-numpy     python3-tk     nscd     graphviz     && apt-get -y clean all     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:867eaf49afa4ed20fe1f9789f7f68e3c6aab198e78ef2eefdd8c6ede81ffeaa4" [label="/bin/sh -c pip3 install keras" shape="box"];
  "sha256:d9869e77c61274cda4d9ec160a524ac3348d59143a9fe75d4d9fd79d48dd940e" [label="/bin/sh -c pip3 --no-cache-dir install         ipykernel         jupyter         matplotlib         &&     python3 -m ipykernel.kernelspec" shape="box"];
  "sha256:6c4d08d5079c4702667f58c12524105c9ba125a4bb6117e758c492efd842b7e6" [label="/bin/sh -c pip3 --no-cache-dir install                 jupyterlab                 &&     jupyter serverextension enable --py jupyterlab" shape="box"];
  "sha256:147bcc196fa88209a80124f56c979282b7d1628c5242ad32dd43914a7b4710d5" [label="local://context" shape="ellipse"];
  "sha256:09564c21cd20ae43af3bcfa0d22aa3a198b815e4fd00c63b8eb36d431e85c816" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:2178a9848d3ae9b0362fafef00700f009a8cf036fe94a40fe6a556a8b5bf9dce" [label="copy{src=/run_jupyternotebook.sh, dest=/}" shape="note"];
  "sha256:0a297d1cc311b0ded00c3d18924f74df553baee4f3b25509cb57a4d4e95f65ca" [label="copy{src=/run_jupyterlab.sh, dest=/}" shape="note"];
  "sha256:86af0fe2422ae3694147097f81676236c43482e8ed2f73c15ae5ffeba54583db" [label="/bin/sh -c pip3 install scipy scikit-learn scikit-image seaborn h5py pydot-ng" shape="box"];
  "sha256:49d3846fadc48a6e0185c18a70557c71c3c91cc0a4f20149965e563dc65b9175" [label="/bin/sh -c pip3 install https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master     && jupyter contrib nbextension install --user     && jupyter nbextension enable collapsible_headings/main" shape="box"];
  "sha256:36e156e10ab9f0ec1e992e8e7153867c13abf36d722bbe75bd361d9111e7de42" [label="sha256:36e156e10ab9f0ec1e992e8e7153867c13abf36d722bbe75bd361d9111e7de42" shape="plaintext"];
  "sha256:0a2a2542bf4ba1368b2c3be9af1150a8a058cf1bb20919fdc634ef361c8443d8" -> "sha256:47ddc1cf18da0f0776da75134ecf3fa6e13f6797163b3b7e3d9e6c03080ad8c2" [label=""];
  "sha256:47ddc1cf18da0f0776da75134ecf3fa6e13f6797163b3b7e3d9e6c03080ad8c2" -> "sha256:867eaf49afa4ed20fe1f9789f7f68e3c6aab198e78ef2eefdd8c6ede81ffeaa4" [label=""];
  "sha256:867eaf49afa4ed20fe1f9789f7f68e3c6aab198e78ef2eefdd8c6ede81ffeaa4" -> "sha256:d9869e77c61274cda4d9ec160a524ac3348d59143a9fe75d4d9fd79d48dd940e" [label=""];
  "sha256:d9869e77c61274cda4d9ec160a524ac3348d59143a9fe75d4d9fd79d48dd940e" -> "sha256:6c4d08d5079c4702667f58c12524105c9ba125a4bb6117e758c492efd842b7e6" [label=""];
  "sha256:6c4d08d5079c4702667f58c12524105c9ba125a4bb6117e758c492efd842b7e6" -> "sha256:09564c21cd20ae43af3bcfa0d22aa3a198b815e4fd00c63b8eb36d431e85c816" [label=""];
  "sha256:147bcc196fa88209a80124f56c979282b7d1628c5242ad32dd43914a7b4710d5" -> "sha256:09564c21cd20ae43af3bcfa0d22aa3a198b815e4fd00c63b8eb36d431e85c816" [label=""];
  "sha256:09564c21cd20ae43af3bcfa0d22aa3a198b815e4fd00c63b8eb36d431e85c816" -> "sha256:2178a9848d3ae9b0362fafef00700f009a8cf036fe94a40fe6a556a8b5bf9dce" [label=""];
  "sha256:147bcc196fa88209a80124f56c979282b7d1628c5242ad32dd43914a7b4710d5" -> "sha256:2178a9848d3ae9b0362fafef00700f009a8cf036fe94a40fe6a556a8b5bf9dce" [label=""];
  "sha256:2178a9848d3ae9b0362fafef00700f009a8cf036fe94a40fe6a556a8b5bf9dce" -> "sha256:0a297d1cc311b0ded00c3d18924f74df553baee4f3b25509cb57a4d4e95f65ca" [label=""];
  "sha256:147bcc196fa88209a80124f56c979282b7d1628c5242ad32dd43914a7b4710d5" -> "sha256:0a297d1cc311b0ded00c3d18924f74df553baee4f3b25509cb57a4d4e95f65ca" [label=""];
  "sha256:0a297d1cc311b0ded00c3d18924f74df553baee4f3b25509cb57a4d4e95f65ca" -> "sha256:86af0fe2422ae3694147097f81676236c43482e8ed2f73c15ae5ffeba54583db" [label=""];
  "sha256:86af0fe2422ae3694147097f81676236c43482e8ed2f73c15ae5ffeba54583db" -> "sha256:49d3846fadc48a6e0185c18a70557c71c3c91cc0a4f20149965e563dc65b9175" [label=""];
  "sha256:49d3846fadc48a6e0185c18a70557c71c3c91cc0a4f20149965e563dc65b9175" -> "sha256:36e156e10ab9f0ec1e992e8e7153867c13abf36d722bbe75bd361d9111e7de42" [label=""];
}

