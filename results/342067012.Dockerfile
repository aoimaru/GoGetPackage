[app/sources/342067012.Dockerfile]
digraph {
  "sha256:3f988062fa9e13bea24dd600a518d9be523284d2530fbc790b7e533b173dd8da" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:92ac9979897ea2d20bc67734cb1ca86f638c7836dae48698b52ebc826a1758fb" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:471c19c7db66d2fe456b9d6b05aec9b38522f4c60ee427e2676308e93238efa9" [label="sha256:471c19c7db66d2fe456b9d6b05aec9b38522f4c60ee427e2676308e93238efa9" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:92ac9979897ea2d20bc67734cb1ca86f638c7836dae48698b52ebc826a1758fb" [label=""];
  "sha256:3f988062fa9e13bea24dd600a518d9be523284d2530fbc790b7e533b173dd8da" -> "sha256:92ac9979897ea2d20bc67734cb1ca86f638c7836dae48698b52ebc826a1758fb" [label=""];
  "sha256:92ac9979897ea2d20bc67734cb1ca86f638c7836dae48698b52ebc826a1758fb" -> "sha256:471c19c7db66d2fe456b9d6b05aec9b38522f4c60ee427e2676308e93238efa9" [label=""];
}

