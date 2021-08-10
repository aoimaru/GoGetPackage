[app/sources/342067450.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:688f0ddc9a0a584dea110a2cf999212e435a0e77fffb103aa2a5bdfaef1b5f9b" [label="local://context" shape="ellipse"];
  "sha256:de9dbe1e11c270bba80d19957d0d239c3745d8ae4a75f079670d07e522dcfc0d" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:ed7ddba2abb30244343fc8aff2fd00539bca335d93f1c87cc3365c4f90637c43" [label="sha256:ed7ddba2abb30244343fc8aff2fd00539bca335d93f1c87cc3365c4f90637c43" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:de9dbe1e11c270bba80d19957d0d239c3745d8ae4a75f079670d07e522dcfc0d" [label=""];
  "sha256:688f0ddc9a0a584dea110a2cf999212e435a0e77fffb103aa2a5bdfaef1b5f9b" -> "sha256:de9dbe1e11c270bba80d19957d0d239c3745d8ae4a75f079670d07e522dcfc0d" [label=""];
  "sha256:de9dbe1e11c270bba80d19957d0d239c3745d8ae4a75f079670d07e522dcfc0d" -> "sha256:ed7ddba2abb30244343fc8aff2fd00539bca335d93f1c87cc3365c4f90637c43" [label=""];
}

