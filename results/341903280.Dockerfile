[app/sources/341903280.Dockerfile]
digraph {
  "sha256:c6dad7555b328bd2e934ad124762afe8c7823e1b781a6e2ba3adce371a1b4b0e" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:44f2dea6f374a71d84209d34c4b06705e9ac0f871bc2024f5ccfe372844e8bc2" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:3f2583e168dfc512ce1183e55625fe505ce1e053226acd5c1c1cfe6585ef75da" [label="pip install requests" shape="box"];
  "sha256:70794a565539b1b4dde6facbab0722446af56192a2aa7b3a2ec9051982232b26" [label="pip install lxml" shape="box"];
  "sha256:beaf007f215107297405e1580cccbb202eb21e90cc27a02ccbc5590843ea7da6" [label="sha256:beaf007f215107297405e1580cccbb202eb21e90cc27a02ccbc5590843ea7da6" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:44f2dea6f374a71d84209d34c4b06705e9ac0f871bc2024f5ccfe372844e8bc2" [label=""];
  "sha256:c6dad7555b328bd2e934ad124762afe8c7823e1b781a6e2ba3adce371a1b4b0e" -> "sha256:44f2dea6f374a71d84209d34c4b06705e9ac0f871bc2024f5ccfe372844e8bc2" [label=""];
  "sha256:44f2dea6f374a71d84209d34c4b06705e9ac0f871bc2024f5ccfe372844e8bc2" -> "sha256:3f2583e168dfc512ce1183e55625fe505ce1e053226acd5c1c1cfe6585ef75da" [label=""];
  "sha256:3f2583e168dfc512ce1183e55625fe505ce1e053226acd5c1c1cfe6585ef75da" -> "sha256:70794a565539b1b4dde6facbab0722446af56192a2aa7b3a2ec9051982232b26" [label=""];
  "sha256:70794a565539b1b4dde6facbab0722446af56192a2aa7b3a2ec9051982232b26" -> "sha256:beaf007f215107297405e1580cccbb202eb21e90cc27a02ccbc5590843ea7da6" [label=""];
}

