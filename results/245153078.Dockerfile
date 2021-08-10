[app/sources/245153078.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:b42fdd4cb75beab70fed8e2a38cc0e4176b22c1bb4be4dc9819621702299b566" [label="/bin/sh -c npm install newman -g" shape="box"];
  "sha256:55b8a8b76b7a1c075629bad57e2442cb14c54d69c507870474ebd1d023dc9825" [label="mkdir{path=/var/www/api}" shape="note"];
  "sha256:71319904bcebf7556bd5224634e582518a39769fe325473694ef9b052a658735" [label="sha256:71319904bcebf7556bd5224634e582518a39769fe325473694ef9b052a658735" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:b42fdd4cb75beab70fed8e2a38cc0e4176b22c1bb4be4dc9819621702299b566" [label=""];
  "sha256:b42fdd4cb75beab70fed8e2a38cc0e4176b22c1bb4be4dc9819621702299b566" -> "sha256:55b8a8b76b7a1c075629bad57e2442cb14c54d69c507870474ebd1d023dc9825" [label=""];
  "sha256:55b8a8b76b7a1c075629bad57e2442cb14c54d69c507870474ebd1d023dc9825" -> "sha256:71319904bcebf7556bd5224634e582518a39769fe325473694ef9b052a658735" [label=""];
}

