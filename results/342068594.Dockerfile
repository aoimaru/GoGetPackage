[app/sources/342068594.Dockerfile]
digraph {
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" [label="docker-image://docker.io/library/python:2.7.13@sha256:ac21ec6277f7da89c32f977b25224abbbbb0f4d3d10ce37461210c14019bc955" shape="ellipse"];
  "sha256:d914e1dd7f2d15ceda5945e36972d0d7ca15595f09623b44a9a75ca0aafbcfc7" [label="local://context" shape="ellipse"];
  "sha256:ef3dddca273c860e78279bb45bdd7cbfd1ad7e1acab7acff6cabd339b63cda0b" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:762f0dedf27067132e0d067baa5f43b8a8fda4ea5834ca42923cb348bc16625a" [label="sha256:762f0dedf27067132e0d067baa5f43b8a8fda4ea5834ca42923cb348bc16625a" shape="plaintext"];
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" -> "sha256:ef3dddca273c860e78279bb45bdd7cbfd1ad7e1acab7acff6cabd339b63cda0b" [label=""];
  "sha256:d914e1dd7f2d15ceda5945e36972d0d7ca15595f09623b44a9a75ca0aafbcfc7" -> "sha256:ef3dddca273c860e78279bb45bdd7cbfd1ad7e1acab7acff6cabd339b63cda0b" [label=""];
  "sha256:ef3dddca273c860e78279bb45bdd7cbfd1ad7e1acab7acff6cabd339b63cda0b" -> "sha256:762f0dedf27067132e0d067baa5f43b8a8fda4ea5834ca42923cb348bc16625a" [label=""];
}

