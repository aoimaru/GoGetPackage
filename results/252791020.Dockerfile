[app/sources/252791020.Dockerfile]
digraph {
  "sha256:365cfd895c94cefb8e2d668ebf3267fec81feca7f5687a95c9f4fb14f850c168" [label="docker-image://docker.io/mhart/alpine-node:8" shape="ellipse"];
  "sha256:4314e98e76109c6f8dc8d953b9903dcc982cc81c23e1f47084a5665193c96f76" [label="local://context" shape="ellipse"];
  "sha256:87d8f699f3d3f7ac100e8edfc8850e0cff4be6040d66b3c1192071f43dbc1698" [label="copy{src=/package.json, dest=/}" shape="note"];
  "sha256:7e2db0276222a450febc091ad0e8742f9deacbfeae9ff59dfdb2a3675eee04e8" [label="/bin/sh -c npm install" shape="box"];
  "sha256:a5fbf81c279b95a2279351ae68e4fa692a7d73d4112bf0cca4ab4a8f057cc008" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:6e721857b87ece3226485b3e3324939451cbbb1fcea4ab613ee2441f75fc6bf9" [label="sha256:6e721857b87ece3226485b3e3324939451cbbb1fcea4ab613ee2441f75fc6bf9" shape="plaintext"];
  "sha256:365cfd895c94cefb8e2d668ebf3267fec81feca7f5687a95c9f4fb14f850c168" -> "sha256:87d8f699f3d3f7ac100e8edfc8850e0cff4be6040d66b3c1192071f43dbc1698" [label=""];
  "sha256:4314e98e76109c6f8dc8d953b9903dcc982cc81c23e1f47084a5665193c96f76" -> "sha256:87d8f699f3d3f7ac100e8edfc8850e0cff4be6040d66b3c1192071f43dbc1698" [label=""];
  "sha256:87d8f699f3d3f7ac100e8edfc8850e0cff4be6040d66b3c1192071f43dbc1698" -> "sha256:7e2db0276222a450febc091ad0e8742f9deacbfeae9ff59dfdb2a3675eee04e8" [label=""];
  "sha256:7e2db0276222a450febc091ad0e8742f9deacbfeae9ff59dfdb2a3675eee04e8" -> "sha256:a5fbf81c279b95a2279351ae68e4fa692a7d73d4112bf0cca4ab4a8f057cc008" [label=""];
  "sha256:4314e98e76109c6f8dc8d953b9903dcc982cc81c23e1f47084a5665193c96f76" -> "sha256:a5fbf81c279b95a2279351ae68e4fa692a7d73d4112bf0cca4ab4a8f057cc008" [label=""];
  "sha256:a5fbf81c279b95a2279351ae68e4fa692a7d73d4112bf0cca4ab4a8f057cc008" -> "sha256:6e721857b87ece3226485b3e3324939451cbbb1fcea4ab613ee2441f75fc6bf9" [label=""];
}

