[app/sources/312230459.Dockerfile]
digraph {
  "sha256:d67aa687b4a38d2c505665e12522a6aab38a792520d50ef41f1a85b753b833fc" [label="local://context" shape="ellipse"];
  "sha256:45a3bd8e8024a4a3735f1953574a49787ea152b847f5c79bbb5ea91bb827606f" [label="docker-image://docker.io/tensorflow/tensorflow:1.13.1-gpu-py3" shape="ellipse"];
  "sha256:6ec6e3f4c87dc0fdd26eb1f70816d45418e69288c137871fc601563ad1dddf55" [label="/bin/sh -c apt-get -qq update     && apt-get -qq install -y --no-install-recommends         graphviz         libhdf5-dev         vim         wget     && apt-get -qq clean     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:84ce1dbb46a28b32e9281a80a9af23d2117d2764701ac785b3b22e349ffa5336" [label="/bin/sh -c pip --no-cache-dir install -q --upgrade         pip         setuptools     && pip --no-cache-dir install -q -U         h5py         jupyterlab         keras         opencv-python-headless         pydot         pyyaml         scikit-image" shape="box"];
  "sha256:d65f7939ff71ae36c491c411ec021626fe95ea6d7492e3217de53a2c6a364906" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:89621445c862274ba10a97968adaf944af923daee9e8e56b412dd864837d612d" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:54b17eb0d205094550e0677eda2884bbb7d2664601cf19ba1feec93108cac4e3" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:b10319aba3e69f693c46ee2d7085fe86430ab83115640ed66994b779c648abed" [label="sha256:b10319aba3e69f693c46ee2d7085fe86430ab83115640ed66994b779c648abed" shape="plaintext"];
  "sha256:45a3bd8e8024a4a3735f1953574a49787ea152b847f5c79bbb5ea91bb827606f" -> "sha256:6ec6e3f4c87dc0fdd26eb1f70816d45418e69288c137871fc601563ad1dddf55" [label=""];
  "sha256:6ec6e3f4c87dc0fdd26eb1f70816d45418e69288c137871fc601563ad1dddf55" -> "sha256:84ce1dbb46a28b32e9281a80a9af23d2117d2764701ac785b3b22e349ffa5336" [label=""];
  "sha256:84ce1dbb46a28b32e9281a80a9af23d2117d2764701ac785b3b22e349ffa5336" -> "sha256:d65f7939ff71ae36c491c411ec021626fe95ea6d7492e3217de53a2c6a364906" [label=""];
  "sha256:d67aa687b4a38d2c505665e12522a6aab38a792520d50ef41f1a85b753b833fc" -> "sha256:d65f7939ff71ae36c491c411ec021626fe95ea6d7492e3217de53a2c6a364906" [label=""];
  "sha256:d65f7939ff71ae36c491c411ec021626fe95ea6d7492e3217de53a2c6a364906" -> "sha256:89621445c862274ba10a97968adaf944af923daee9e8e56b412dd864837d612d" [label=""];
  "sha256:d67aa687b4a38d2c505665e12522a6aab38a792520d50ef41f1a85b753b833fc" -> "sha256:89621445c862274ba10a97968adaf944af923daee9e8e56b412dd864837d612d" [label=""];
  "sha256:89621445c862274ba10a97968adaf944af923daee9e8e56b412dd864837d612d" -> "sha256:54b17eb0d205094550e0677eda2884bbb7d2664601cf19ba1feec93108cac4e3" [label=""];
  "sha256:54b17eb0d205094550e0677eda2884bbb7d2664601cf19ba1feec93108cac4e3" -> "sha256:b10319aba3e69f693c46ee2d7085fe86430ab83115640ed66994b779c648abed" [label=""];
}

