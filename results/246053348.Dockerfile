[app/sources/246053348.Dockerfile]
digraph {
  "sha256:085da07aefc0376f253d4b3872ba20693e2af8a1dfa40f5b822a55a334f27a54" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:4bcdbf9ddffe0a2e27505832c76f049d3e93f97326efdfe3d3219efc884ba154" [label="/bin/sh -c apt-get update && apt-get install -y     python-numpy     python-scipy     python-dev     python-nose     g++     libopenblas-dev     git     curl" shape="box"];
  "sha256:a563b073614afd40285937db9ab9574101c381643b12480758f24be30cabffea" [label="/bin/sh -c curl -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:b0e6145e42049cd0c678714c3bda67b2ee8408d11944f8ba111692ccd83c554a" [label="/bin/sh -c pip install -U spacy" shape="box"];
  "sha256:bbb8ada4f9b7c66b36a277826dbe16dfa990cebd6a205ddd7bd05e1db51937c2" [label="/bin/sh -c python -m spacy.en.download" shape="box"];
  "sha256:3fbecba48a7c7f54f0c01145c1e6e195a83460bc1ee669e977894e4257babf66" [label="/bin/sh -c pip --no-cache-dir install --upgrade ipython && \tpip --no-cache-dir install \t\tCython \t\tipykernel \t\tjupyter \t\tpath.py \t\tPillow \t\tpygments \t\tsix \t\tsphinx \t\twheel \t\tzmq \t\t&& \tpython -m ipykernel.kernelspec" shape="box"];
  "sha256:7fa76f37fbd33f7672cfa662f00d0c30aff9cb6cbc9f490e60fad90e38e34b3b" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:a73202df263a0ff4db1db7e7c0655be3d1e3478ce604bf7e681569e5231f46fb" [label="copy{src=/run_jupyter.sh, dest=/home/}" shape="note"];
  "sha256:2012823a92a50320391aa573ef80844ceb3a947a476581816ad30c332b0f65a2" [label="/bin/sh -c pip install flask" shape="box"];
  "sha256:0bc7de597325bc9e1df6d66adcd40e59e68c1945efd0347521b0dcd98846e2f5" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:660c89018ce7ce01ae8d13d6512d1b059932fdf6f31cd0583cc5e98438625456" [label="/bin/sh -c chmod -R a+w /workspace" shape="box"];
  "sha256:122814e66cc2106a358b4bc2ead7ea341e77232522cffe8b64fd531584210a23" [label="sha256:122814e66cc2106a358b4bc2ead7ea341e77232522cffe8b64fd531584210a23" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:4bcdbf9ddffe0a2e27505832c76f049d3e93f97326efdfe3d3219efc884ba154" [label=""];
  "sha256:4bcdbf9ddffe0a2e27505832c76f049d3e93f97326efdfe3d3219efc884ba154" -> "sha256:a563b073614afd40285937db9ab9574101c381643b12480758f24be30cabffea" [label=""];
  "sha256:a563b073614afd40285937db9ab9574101c381643b12480758f24be30cabffea" -> "sha256:b0e6145e42049cd0c678714c3bda67b2ee8408d11944f8ba111692ccd83c554a" [label=""];
  "sha256:b0e6145e42049cd0c678714c3bda67b2ee8408d11944f8ba111692ccd83c554a" -> "sha256:bbb8ada4f9b7c66b36a277826dbe16dfa990cebd6a205ddd7bd05e1db51937c2" [label=""];
  "sha256:bbb8ada4f9b7c66b36a277826dbe16dfa990cebd6a205ddd7bd05e1db51937c2" -> "sha256:3fbecba48a7c7f54f0c01145c1e6e195a83460bc1ee669e977894e4257babf66" [label=""];
  "sha256:3fbecba48a7c7f54f0c01145c1e6e195a83460bc1ee669e977894e4257babf66" -> "sha256:7fa76f37fbd33f7672cfa662f00d0c30aff9cb6cbc9f490e60fad90e38e34b3b" [label=""];
  "sha256:085da07aefc0376f253d4b3872ba20693e2af8a1dfa40f5b822a55a334f27a54" -> "sha256:7fa76f37fbd33f7672cfa662f00d0c30aff9cb6cbc9f490e60fad90e38e34b3b" [label=""];
  "sha256:7fa76f37fbd33f7672cfa662f00d0c30aff9cb6cbc9f490e60fad90e38e34b3b" -> "sha256:a73202df263a0ff4db1db7e7c0655be3d1e3478ce604bf7e681569e5231f46fb" [label=""];
  "sha256:085da07aefc0376f253d4b3872ba20693e2af8a1dfa40f5b822a55a334f27a54" -> "sha256:a73202df263a0ff4db1db7e7c0655be3d1e3478ce604bf7e681569e5231f46fb" [label=""];
  "sha256:a73202df263a0ff4db1db7e7c0655be3d1e3478ce604bf7e681569e5231f46fb" -> "sha256:2012823a92a50320391aa573ef80844ceb3a947a476581816ad30c332b0f65a2" [label=""];
  "sha256:2012823a92a50320391aa573ef80844ceb3a947a476581816ad30c332b0f65a2" -> "sha256:0bc7de597325bc9e1df6d66adcd40e59e68c1945efd0347521b0dcd98846e2f5" [label=""];
  "sha256:0bc7de597325bc9e1df6d66adcd40e59e68c1945efd0347521b0dcd98846e2f5" -> "sha256:660c89018ce7ce01ae8d13d6512d1b059932fdf6f31cd0583cc5e98438625456" [label=""];
  "sha256:660c89018ce7ce01ae8d13d6512d1b059932fdf6f31cd0583cc5e98438625456" -> "sha256:122814e66cc2106a358b4bc2ead7ea341e77232522cffe8b64fd531584210a23" [label=""];
}

