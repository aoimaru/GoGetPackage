[app/sources/318694455.Dockerfile]
digraph {
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" [label="docker-image://docker.io/library/ubuntu:18.10" shape="ellipse"];
  "sha256:b6164a81876b8d54229cb88465d464328173002ab3fe6cf73204b0b82d12acd9" [label="/bin/sh -c apt update && apt install -y     build-essential     curl     git     wget     libjpeg-dev     openjdk-8-jdk     gcc-7     g++-7     && rm -rf /var/lib/lists/*" shape="box"];
  "sha256:d2b60176a49064cd0cc48255357dfc3767e2a12dd64af9cd5584d4a6fa82e20d" [label="/bin/sh -c wget \"https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh\" -O \"miniconda.sh\" &&     bash \"miniconda.sh\" -b -p \"/conda\" &&     rm miniconda.sh &&     echo PATH='/conda/bin:$PATH' >> /root/.bashrc &&     /conda/bin/conda config --add channels conda-forge &&     /conda/bin/conda update --yes -n base conda &&     /conda/bin/conda update --all --yes" shape="box"];
  "sha256:20a19fc08154c7f047579dcb70ed7aafe918387b6f551bd82df892bbfe0f8d04" [label="local://context" shape="ellipse"];
  "sha256:393182c9d3271eaa99b3e41ac0dd1af7a100f4961082867ed453de242ea5748f" [label="copy{src=/build.sh, dest=/build.sh}" shape="note"];
  "sha256:04634f407c09376b1138f1a5b9e17c598764c201ce40d37c1b2c65c06cf72e4b" [label="copy{src=/cuda.sh, dest=/cuda.sh}" shape="note"];
  "sha256:08654292cde12f49f7a7a3e290d3e28ce76b1efc51bf6812dad31f7d3da3a9a8" [label="sha256:08654292cde12f49f7a7a3e290d3e28ce76b1efc51bf6812dad31f7d3da3a9a8" shape="plaintext"];
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" -> "sha256:b6164a81876b8d54229cb88465d464328173002ab3fe6cf73204b0b82d12acd9" [label=""];
  "sha256:b6164a81876b8d54229cb88465d464328173002ab3fe6cf73204b0b82d12acd9" -> "sha256:d2b60176a49064cd0cc48255357dfc3767e2a12dd64af9cd5584d4a6fa82e20d" [label=""];
  "sha256:d2b60176a49064cd0cc48255357dfc3767e2a12dd64af9cd5584d4a6fa82e20d" -> "sha256:393182c9d3271eaa99b3e41ac0dd1af7a100f4961082867ed453de242ea5748f" [label=""];
  "sha256:20a19fc08154c7f047579dcb70ed7aafe918387b6f551bd82df892bbfe0f8d04" -> "sha256:393182c9d3271eaa99b3e41ac0dd1af7a100f4961082867ed453de242ea5748f" [label=""];
  "sha256:393182c9d3271eaa99b3e41ac0dd1af7a100f4961082867ed453de242ea5748f" -> "sha256:04634f407c09376b1138f1a5b9e17c598764c201ce40d37c1b2c65c06cf72e4b" [label=""];
  "sha256:20a19fc08154c7f047579dcb70ed7aafe918387b6f551bd82df892bbfe0f8d04" -> "sha256:04634f407c09376b1138f1a5b9e17c598764c201ce40d37c1b2c65c06cf72e4b" [label=""];
  "sha256:04634f407c09376b1138f1a5b9e17c598764c201ce40d37c1b2c65c06cf72e4b" -> "sha256:08654292cde12f49f7a7a3e290d3e28ce76b1efc51bf6812dad31f7d3da3a9a8" [label=""];
}

