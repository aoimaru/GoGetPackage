[app/sources/259140114.Dockerfile]
digraph {
  "sha256:99b5229543909897d7034f475dadc86ad6113dbc359e93577f2793f7fb3d2b46" [label="local://context" shape="ellipse"];
  "sha256:031d1332017ef2e65139088f0a033c3f230b9d152512e9e7c1ce16bd6b057b2a" [label="copy{src=/bin/deployment, dest=/deployment}" shape="note"];
  "sha256:6dedc99c7f5b95f17defeb5a7f2ede1878446e127cc237c603f3fad39b18755c" [label="sha256:6dedc99c7f5b95f17defeb5a7f2ede1878446e127cc237c603f3fad39b18755c" shape="plaintext"];
  "sha256:99b5229543909897d7034f475dadc86ad6113dbc359e93577f2793f7fb3d2b46" -> "sha256:031d1332017ef2e65139088f0a033c3f230b9d152512e9e7c1ce16bd6b057b2a" [label=""];
  "sha256:031d1332017ef2e65139088f0a033c3f230b9d152512e9e7c1ce16bd6b057b2a" -> "sha256:6dedc99c7f5b95f17defeb5a7f2ede1878446e127cc237c603f3fad39b18755c" [label=""];
}

