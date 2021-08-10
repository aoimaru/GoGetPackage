[app/sources/289021480.Dockerfile]
digraph {
  "sha256:cfe226d0a0375d7860cda6283e7b2725371a36c3204c286c6dd3eeec6bf61b3b" [label="docker-image://docker.io/lind/aspnetcore:2.0" shape="ellipse"];
  "sha256:f36dcbf0ae74748db72c3ab9527f7bcd5d6ced6d889fed321e7a54b0e6b2b21d" [label="local://context" shape="ellipse"];
  "sha256:0260669c23a00bf9b00bbc539413bcf65fb42cfd73bff0638e3a72108c5c2471" [label="copy{src=/publish, dest=/publish}" shape="note"];
  "sha256:a2730700411cbc766da777163eb1768d142cf88d7d57fa378600bb9765e84903" [label="mkdir{path=/publish}" shape="note"];
  "sha256:3ec69aa6a1402d58d213413b61a161800ff6032284c36b45ac7054d1d38f3c32" [label="sha256:3ec69aa6a1402d58d213413b61a161800ff6032284c36b45ac7054d1d38f3c32" shape="plaintext"];
  "sha256:cfe226d0a0375d7860cda6283e7b2725371a36c3204c286c6dd3eeec6bf61b3b" -> "sha256:0260669c23a00bf9b00bbc539413bcf65fb42cfd73bff0638e3a72108c5c2471" [label=""];
  "sha256:f36dcbf0ae74748db72c3ab9527f7bcd5d6ced6d889fed321e7a54b0e6b2b21d" -> "sha256:0260669c23a00bf9b00bbc539413bcf65fb42cfd73bff0638e3a72108c5c2471" [label=""];
  "sha256:0260669c23a00bf9b00bbc539413bcf65fb42cfd73bff0638e3a72108c5c2471" -> "sha256:a2730700411cbc766da777163eb1768d142cf88d7d57fa378600bb9765e84903" [label=""];
  "sha256:a2730700411cbc766da777163eb1768d142cf88d7d57fa378600bb9765e84903" -> "sha256:3ec69aa6a1402d58d213413b61a161800ff6032284c36b45ac7054d1d38f3c32" [label=""];
}

