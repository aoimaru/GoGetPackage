[app/sources/241784852.Dockerfile]
digraph {
  "sha256:eeff299eed54895d78e85d609dee03c24b59491e0b1e5dc13365b9554dc75faa" [label="docker-image://docker.io/library/node:slim@sha256:f5ca170e3ce282cd2d35baa79bd03c04e5f9b83ed46ccdde897185976007cbc1" shape="ellipse"];
  "sha256:5bd8ffd960104f4afbc97965a340e026dc450609b3515e762006fd9c8e7f263a" [label="/bin/sh -c cd /tmp     && curl -SLO \"https://github.com/gilbitron/Raneto/archive/$RANETO_VERSION.tar.gz\"     && mkdir -p $RANETO_INSTALL_DIR     && tar -xzf \"$RANETO_VERSION.tar.gz\" -C $RANETO_INSTALL_DIR --strip-components=1     && rm \"$RANETO_VERSION.tar.gz\"" shape="box"];
  "sha256:3cd0b4e91a231b587d2e2e5aba1fc72fbc856404a13f7f047980d87a6e085afb" [label="/bin/sh -c npm install --global gulp-cli pm2" shape="box"];
  "sha256:bdb69bb654c3eb8ed338ebf07f2ba1b26d056c67a71fb44c7cf5eb56fd59a1cb" [label="mkdir{path=/opt/raneto}" shape="note"];
  "sha256:9732238e146f6221e3140fa9a6b1f88f6358bf63d2283a7e418bca8d521801d7" [label="/bin/sh -c npm install     && rm -f $RANETO_INSTALL_DIR/example/config.default.js     && gulp" shape="box"];
  "sha256:a06224f35a298cc04d26a56d279705baca6b65d5d46fd39e0e82e201c5f55c6b" [label="sha256:a06224f35a298cc04d26a56d279705baca6b65d5d46fd39e0e82e201c5f55c6b" shape="plaintext"];
  "sha256:eeff299eed54895d78e85d609dee03c24b59491e0b1e5dc13365b9554dc75faa" -> "sha256:5bd8ffd960104f4afbc97965a340e026dc450609b3515e762006fd9c8e7f263a" [label=""];
  "sha256:5bd8ffd960104f4afbc97965a340e026dc450609b3515e762006fd9c8e7f263a" -> "sha256:3cd0b4e91a231b587d2e2e5aba1fc72fbc856404a13f7f047980d87a6e085afb" [label=""];
  "sha256:3cd0b4e91a231b587d2e2e5aba1fc72fbc856404a13f7f047980d87a6e085afb" -> "sha256:bdb69bb654c3eb8ed338ebf07f2ba1b26d056c67a71fb44c7cf5eb56fd59a1cb" [label=""];
  "sha256:bdb69bb654c3eb8ed338ebf07f2ba1b26d056c67a71fb44c7cf5eb56fd59a1cb" -> "sha256:9732238e146f6221e3140fa9a6b1f88f6358bf63d2283a7e418bca8d521801d7" [label=""];
  "sha256:9732238e146f6221e3140fa9a6b1f88f6358bf63d2283a7e418bca8d521801d7" -> "sha256:a06224f35a298cc04d26a56d279705baca6b65d5d46fd39e0e82e201c5f55c6b" [label=""];
}

