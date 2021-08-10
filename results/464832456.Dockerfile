[app/sources/464832456.Dockerfile]
digraph {
  "sha256:f7b45d8580f1687a88e1660c35075617eaa6ed097f967b8ce1ab380ad4b8271b" [label="docker-image://docker.io/jupyter/scipy-notebook:137a295ff71b" shape="ellipse"];
  "sha256:d5f78ad8b61fd21ffa8fc48e611c84ff47517b6bfa3cf1542fb6003111443369" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends     fonts-dejavu     tzdata     gfortran     gcc     scilab     pari-gp     libpari-dev     sagemath     sagemath-jupyter     libgmp-dev     && apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:321f59b7644135cf0e1843c9bdd9abeda531642fd1d928c6f3546fda14e304bf" [label="/bin/sh -c conda install --quiet --yes     'r-base=3.4.1'     'r-irkernel=0.8*'     'r-plyr=1.8*'     'r-devtools=1.13*'     'r-tidyverse=1.1*'     'r-shiny=1.0*'     'r-rmarkdown=1.8*'     'r-forecast=8.2*'     'r-rsqlite=2.0*'     'r-reshape2=1.4*'     'r-nycflights13=0.2*'     'r-caret=6.0*'     'r-rcurl=1.95*'     'r-crayon=1.3*'     'r-randomforest=4.6*'     'r-htmltools=0.3*'     'r-sparklyr=0.7*'     'r-htmlwidgets=1.0*'     'r-hexbin=1.27*'     'jupyterhub'     'julia=1.0*' &&     conda clean -tipsy &&     fix-permissions $CONDA_DIR" shape="box"];
  "sha256:a065e565841782436b10f9849bf2ac0bf59a18e03ea311076de7e3be52cb30a4" [label="/bin/sh -c pip install     pari_jupyter     scilab-kernel &&     fix-permissions $CONDA_DIR" shape="box"];
  "sha256:7ff42882c8edc6a01449e9ec1644a931adcaa4d8c6d4844790b2298dee6f5941" [label="/bin/sh -c sed -i 's/\"\\/usr\\/bin\\/sage\"/\"env\", \"PATH=\\/usr\\/local\\/sbin:\\/usr\\/local\\/bin:\\/usr\\/sbin:\\/usr\\/bin:\\/sbin:\\/bin\", \"\\/usr\\/bin\\/sage\"/' /usr/share/jupyter/kernels/sagemath/kernel.json" shape="box"];
  "sha256:a316a5c61f7b7a469e98fed4121ee0fd497724e759c688f790122afe2812da68" [label="local://context" shape="ellipse"];
  "sha256:3407109aeec08d036d59494cf5284af9b5647c595e712c09624afe2a410cd5b8" [label="copy{src=/conda-activate.sh, dest=/usr/local/bin/before-notebook.d/}" shape="note"];
  "sha256:b334f35fe33a78699fc5f989b05f3cbc14c62239eba2786e0936d550c3a99ea4" [label="sha256:b334f35fe33a78699fc5f989b05f3cbc14c62239eba2786e0936d550c3a99ea4" shape="plaintext"];
  "sha256:f7b45d8580f1687a88e1660c35075617eaa6ed097f967b8ce1ab380ad4b8271b" -> "sha256:d5f78ad8b61fd21ffa8fc48e611c84ff47517b6bfa3cf1542fb6003111443369" [label=""];
  "sha256:d5f78ad8b61fd21ffa8fc48e611c84ff47517b6bfa3cf1542fb6003111443369" -> "sha256:321f59b7644135cf0e1843c9bdd9abeda531642fd1d928c6f3546fda14e304bf" [label=""];
  "sha256:321f59b7644135cf0e1843c9bdd9abeda531642fd1d928c6f3546fda14e304bf" -> "sha256:a065e565841782436b10f9849bf2ac0bf59a18e03ea311076de7e3be52cb30a4" [label=""];
  "sha256:a065e565841782436b10f9849bf2ac0bf59a18e03ea311076de7e3be52cb30a4" -> "sha256:7ff42882c8edc6a01449e9ec1644a931adcaa4d8c6d4844790b2298dee6f5941" [label=""];
  "sha256:7ff42882c8edc6a01449e9ec1644a931adcaa4d8c6d4844790b2298dee6f5941" -> "sha256:3407109aeec08d036d59494cf5284af9b5647c595e712c09624afe2a410cd5b8" [label=""];
  "sha256:a316a5c61f7b7a469e98fed4121ee0fd497724e759c688f790122afe2812da68" -> "sha256:3407109aeec08d036d59494cf5284af9b5647c595e712c09624afe2a410cd5b8" [label=""];
  "sha256:3407109aeec08d036d59494cf5284af9b5647c595e712c09624afe2a410cd5b8" -> "sha256:b334f35fe33a78699fc5f989b05f3cbc14c62239eba2786e0936d550c3a99ea4" [label=""];
}

