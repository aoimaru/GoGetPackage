[app/sources/341898950.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:dc83d86a520cd469f0953faa0d544421c431ad61891b25ca1483c0f4a4c64647" [label="local://context" shape="ellipse"];
  "sha256:f127ced1a3d5d3feb54759342f0813a04bc6b482574415ae51caa83e8adb2c58" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:af41106b7c85e9c6eb90e42c094b2827694b6fb21a1795c1cc70f5383d3250bc" [label="sha256:af41106b7c85e9c6eb90e42c094b2827694b6fb21a1795c1cc70f5383d3250bc" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:f127ced1a3d5d3feb54759342f0813a04bc6b482574415ae51caa83e8adb2c58" [label=""];
  "sha256:dc83d86a520cd469f0953faa0d544421c431ad61891b25ca1483c0f4a4c64647" -> "sha256:f127ced1a3d5d3feb54759342f0813a04bc6b482574415ae51caa83e8adb2c58" [label=""];
  "sha256:f127ced1a3d5d3feb54759342f0813a04bc6b482574415ae51caa83e8adb2c58" -> "sha256:af41106b7c85e9c6eb90e42c094b2827694b6fb21a1795c1cc70f5383d3250bc" [label=""];
}

