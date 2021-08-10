[app/sources/342066364.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:ea95fa49cde2f588be8379180c8ac1c1e418bc2f5af6f57ef4577f0ca345a9c0" [label="local://context" shape="ellipse"];
  "sha256:ea1242ab91a4816772e34c4009ac79c076317d68ebf51f5099c677f5fb18aed5" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:ffd64f61b903b5487217d55b8cab8966f293be5e2b6813f451791bdfe5017941" [label="sha256:ffd64f61b903b5487217d55b8cab8966f293be5e2b6813f451791bdfe5017941" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:ea1242ab91a4816772e34c4009ac79c076317d68ebf51f5099c677f5fb18aed5" [label=""];
  "sha256:ea95fa49cde2f588be8379180c8ac1c1e418bc2f5af6f57ef4577f0ca345a9c0" -> "sha256:ea1242ab91a4816772e34c4009ac79c076317d68ebf51f5099c677f5fb18aed5" [label=""];
  "sha256:ea1242ab91a4816772e34c4009ac79c076317d68ebf51f5099c677f5fb18aed5" -> "sha256:ffd64f61b903b5487217d55b8cab8966f293be5e2b6813f451791bdfe5017941" [label=""];
}

