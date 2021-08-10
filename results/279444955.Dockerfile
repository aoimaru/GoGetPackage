[app/sources/279444955.Dockerfile]
digraph {
  "sha256:bbb5434fa58e89c6b5fe2aa5325cdf970da8c6409fdea28cf8fb477c709b450f" [label="docker-image://docker.io/tudorg/xgo-base:latest" shape="ellipse"];
  "sha256:a3734e6267873376fb295291c7ac82997af2a4b7da9cc5a8727dac99a233c2d8" [label="/bin/sh -c export ROOT_DIST=\"https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz\" &&   export ROOT_DIST_SHA1=\"838c415896ef5ecd395dfabde5e7e6f8ac943c8e\" &&     $BOOTSTRAP_PURE" shape="box"];
  "sha256:44c5ee012c0565942ab13258b20e31eb9ad17937f5eb6833f7faed9703de8dd5" [label="sha256:44c5ee012c0565942ab13258b20e31eb9ad17937f5eb6833f7faed9703de8dd5" shape="plaintext"];
  "sha256:bbb5434fa58e89c6b5fe2aa5325cdf970da8c6409fdea28cf8fb477c709b450f" -> "sha256:a3734e6267873376fb295291c7ac82997af2a4b7da9cc5a8727dac99a233c2d8" [label=""];
  "sha256:a3734e6267873376fb295291c7ac82997af2a4b7da9cc5a8727dac99a233c2d8" -> "sha256:44c5ee012c0565942ab13258b20e31eb9ad17937f5eb6833f7faed9703de8dd5" [label=""];
}

