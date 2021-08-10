[app/sources/312230491.Dockerfile]
digraph {
  "sha256:a851fd23cc90decac265d3fd43614036810dfab9f15aba61abb0f196c2095228" [label="local://context" shape="ellipse"];
  "sha256:cdceb55a909f4ac999b7c1c27c699083a98c182ff71f3f92399d6210c6834096" [label="docker-image://docker.io/wqael/notebooks:pytorch1.0-py3-cuda8@sha256:e1e07bd640ec0fa79303efcb4641b7d8a3ee668711ff91f78ca12ebb5db32f6c" shape="ellipse"];
  "sha256:f6afd5c66b65ddcaada4e8d4823a57919ce426aa082e5d731ee896571bae47f8" [label="/bin/sh -c ${PIP} --no-cache-dir install -q -U       jupyterlab       matplotlib       opencv-python-headless       pillow       scikit-learn       scikit-image       visdom" shape="box"];
  "sha256:28520dd7de37188df04fa8e49903c271f9f1dc121c55b7d1db7d1a3062c465d2" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:c4b40e2085879acd8d313f75900bf6cc2d38dfcc5bf9976ae213606cd7e56412" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:c2d2b353077d62d1195b08466d499223770fe562e3d1af4d113930416595ba86" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:29fb208610b7ac4d4a1244d7e2ceb89572f495c6fcfef63d5c85257b9e3abf94" [label="sha256:29fb208610b7ac4d4a1244d7e2ceb89572f495c6fcfef63d5c85257b9e3abf94" shape="plaintext"];
  "sha256:cdceb55a909f4ac999b7c1c27c699083a98c182ff71f3f92399d6210c6834096" -> "sha256:f6afd5c66b65ddcaada4e8d4823a57919ce426aa082e5d731ee896571bae47f8" [label=""];
  "sha256:f6afd5c66b65ddcaada4e8d4823a57919ce426aa082e5d731ee896571bae47f8" -> "sha256:28520dd7de37188df04fa8e49903c271f9f1dc121c55b7d1db7d1a3062c465d2" [label=""];
  "sha256:a851fd23cc90decac265d3fd43614036810dfab9f15aba61abb0f196c2095228" -> "sha256:28520dd7de37188df04fa8e49903c271f9f1dc121c55b7d1db7d1a3062c465d2" [label=""];
  "sha256:28520dd7de37188df04fa8e49903c271f9f1dc121c55b7d1db7d1a3062c465d2" -> "sha256:c4b40e2085879acd8d313f75900bf6cc2d38dfcc5bf9976ae213606cd7e56412" [label=""];
  "sha256:a851fd23cc90decac265d3fd43614036810dfab9f15aba61abb0f196c2095228" -> "sha256:c4b40e2085879acd8d313f75900bf6cc2d38dfcc5bf9976ae213606cd7e56412" [label=""];
  "sha256:c4b40e2085879acd8d313f75900bf6cc2d38dfcc5bf9976ae213606cd7e56412" -> "sha256:c2d2b353077d62d1195b08466d499223770fe562e3d1af4d113930416595ba86" [label=""];
  "sha256:c2d2b353077d62d1195b08466d499223770fe562e3d1af4d113930416595ba86" -> "sha256:29fb208610b7ac4d4a1244d7e2ceb89572f495c6fcfef63d5c85257b9e3abf94" [label=""];
}

