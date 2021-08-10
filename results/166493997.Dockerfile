[app/sources/166493997.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:e60674c8476f7d14cca62bd8b326c0c8fa048b49b89901acb1500729f0b73d1d" [label="/bin/sh -c apk add --no-cache caddy" shape="box"];
  "sha256:460ccc133c055528409cba4af93692958c1c5fbd7d3d2eb7196bc37da924f8b6" [label="local://context" shape="ellipse"];
  "sha256:f76b5149238c44bcf98e178bd13bac4ae506c3c1e26e3a576e2a33c93a74dd75" [label="copy{src=/Caddyfile, dest=/}" shape="note"];
  "sha256:8fc54c794b1da8b71a4095333864797b99629ae0bad5fdfd0d6db008580ccaa7" [label="copy{src=/, dest=/var/www}" shape="note"];
  "sha256:354e9d42b3c00648a860cb659368bd505206149e1654b1c08881610fc0bc03c8" [label="sha256:354e9d42b3c00648a860cb659368bd505206149e1654b1c08881610fc0bc03c8" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:e60674c8476f7d14cca62bd8b326c0c8fa048b49b89901acb1500729f0b73d1d" [label=""];
  "sha256:e60674c8476f7d14cca62bd8b326c0c8fa048b49b89901acb1500729f0b73d1d" -> "sha256:f76b5149238c44bcf98e178bd13bac4ae506c3c1e26e3a576e2a33c93a74dd75" [label=""];
  "sha256:460ccc133c055528409cba4af93692958c1c5fbd7d3d2eb7196bc37da924f8b6" -> "sha256:f76b5149238c44bcf98e178bd13bac4ae506c3c1e26e3a576e2a33c93a74dd75" [label=""];
  "sha256:f76b5149238c44bcf98e178bd13bac4ae506c3c1e26e3a576e2a33c93a74dd75" -> "sha256:8fc54c794b1da8b71a4095333864797b99629ae0bad5fdfd0d6db008580ccaa7" [label=""];
  "sha256:460ccc133c055528409cba4af93692958c1c5fbd7d3d2eb7196bc37da924f8b6" -> "sha256:8fc54c794b1da8b71a4095333864797b99629ae0bad5fdfd0d6db008580ccaa7" [label=""];
  "sha256:8fc54c794b1da8b71a4095333864797b99629ae0bad5fdfd0d6db008580ccaa7" -> "sha256:354e9d42b3c00648a860cb659368bd505206149e1654b1c08881610fc0bc03c8" [label=""];
}

