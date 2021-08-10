[app/sources/364218024.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:ecf552488dad5d1182e5e4c0585e03d423ba390dcf10c7acdabb758433460139" [label="local://context" shape="ellipse"];
  "sha256:ee6e5e091008130aace812a5a1a6a3801602e0ba35be057a40967653a421dfe4" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:de539fb5ca4db118705fcd2c23d8936855db08306a1e9905684706a609d47dd8" [label="sha256:de539fb5ca4db118705fcd2c23d8936855db08306a1e9905684706a609d47dd8" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:ee6e5e091008130aace812a5a1a6a3801602e0ba35be057a40967653a421dfe4" [label=""];
  "sha256:ecf552488dad5d1182e5e4c0585e03d423ba390dcf10c7acdabb758433460139" -> "sha256:ee6e5e091008130aace812a5a1a6a3801602e0ba35be057a40967653a421dfe4" [label=""];
  "sha256:ee6e5e091008130aace812a5a1a6a3801602e0ba35be057a40967653a421dfe4" -> "sha256:de539fb5ca4db118705fcd2c23d8936855db08306a1e9905684706a609d47dd8" [label=""];
}

