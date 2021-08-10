[app/sources/213979388.Dockerfile]
digraph {
  "sha256:a935a57a0991831a64ab1f3f156b07c043f9dc6a9b7a1027a8101f61fc1e3efa" [label="docker-image://docker.io/library/caffe-nv-debuild-base:latest" shape="ellipse"];
  "sha256:38400fe02862f16dd952f7480cebadc9f6fc30ce1e6e7300b69e965750cbc80c" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         build-essential         dh-make         devscripts         equivs         lintian     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:25b4c0e1e4f8a8cb77727bf6d5e6f03071457d67d887669d3c7b10ef227b41ec" [label="mkdir{path=/build}" shape="note"];
  "sha256:9c0676588bf62f794250fe3ed7e65bca34aca97703dc925500779799ce8fdb0f" [label="local://context" shape="ellipse"];
  "sha256:a2585864d5ca2f4819f9ba409810682069482cfeb527434833320cca27e90399" [label="copy{src=/tarball/*, dest=/build/}" shape="note"];
  "sha256:354939c6403238fdd4753fd5cd2cc07a93f60a18fac8aef7074189081c1216ca" [label="/bin/sh -c tar -xf *.orig.tar.gz" shape="box"];
  "sha256:d170fa0829bb64f0af2e1469bd9e8e41371843db3afbc4c15131136e03393a5e" [label="mkdir{path=/build/caffe-nv}" shape="note"];
  "sha256:e17867da3e7a610b7c145d34fee973aafd759bc43435ecc37dc1d57bba68e81f" [label="/bin/sh -c dh_make -y -s -c bsd -d -t `pwd`/packaging/deb/templates         -f ../*.orig.tar.gz -p caffe-nv_${UPSTREAM_VERSION}     && dch --create --package caffe-nv -v $DEBIAN_VERSION \"v${DEBIAN_VERSION}\"     && dch -r \"\"" shape="box"];
  "sha256:a5d2f5d5fbac4fd0ac7c3d1a3adca0697469068ed6b39eac944980b4db11e60a" [label="/bin/sh -c apt-get update     && echo y | mk-build-deps -i -r debian/control     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ada8318fafc26229a4858f6a6080cb6b1ae4a7eaee6cca975b29252e588b23a1" [label="/bin/sh -c debuild -e CUDA_VERSION --no-tgz-check --no-lintian -i -uc -us -b     && lintian ../*.changes" shape="box"];
  "sha256:806bd1ce0960b4945b54203e5603b40daa185b6a8a4125568072b22048d020c9" [label="/bin/sh -c mkdir -p /dist     && cp ../* /dist/ || true" shape="box"];
  "sha256:4c28abecc49e9e6162fbe883ecca2835a6f272d2c44466f1fac1da2b17f8a514" [label="sha256:4c28abecc49e9e6162fbe883ecca2835a6f272d2c44466f1fac1da2b17f8a514" shape="plaintext"];
  "sha256:a935a57a0991831a64ab1f3f156b07c043f9dc6a9b7a1027a8101f61fc1e3efa" -> "sha256:38400fe02862f16dd952f7480cebadc9f6fc30ce1e6e7300b69e965750cbc80c" [label=""];
  "sha256:38400fe02862f16dd952f7480cebadc9f6fc30ce1e6e7300b69e965750cbc80c" -> "sha256:25b4c0e1e4f8a8cb77727bf6d5e6f03071457d67d887669d3c7b10ef227b41ec" [label=""];
  "sha256:25b4c0e1e4f8a8cb77727bf6d5e6f03071457d67d887669d3c7b10ef227b41ec" -> "sha256:a2585864d5ca2f4819f9ba409810682069482cfeb527434833320cca27e90399" [label=""];
  "sha256:9c0676588bf62f794250fe3ed7e65bca34aca97703dc925500779799ce8fdb0f" -> "sha256:a2585864d5ca2f4819f9ba409810682069482cfeb527434833320cca27e90399" [label=""];
  "sha256:a2585864d5ca2f4819f9ba409810682069482cfeb527434833320cca27e90399" -> "sha256:354939c6403238fdd4753fd5cd2cc07a93f60a18fac8aef7074189081c1216ca" [label=""];
  "sha256:354939c6403238fdd4753fd5cd2cc07a93f60a18fac8aef7074189081c1216ca" -> "sha256:d170fa0829bb64f0af2e1469bd9e8e41371843db3afbc4c15131136e03393a5e" [label=""];
  "sha256:d170fa0829bb64f0af2e1469bd9e8e41371843db3afbc4c15131136e03393a5e" -> "sha256:e17867da3e7a610b7c145d34fee973aafd759bc43435ecc37dc1d57bba68e81f" [label=""];
  "sha256:e17867da3e7a610b7c145d34fee973aafd759bc43435ecc37dc1d57bba68e81f" -> "sha256:a5d2f5d5fbac4fd0ac7c3d1a3adca0697469068ed6b39eac944980b4db11e60a" [label=""];
  "sha256:a5d2f5d5fbac4fd0ac7c3d1a3adca0697469068ed6b39eac944980b4db11e60a" -> "sha256:ada8318fafc26229a4858f6a6080cb6b1ae4a7eaee6cca975b29252e588b23a1" [label=""];
  "sha256:ada8318fafc26229a4858f6a6080cb6b1ae4a7eaee6cca975b29252e588b23a1" -> "sha256:806bd1ce0960b4945b54203e5603b40daa185b6a8a4125568072b22048d020c9" [label=""];
  "sha256:806bd1ce0960b4945b54203e5603b40daa185b6a8a4125568072b22048d020c9" -> "sha256:4c28abecc49e9e6162fbe883ecca2835a6f272d2c44466f1fac1da2b17f8a514" [label=""];
}

