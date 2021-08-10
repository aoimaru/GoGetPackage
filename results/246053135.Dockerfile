[app/sources/246053135.Dockerfile]
digraph {
  "sha256:2e955253d21c3592eb4dfd560e5ce36509699918eded20e19d4259286c8777f2" [label="local://context" shape="ellipse"];
  "sha256:9d78e13bdab5dd0ec782aba2433985c9d9deea4c82e40dc98621d82fdee0fb11" [label="docker-image://docker.io/datmo/python-base:gpu-py35" shape="ellipse"];
  "sha256:f876951b5800f3f4611968355d8918ce80d157a3311abb6d4c01ac283323c91d" [label="/bin/sh -c set -e       && ln -sf /bin/bash /bin/sh" shape="box"];
  "sha256:c48c643c47999a227df7f14354f0f4e69d7b8f969e5075af27ef19a4e29df5ea" [label="/bin/sh -c set -e       && apt-get -y update       && apt-get -y dist-upgrade       && apt-get -y install apt-transport-https gdebi-core libapparmor1 libcurl4-openssl-dev                             libssl-dev libxml2-dev pandoc r-base       && apt-get -y autoremove       && apt-get clean" shape="box"];
  "sha256:1447f53f16b5671426a2242961d2c38952c93a9f80d0de5576d226e69fa43bc8" [label="/bin/sh -c set -e       && R -e \"      update.packages(ask = FALSE, repos = '${CRAN_URL}');       pkgs <- c('dbplyr', 'devtools', 'docopt', 'doParallel', 'foreach', 'gridExtra', 'rmarkdown', 'tidyverse');       install.packages(pkgs = pkgs, dependencies = TRUE, repos = '${CRAN_URL}');       sapply(pkgs, require, character.only = TRUE);\"" shape="box"];
  "sha256:54cf080efd86c5596ca7e4ed4c30eab6110b237d1bbdf9bb1fcb5faebff6b7d0" [label="/bin/sh -c set -e       && curl -sS https://s3.amazonaws.com/rstudio-server/current.ver         | xargs -I {} curl -sS http://download2.rstudio.org/rstudio-server-{}-amd64.deb -o /tmp/rstudio.deb       && gdebi -n /tmp/rstudio.deb       && rm -rf /tmp/rstudio.deb" shape="box"];
  "sha256:39ba78873c140a8b967ac318b70509c5be32982473b0cc4e5eb253074de69937" [label="/bin/sh -c set -e       && useradd -m -d /home rstudio       && echo rstudio:rstudio         | chpasswd" shape="box"];
  "sha256:991fb8dad4333161052cca9a593f0f8f730fdae2aa5723ce5444db13fa652c01" [label="/bin/sh -c pip --no-cache-dir install         Cython         h5py         ipykernel         jupyter         matplotlib         numpy         pandas         path.py         pyyaml         scipy         six         sklearn         sympy         Pillow         zmq         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:d6ba7ed55989909fb914528412dc34d46ee23090950f72b642ae8e11023e4267" [label="copy{src=/jupyter_notebook_config_py3.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:1dc11ed15438b5ea89935354c5b56137a8daf471f850d13be1ed6d36d9db9308" [label="/bin/sh -c mv /root/.jupyter/jupyter_notebook_config_py3.py /root/.jupyter/jupyter_notebook_config.py" shape="box"];
  "sha256:d07ceb63fb4addf94d6e0fa61d52ae399080b8008133bbdac8f6a1c88ef26317" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:573523847fa0d37db378eabd5c94a77a8cd900c290ac4184b01cd69d79a14340" [label="/bin/sh -c chmod +x /run_jupyter.sh" shape="box"];
  "sha256:d55ecb7fa27877021bd6040221514767de969d9e6c89ed6ba5f8764849ecea2e" [label="/bin/sh -c pip install jupyterlab==0.32.1" shape="box"];
  "sha256:a75f857a52bb54df887f247bd6ff7c88bc7a6f866f6e3247fd480d293bbf09b8" [label="sha256:a75f857a52bb54df887f247bd6ff7c88bc7a6f866f6e3247fd480d293bbf09b8" shape="plaintext"];
  "sha256:9d78e13bdab5dd0ec782aba2433985c9d9deea4c82e40dc98621d82fdee0fb11" -> "sha256:f876951b5800f3f4611968355d8918ce80d157a3311abb6d4c01ac283323c91d" [label=""];
  "sha256:f876951b5800f3f4611968355d8918ce80d157a3311abb6d4c01ac283323c91d" -> "sha256:c48c643c47999a227df7f14354f0f4e69d7b8f969e5075af27ef19a4e29df5ea" [label=""];
  "sha256:c48c643c47999a227df7f14354f0f4e69d7b8f969e5075af27ef19a4e29df5ea" -> "sha256:1447f53f16b5671426a2242961d2c38952c93a9f80d0de5576d226e69fa43bc8" [label=""];
  "sha256:1447f53f16b5671426a2242961d2c38952c93a9f80d0de5576d226e69fa43bc8" -> "sha256:54cf080efd86c5596ca7e4ed4c30eab6110b237d1bbdf9bb1fcb5faebff6b7d0" [label=""];
  "sha256:54cf080efd86c5596ca7e4ed4c30eab6110b237d1bbdf9bb1fcb5faebff6b7d0" -> "sha256:39ba78873c140a8b967ac318b70509c5be32982473b0cc4e5eb253074de69937" [label=""];
  "sha256:39ba78873c140a8b967ac318b70509c5be32982473b0cc4e5eb253074de69937" -> "sha256:991fb8dad4333161052cca9a593f0f8f730fdae2aa5723ce5444db13fa652c01" [label=""];
  "sha256:991fb8dad4333161052cca9a593f0f8f730fdae2aa5723ce5444db13fa652c01" -> "sha256:d6ba7ed55989909fb914528412dc34d46ee23090950f72b642ae8e11023e4267" [label=""];
  "sha256:2e955253d21c3592eb4dfd560e5ce36509699918eded20e19d4259286c8777f2" -> "sha256:d6ba7ed55989909fb914528412dc34d46ee23090950f72b642ae8e11023e4267" [label=""];
  "sha256:d6ba7ed55989909fb914528412dc34d46ee23090950f72b642ae8e11023e4267" -> "sha256:1dc11ed15438b5ea89935354c5b56137a8daf471f850d13be1ed6d36d9db9308" [label=""];
  "sha256:1dc11ed15438b5ea89935354c5b56137a8daf471f850d13be1ed6d36d9db9308" -> "sha256:d07ceb63fb4addf94d6e0fa61d52ae399080b8008133bbdac8f6a1c88ef26317" [label=""];
  "sha256:2e955253d21c3592eb4dfd560e5ce36509699918eded20e19d4259286c8777f2" -> "sha256:d07ceb63fb4addf94d6e0fa61d52ae399080b8008133bbdac8f6a1c88ef26317" [label=""];
  "sha256:d07ceb63fb4addf94d6e0fa61d52ae399080b8008133bbdac8f6a1c88ef26317" -> "sha256:573523847fa0d37db378eabd5c94a77a8cd900c290ac4184b01cd69d79a14340" [label=""];
  "sha256:573523847fa0d37db378eabd5c94a77a8cd900c290ac4184b01cd69d79a14340" -> "sha256:d55ecb7fa27877021bd6040221514767de969d9e6c89ed6ba5f8764849ecea2e" [label=""];
  "sha256:d55ecb7fa27877021bd6040221514767de969d9e6c89ed6ba5f8764849ecea2e" -> "sha256:a75f857a52bb54df887f247bd6ff7c88bc7a6f866f6e3247fd480d293bbf09b8" [label=""];
}

