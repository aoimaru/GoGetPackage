[app/sources/283603589.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:4163010f5638f451624f2e75adf72bbd8e7f2fae91f2a0105b1da94bed54833c" [label="/bin/sh -c mkdir -p /src   && cd /opt   && wget http://www.xpdfreader.com/dl/xpdf-tools-linux-4.00.tar.gz   && tar xfvz xpdf-tools-linux-4.00.tar.gz   && cd xpdf-tools-linux-4.00   && cp -pRv bin64/* /usr/local/bin/   && mkdir -p /usr/local/man/man1 /usr/local/man/man5   && cp -pRv doc/*.1 /usr/local/man/man1/   && cp -pRv doc/*.5 /usr/local/man/man5/   && cd ..   && rm -r xpdf-tools-linux-4.00.tar.gz xpdf-tools-linux-4.00" shape="box"];
  "sha256:628cd659c033fb4d4c1928946c5e0ec30238a415682eabb5069ba1d84019d120" [label="/bin/sh -c git clone -b ${KAOS_COMMIT} https://github.com/Ingobernable/kaos155 /src" shape="box"];
  "sha256:8f68b0c5ee7a1aab613328026854e357406d313b14d2e1a252898bce8518cd5c" [label="mkdir{path=/src/App}" shape="note"];
  "sha256:fb0c6d9965592bce57e1d06e229018cc52997edf6839de9a44273c5e0835c346" [label="/bin/sh -c npm install" shape="box"];
  "sha256:9e949b548349f4c80cf3cd03ae32b45948b49a741e2d00402bd8bfef3a986596" [label="sha256:9e949b548349f4c80cf3cd03ae32b45948b49a741e2d00402bd8bfef3a986596" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:4163010f5638f451624f2e75adf72bbd8e7f2fae91f2a0105b1da94bed54833c" [label=""];
  "sha256:4163010f5638f451624f2e75adf72bbd8e7f2fae91f2a0105b1da94bed54833c" -> "sha256:628cd659c033fb4d4c1928946c5e0ec30238a415682eabb5069ba1d84019d120" [label=""];
  "sha256:628cd659c033fb4d4c1928946c5e0ec30238a415682eabb5069ba1d84019d120" -> "sha256:8f68b0c5ee7a1aab613328026854e357406d313b14d2e1a252898bce8518cd5c" [label=""];
  "sha256:8f68b0c5ee7a1aab613328026854e357406d313b14d2e1a252898bce8518cd5c" -> "sha256:fb0c6d9965592bce57e1d06e229018cc52997edf6839de9a44273c5e0835c346" [label=""];
  "sha256:fb0c6d9965592bce57e1d06e229018cc52997edf6839de9a44273c5e0835c346" -> "sha256:9e949b548349f4c80cf3cd03ae32b45948b49a741e2d00402bd8bfef3a986596" [label=""];
}

