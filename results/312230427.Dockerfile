[app/sources/312230427.Dockerfile]
digraph {
  "sha256:78fc5416d57376b00e96ca3a2b7a3e4fb9a04b2c0bd59cb71e433c390505a265" [label="docker-image://docker.io/wqael/notebooks:keras-tf1.12.0-conda3-cuda9" shape="ellipse"];
  "sha256:bcb8cd7bd0d3025dda5e04667d5f8925b0ecf09c91caaf4e0cc990f1d56dca46" [label="/bin/sh -c conda install --quiet       jupyter       matplotlib       opencv       pillow       scikit-learn       scikit-image     && conda clean -tipsy" shape="box"];
  "sha256:e33e23092b2e4d9aa8707d1dd6470bdc20619505f999d7a2747435302ff392c9" [label="local://context" shape="ellipse"];
  "sha256:7a78e53a71d5dd7ed172f543af065f4adf567b7abeac1c30f185d93c351a0f9f" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:c937312a65a1fcd64a768230e641c7e407cbc94e02e014a0cae9e11770e5d0e0" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:121b7eccbc9f6fed44a980018c50344d58523e19cebed8bdb1e5bec84afbf71a" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:f8c1172e6c76553531238aa2c1144273ee103c503db5755299ba0becf1f2278a" [label="sha256:f8c1172e6c76553531238aa2c1144273ee103c503db5755299ba0becf1f2278a" shape="plaintext"];
  "sha256:78fc5416d57376b00e96ca3a2b7a3e4fb9a04b2c0bd59cb71e433c390505a265" -> "sha256:bcb8cd7bd0d3025dda5e04667d5f8925b0ecf09c91caaf4e0cc990f1d56dca46" [label=""];
  "sha256:bcb8cd7bd0d3025dda5e04667d5f8925b0ecf09c91caaf4e0cc990f1d56dca46" -> "sha256:7a78e53a71d5dd7ed172f543af065f4adf567b7abeac1c30f185d93c351a0f9f" [label=""];
  "sha256:e33e23092b2e4d9aa8707d1dd6470bdc20619505f999d7a2747435302ff392c9" -> "sha256:7a78e53a71d5dd7ed172f543af065f4adf567b7abeac1c30f185d93c351a0f9f" [label=""];
  "sha256:7a78e53a71d5dd7ed172f543af065f4adf567b7abeac1c30f185d93c351a0f9f" -> "sha256:c937312a65a1fcd64a768230e641c7e407cbc94e02e014a0cae9e11770e5d0e0" [label=""];
  "sha256:e33e23092b2e4d9aa8707d1dd6470bdc20619505f999d7a2747435302ff392c9" -> "sha256:c937312a65a1fcd64a768230e641c7e407cbc94e02e014a0cae9e11770e5d0e0" [label=""];
  "sha256:c937312a65a1fcd64a768230e641c7e407cbc94e02e014a0cae9e11770e5d0e0" -> "sha256:121b7eccbc9f6fed44a980018c50344d58523e19cebed8bdb1e5bec84afbf71a" [label=""];
  "sha256:121b7eccbc9f6fed44a980018c50344d58523e19cebed8bdb1e5bec84afbf71a" -> "sha256:f8c1172e6c76553531238aa2c1144273ee103c503db5755299ba0becf1f2278a" [label=""];
}

