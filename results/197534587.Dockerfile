[app/sources/197534587.Dockerfile]
digraph {
  "sha256:45927f9f2928879d9b5238dbbd7e8a711bb26598b65d301722ab0cee58aa39ee" [label="docker-image://docker.io/gurvin/spark-worker-base:latest" shape="ellipse"];
  "sha256:0430dafb8aa3c459d490b244b9d473987c214314231316a00bea1161ebf4ad6c" [label="/bin/sh -c apt-get update && apt-get install -yq --no-install-recommends     inkscape git vim jed emacs libsm6 pandoc texlive-latex-base     texlive-latex-extra texlive-fonts-extra nano texlive-fonts-recommended     texlive-generic-recommended libxrender1     && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ce1a1b96d218ea0731cb073357f007a672c4736c2c83b4a4c50d1ce0bd2004d6" [label="/bin/sh -c mkdir -p $NOTEBOOKS_CONFIG_DIR" shape="box"];
  "sha256:d302cec141741d494f9909f777d2b63ac01b02c7ccf85ba45f7688a3e623aca1" [label="local://context" shape="ellipse"];
  "sha256:78085b8b651a20e694ab0a75726779d26b405cb430c1b7b35fb5b391a2b9baab" [label="copy{src=/jupyter_notebook_config.py, dest=/opt/jupyter/config/}" shape="note"];
  "sha256:d33f6cac912592d53018f1274628d2a4ba3a37978a24a4e2c4e07c1b9e79f482" [label="/bin/sh -c mkdir -p /notebooks /notebooks/projects" shape="box"];
  "sha256:b96b0d43620f00ba830332efebbcf8ab51a325d0712bdf267cca7f56dfe57924" [label="copy{src=/examples, dest=/notebooks/examples}" shape="note"];
  "sha256:5e9dc71b612e331f26572b23e29da7fd2fe10c040231735b2b9e76a2e1be81de" [label="/bin/sh -c ln -s /notebooks/projects /data" shape="box"];
  "sha256:697097ba15af8973b184bb0f94c9360d58db6462090ed1781fa5b9286b97464e" [label="copy{src=/toree-0.2.0.dev1.tar.gz, dest=/opt/}" shape="note"];
  "sha256:22e1a42370e683922cf905cc097266251181572847a1053284c5d0cc37f15687" [label="/bin/sh -c pip install /opt/toree-0.2.0.dev1.tar.gz" shape="box"];
  "sha256:9fb256c06fd7bd3017b7720eeef07bc75b2f8cb5df8012f3bfb33e84d9cbdaf9" [label="/bin/sh -c jupyter toree install --ToreeInstall.prefix=$CONDA_DIR --ToreeInstall.toree_opts=--nosparkcontext" shape="box"];
  "sha256:9d668d248974cd5477904f54a7918bb76e5ff833211bf1a4a4cacc3058fa42bb" [label="/bin/sh -c jq --arg v \"$CONDA_DIR/envs/python2/bin/python\"         '.[\"env\"][\"PYSPARK_PYTHON\"]=$v'         $CONDA_DIR/share/jupyter/kernels/python2/kernel.json > /tmp/kernel.json &&         mv /tmp/kernel.json $CONDA_DIR/share/jupyter/kernels/python2/kernel.json" shape="box"];
  "sha256:840ce8747abdfa61774446db20a72edb25572af68d327064aa27dbea7b718961" [label="copy{src=/start-notebook.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:c44c77a73d2bdf19a4f46f536c228906953b38e2ad6ed9563fcd06b2d55e1406" [label="sha256:c44c77a73d2bdf19a4f46f536c228906953b38e2ad6ed9563fcd06b2d55e1406" shape="plaintext"];
  "sha256:45927f9f2928879d9b5238dbbd7e8a711bb26598b65d301722ab0cee58aa39ee" -> "sha256:0430dafb8aa3c459d490b244b9d473987c214314231316a00bea1161ebf4ad6c" [label=""];
  "sha256:0430dafb8aa3c459d490b244b9d473987c214314231316a00bea1161ebf4ad6c" -> "sha256:ce1a1b96d218ea0731cb073357f007a672c4736c2c83b4a4c50d1ce0bd2004d6" [label=""];
  "sha256:ce1a1b96d218ea0731cb073357f007a672c4736c2c83b4a4c50d1ce0bd2004d6" -> "sha256:78085b8b651a20e694ab0a75726779d26b405cb430c1b7b35fb5b391a2b9baab" [label=""];
  "sha256:d302cec141741d494f9909f777d2b63ac01b02c7ccf85ba45f7688a3e623aca1" -> "sha256:78085b8b651a20e694ab0a75726779d26b405cb430c1b7b35fb5b391a2b9baab" [label=""];
  "sha256:78085b8b651a20e694ab0a75726779d26b405cb430c1b7b35fb5b391a2b9baab" -> "sha256:d33f6cac912592d53018f1274628d2a4ba3a37978a24a4e2c4e07c1b9e79f482" [label=""];
  "sha256:d33f6cac912592d53018f1274628d2a4ba3a37978a24a4e2c4e07c1b9e79f482" -> "sha256:b96b0d43620f00ba830332efebbcf8ab51a325d0712bdf267cca7f56dfe57924" [label=""];
  "sha256:d302cec141741d494f9909f777d2b63ac01b02c7ccf85ba45f7688a3e623aca1" -> "sha256:b96b0d43620f00ba830332efebbcf8ab51a325d0712bdf267cca7f56dfe57924" [label=""];
  "sha256:b96b0d43620f00ba830332efebbcf8ab51a325d0712bdf267cca7f56dfe57924" -> "sha256:5e9dc71b612e331f26572b23e29da7fd2fe10c040231735b2b9e76a2e1be81de" [label=""];
  "sha256:5e9dc71b612e331f26572b23e29da7fd2fe10c040231735b2b9e76a2e1be81de" -> "sha256:697097ba15af8973b184bb0f94c9360d58db6462090ed1781fa5b9286b97464e" [label=""];
  "sha256:d302cec141741d494f9909f777d2b63ac01b02c7ccf85ba45f7688a3e623aca1" -> "sha256:697097ba15af8973b184bb0f94c9360d58db6462090ed1781fa5b9286b97464e" [label=""];
  "sha256:697097ba15af8973b184bb0f94c9360d58db6462090ed1781fa5b9286b97464e" -> "sha256:22e1a42370e683922cf905cc097266251181572847a1053284c5d0cc37f15687" [label=""];
  "sha256:22e1a42370e683922cf905cc097266251181572847a1053284c5d0cc37f15687" -> "sha256:9fb256c06fd7bd3017b7720eeef07bc75b2f8cb5df8012f3bfb33e84d9cbdaf9" [label=""];
  "sha256:9fb256c06fd7bd3017b7720eeef07bc75b2f8cb5df8012f3bfb33e84d9cbdaf9" -> "sha256:9d668d248974cd5477904f54a7918bb76e5ff833211bf1a4a4cacc3058fa42bb" [label=""];
  "sha256:9d668d248974cd5477904f54a7918bb76e5ff833211bf1a4a4cacc3058fa42bb" -> "sha256:840ce8747abdfa61774446db20a72edb25572af68d327064aa27dbea7b718961" [label=""];
  "sha256:d302cec141741d494f9909f777d2b63ac01b02c7ccf85ba45f7688a3e623aca1" -> "sha256:840ce8747abdfa61774446db20a72edb25572af68d327064aa27dbea7b718961" [label=""];
  "sha256:840ce8747abdfa61774446db20a72edb25572af68d327064aa27dbea7b718961" -> "sha256:c44c77a73d2bdf19a4f46f536c228906953b38e2ad6ed9563fcd06b2d55e1406" [label=""];
}

