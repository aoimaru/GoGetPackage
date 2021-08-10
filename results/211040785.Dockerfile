[app/sources/211040785.Dockerfile]
digraph {
  "sha256:13b86560ec72be1af3a61870f362939873bbd6966fad043b43d8292343145c19" [label="docker-image://docker.io/library/ruby:2.3" shape="ellipse"];
  "sha256:31e57235ac9f27a7bc260af3861279a0e5f27309ab99274b1908cf69408baaf4" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:3b3e16348caabacb22d1feb6c035c036551203bad8deed4c818760bb797f8f0d" [label="/bin/sh -c mkdir -p /var/shared" shape="box"];
  "sha256:cec6ee894fc7e68e15fdbbf394db5ec6ff9da80f2e30949a2af337ee0d5dbf9a" [label="mkdir{path=/app}" shape="note"];
  "sha256:6fcaad839c24da416791989f1108fb91483f6e92409886c7131bf4805afe53d6" [label="local://context" shape="ellipse"];
  "sha256:118191c889545d2963867036f10eecabb9f8211b6e0bb8d0532ae2b40ea2cacb" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:c831920a63f984a94dcd2839b358e1de0fd8d2369498256e7d95d1d119e90fd0" [label="/bin/sh -c gem install bundler && bundle install" shape="box"];
  "sha256:3b57501534ce4bb98d62007cad3412ded613183a1884ca92c0d76df9365cf392" [label="sha256:3b57501534ce4bb98d62007cad3412ded613183a1884ca92c0d76df9365cf392" shape="plaintext"];
  "sha256:13b86560ec72be1af3a61870f362939873bbd6966fad043b43d8292343145c19" -> "sha256:31e57235ac9f27a7bc260af3861279a0e5f27309ab99274b1908cf69408baaf4" [label=""];
  "sha256:31e57235ac9f27a7bc260af3861279a0e5f27309ab99274b1908cf69408baaf4" -> "sha256:3b3e16348caabacb22d1feb6c035c036551203bad8deed4c818760bb797f8f0d" [label=""];
  "sha256:3b3e16348caabacb22d1feb6c035c036551203bad8deed4c818760bb797f8f0d" -> "sha256:cec6ee894fc7e68e15fdbbf394db5ec6ff9da80f2e30949a2af337ee0d5dbf9a" [label=""];
  "sha256:cec6ee894fc7e68e15fdbbf394db5ec6ff9da80f2e30949a2af337ee0d5dbf9a" -> "sha256:118191c889545d2963867036f10eecabb9f8211b6e0bb8d0532ae2b40ea2cacb" [label=""];
  "sha256:6fcaad839c24da416791989f1108fb91483f6e92409886c7131bf4805afe53d6" -> "sha256:118191c889545d2963867036f10eecabb9f8211b6e0bb8d0532ae2b40ea2cacb" [label=""];
  "sha256:118191c889545d2963867036f10eecabb9f8211b6e0bb8d0532ae2b40ea2cacb" -> "sha256:c831920a63f984a94dcd2839b358e1de0fd8d2369498256e7d95d1d119e90fd0" [label=""];
  "sha256:c831920a63f984a94dcd2839b358e1de0fd8d2369498256e7d95d1d119e90fd0" -> "sha256:3b57501534ce4bb98d62007cad3412ded613183a1884ca92c0d76df9365cf392" [label=""];
}

