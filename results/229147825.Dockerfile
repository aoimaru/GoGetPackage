[app/sources/229147825.Dockerfile]
digraph {
  "sha256:0ca256a5c20e87cba965d90846c4238acec2bd99dff804eb2eb564b8bd1697be" [label="docker-image://docker.io/floydhub/dl-base:1.0.0-py3" shape="ellipse"];
  "sha256:0f5fc21751c1b330943c0dfc3bd6d4ce3117a3a5d3e026ec3314e26776a87be6" [label="/bin/sh -c pip --no-cache-dir install git+git://github.com/Theano/Theano.git@${THEANO_VERSION}         && echo \"[global]        \\ndevice=cpu        \\nfloatX=float32        \\nmode=FAST_RUN        \\n[nvcc]        \\nfastmath=True        \\n[blas]        \\nldflag=-L/usr/lib/openblas-base -lopenblas        \\n[DebugMode]        \\ncheck_finite=1\"    > /root/.theanorc     && rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:170e1a552e571a780ddaa38754a327f10ef6b5a75cf9f72198546f30b509103e" [label="/bin/sh -c pip --no-cache-dir install --upgrade --no-deps     git+git://github.com/Lasagne/Lasagne.git@${LASAGNE_VERSION}     && rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:1a7447c48d66c3442c14b6b22d05c3945c12e980bafecdc6222173f15c4848bf" [label="/bin/sh -c pip --no-cache-dir install git+git://github.com/fchollet/keras.git@${KERAS_VERSION}     && rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:8956fe4dfa101bffd8a4783d44529dc3548ae5d072dae0f2052a6658c4bcd51c" [label="sha256:8956fe4dfa101bffd8a4783d44529dc3548ae5d072dae0f2052a6658c4bcd51c" shape="plaintext"];
  "sha256:0ca256a5c20e87cba965d90846c4238acec2bd99dff804eb2eb564b8bd1697be" -> "sha256:0f5fc21751c1b330943c0dfc3bd6d4ce3117a3a5d3e026ec3314e26776a87be6" [label=""];
  "sha256:0f5fc21751c1b330943c0dfc3bd6d4ce3117a3a5d3e026ec3314e26776a87be6" -> "sha256:170e1a552e571a780ddaa38754a327f10ef6b5a75cf9f72198546f30b509103e" [label=""];
  "sha256:170e1a552e571a780ddaa38754a327f10ef6b5a75cf9f72198546f30b509103e" -> "sha256:1a7447c48d66c3442c14b6b22d05c3945c12e980bafecdc6222173f15c4848bf" [label=""];
  "sha256:1a7447c48d66c3442c14b6b22d05c3945c12e980bafecdc6222173f15c4848bf" -> "sha256:8956fe4dfa101bffd8a4783d44529dc3548ae5d072dae0f2052a6658c4bcd51c" [label=""];
}

