[app/sources/260798834.Dockerfile]
digraph {
  "sha256:95852b7619597e4b805ed2fd6927598680d56efcb4ead57625640e1bfe39c92d" [label="docker-image://docker.io/aztk/spark:v0.1.0-spark2.1.0-base" shape="ellipse"];
  "sha256:c6fe0dd744ce1978ed3f84f2a32578a17aac78f7e9307005f3e0780a9df20f36" [label="/bin/sh -c apt-get update --fix-missing     && apt-get install -y wget bzip2 ca-certificates curl git     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5d017cbab6d6102c20bf05ce0191e74ddb89da1204b2edcf0c3bbb11afb85c34" [label="/bin/sh -c wget --quiet https://repo.continuum.io/miniconda/${MINICONDA_VERISON}-Linux-x86_64.sh -O ~/miniconda.sh     && /bin/bash ~/miniconda.sh -b -p /opt/conda     && rm ~/miniconda.sh     && /opt/conda/bin/conda clean -tipsy     && ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh     && echo \". /opt/conda/etc/profile.d/conda.sh\" >> ~/.bashrc" shape="box"];
  "sha256:a4fe175538a5b54e105c5e88c6dd3941f181722db7e9f121c39fb65f87afe3c5" [label="sha256:a4fe175538a5b54e105c5e88c6dd3941f181722db7e9f121c39fb65f87afe3c5" shape="plaintext"];
  "sha256:95852b7619597e4b805ed2fd6927598680d56efcb4ead57625640e1bfe39c92d" -> "sha256:c6fe0dd744ce1978ed3f84f2a32578a17aac78f7e9307005f3e0780a9df20f36" [label=""];
  "sha256:c6fe0dd744ce1978ed3f84f2a32578a17aac78f7e9307005f3e0780a9df20f36" -> "sha256:5d017cbab6d6102c20bf05ce0191e74ddb89da1204b2edcf0c3bbb11afb85c34" [label=""];
  "sha256:5d017cbab6d6102c20bf05ce0191e74ddb89da1204b2edcf0c3bbb11afb85c34" -> "sha256:a4fe175538a5b54e105c5e88c6dd3941f181722db7e9f121c39fb65f87afe3c5" [label=""];
}

