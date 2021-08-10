[app/sources/246053277.Dockerfile]
digraph {
  "sha256:76dca7e42a264a244743f45a4168434ab460b35817397ab1d75887de3153b51c" [label="docker-image://docker.io/datmo/opencv:cpu-py27" shape="ellipse"];
  "sha256:ff695a5e7c51daf1980e6b014533e0988e6d4052991e7b76195e1fc481d0c46d" [label="/bin/sh -c pip --no-cache-dir install         ipykernel         jupyter         notebook==5.4.0         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:bd53ae930a534b1de1e9e93f32e016069229daa48c34c08f01b2e8fc3599f3d6" [label="local://context" shape="ellipse"];
  "sha256:d447c88ed0b836ef6bbd0a20dda3b50f890e72ff5176791688ab014e4f6c75dd" [label="copy{src=/jupyter_notebook_config_py2.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:ea8d7afc839a790562586ff118832738710fe1db42d7457495b1102822c1c864" [label="/bin/sh -c mv /root/.jupyter/jupyter_notebook_config_py2.py /root/.jupyter/jupyter_notebook_config.py" shape="box"];
  "sha256:186e0632a67dd27bfe63c8d7db1ac7483a973959ecc1c9ebd44a6e79a38b0e44" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:ae434302994c18b5be2eba7c0242a36941a42d81594c455170e0ad1438e31e03" [label="/bin/sh -c chmod +x /run_jupyter.sh" shape="box"];
  "sha256:b106395052951129be86b326c0085b1fb0de38264c950f89c1392941adabd2ca" [label="/bin/sh -c pip install jupyterlab==0.32.1" shape="box"];
  "sha256:306f8457b090be2fe4773eb877132c4f24eff9c886d51b8563a0503c695f0463" [label="sha256:306f8457b090be2fe4773eb877132c4f24eff9c886d51b8563a0503c695f0463" shape="plaintext"];
  "sha256:76dca7e42a264a244743f45a4168434ab460b35817397ab1d75887de3153b51c" -> "sha256:ff695a5e7c51daf1980e6b014533e0988e6d4052991e7b76195e1fc481d0c46d" [label=""];
  "sha256:ff695a5e7c51daf1980e6b014533e0988e6d4052991e7b76195e1fc481d0c46d" -> "sha256:d447c88ed0b836ef6bbd0a20dda3b50f890e72ff5176791688ab014e4f6c75dd" [label=""];
  "sha256:bd53ae930a534b1de1e9e93f32e016069229daa48c34c08f01b2e8fc3599f3d6" -> "sha256:d447c88ed0b836ef6bbd0a20dda3b50f890e72ff5176791688ab014e4f6c75dd" [label=""];
  "sha256:d447c88ed0b836ef6bbd0a20dda3b50f890e72ff5176791688ab014e4f6c75dd" -> "sha256:ea8d7afc839a790562586ff118832738710fe1db42d7457495b1102822c1c864" [label=""];
  "sha256:ea8d7afc839a790562586ff118832738710fe1db42d7457495b1102822c1c864" -> "sha256:186e0632a67dd27bfe63c8d7db1ac7483a973959ecc1c9ebd44a6e79a38b0e44" [label=""];
  "sha256:bd53ae930a534b1de1e9e93f32e016069229daa48c34c08f01b2e8fc3599f3d6" -> "sha256:186e0632a67dd27bfe63c8d7db1ac7483a973959ecc1c9ebd44a6e79a38b0e44" [label=""];
  "sha256:186e0632a67dd27bfe63c8d7db1ac7483a973959ecc1c9ebd44a6e79a38b0e44" -> "sha256:ae434302994c18b5be2eba7c0242a36941a42d81594c455170e0ad1438e31e03" [label=""];
  "sha256:ae434302994c18b5be2eba7c0242a36941a42d81594c455170e0ad1438e31e03" -> "sha256:b106395052951129be86b326c0085b1fb0de38264c950f89c1392941adabd2ca" [label=""];
  "sha256:b106395052951129be86b326c0085b1fb0de38264c950f89c1392941adabd2ca" -> "sha256:306f8457b090be2fe4773eb877132c4f24eff9c886d51b8563a0503c695f0463" [label=""];
}

