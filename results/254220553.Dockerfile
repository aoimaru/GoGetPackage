[app/sources/254220553.Dockerfile]
digraph {
  "sha256:5bc3d5f4af1e406f92412563001e0f7bc5d5a9c4ce943b5ed63da17c84f6da4a" [label="docker-image://docker.io/webdevops/apache:ubuntu-16.04@sha256:b91a7550118417dac322282c0f780e28e67ba81a1872a39db3cf22967aec5ed7" shape="ellipse"];
  "sha256:52a17929570c37ac2c6df06ec858a2c5a3c00b7728acd6c0dc778d9cc1ea7540" [label="mkdir{path=/var/www/laravel/public}" shape="note"];
  "sha256:730f638544ff383faf341a99fa55f9d6493c49429bffe48e033d22a78a715915" [label="sha256:730f638544ff383faf341a99fa55f9d6493c49429bffe48e033d22a78a715915" shape="plaintext"];
  "sha256:5bc3d5f4af1e406f92412563001e0f7bc5d5a9c4ce943b5ed63da17c84f6da4a" -> "sha256:52a17929570c37ac2c6df06ec858a2c5a3c00b7728acd6c0dc778d9cc1ea7540" [label=""];
  "sha256:52a17929570c37ac2c6df06ec858a2c5a3c00b7728acd6c0dc778d9cc1ea7540" -> "sha256:730f638544ff383faf341a99fa55f9d6493c49429bffe48e033d22a78a715915" [label=""];
}

