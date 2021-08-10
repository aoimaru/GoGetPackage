[app/sources/312230551.Dockerfile]
digraph {
  "sha256:74ba90ce22ca1ea7c993c56648d2590a21c04aec92237dda10acd6e5ed7280a1" [label="docker-image://docker.io/wqael/mldock:latest-gpu" shape="ellipse"];
  "sha256:1b4a4a0be291e99e1b7aad5e9a967bc94fd6cdfd94754579d113ab6d80289d39" [label="/bin/sh -c ${PIP} --no-cache-dir install -q -U       jupyterlab       matplotlib       opencv-python-headless       pillow       scikit-learn       scikit-image" shape="box"];
  "sha256:d73086ac9d1b765922e020d1cd7bc840c250337a7780a79aec7c789b64bc998e" [label="local://context" shape="ellipse"];
  "sha256:ef102edfb0d293913f999e390d15ffb208a58b3333cf596d701c192a25044976" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:e28d27b201e339f12904623db018c351665361f9f3af7576cea1fbbc72d77527" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:18b6e91f79d5b9deae7e19e022adb31b11fbe0f3f0fc4dc5a50e78893299ef5f" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:1f621f49a7efcaf29c408198b581d9fe372bd1195b4cdce9faf038d5b330406d" [label="sha256:1f621f49a7efcaf29c408198b581d9fe372bd1195b4cdce9faf038d5b330406d" shape="plaintext"];
  "sha256:74ba90ce22ca1ea7c993c56648d2590a21c04aec92237dda10acd6e5ed7280a1" -> "sha256:1b4a4a0be291e99e1b7aad5e9a967bc94fd6cdfd94754579d113ab6d80289d39" [label=""];
  "sha256:1b4a4a0be291e99e1b7aad5e9a967bc94fd6cdfd94754579d113ab6d80289d39" -> "sha256:ef102edfb0d293913f999e390d15ffb208a58b3333cf596d701c192a25044976" [label=""];
  "sha256:d73086ac9d1b765922e020d1cd7bc840c250337a7780a79aec7c789b64bc998e" -> "sha256:ef102edfb0d293913f999e390d15ffb208a58b3333cf596d701c192a25044976" [label=""];
  "sha256:ef102edfb0d293913f999e390d15ffb208a58b3333cf596d701c192a25044976" -> "sha256:e28d27b201e339f12904623db018c351665361f9f3af7576cea1fbbc72d77527" [label=""];
  "sha256:d73086ac9d1b765922e020d1cd7bc840c250337a7780a79aec7c789b64bc998e" -> "sha256:e28d27b201e339f12904623db018c351665361f9f3af7576cea1fbbc72d77527" [label=""];
  "sha256:e28d27b201e339f12904623db018c351665361f9f3af7576cea1fbbc72d77527" -> "sha256:18b6e91f79d5b9deae7e19e022adb31b11fbe0f3f0fc4dc5a50e78893299ef5f" [label=""];
  "sha256:18b6e91f79d5b9deae7e19e022adb31b11fbe0f3f0fc4dc5a50e78893299ef5f" -> "sha256:1f621f49a7efcaf29c408198b581d9fe372bd1195b4cdce9faf038d5b330406d" [label=""];
}

