[app/sources/341903116.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f0bf696fc83a5b883b6c965e000c5857d02859e57494741038584c540049fda3" [label="local://context" shape="ellipse"];
  "sha256:3d894fe6a32dc7930b5b47c3f15d6af4400e8b0e08fffdfcfad5908d5157376b" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:c2446643c518207680c271c5942a57ebe93f81c3dac85bff73bdfaba098b8223" [label="sha256:c2446643c518207680c271c5942a57ebe93f81c3dac85bff73bdfaba098b8223" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:3d894fe6a32dc7930b5b47c3f15d6af4400e8b0e08fffdfcfad5908d5157376b" [label=""];
  "sha256:f0bf696fc83a5b883b6c965e000c5857d02859e57494741038584c540049fda3" -> "sha256:3d894fe6a32dc7930b5b47c3f15d6af4400e8b0e08fffdfcfad5908d5157376b" [label=""];
  "sha256:3d894fe6a32dc7930b5b47c3f15d6af4400e8b0e08fffdfcfad5908d5157376b" -> "sha256:c2446643c518207680c271c5942a57ebe93f81c3dac85bff73bdfaba098b8223" [label=""];
}

