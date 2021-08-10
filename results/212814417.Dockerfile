[app/sources/212814417.Dockerfile]
digraph {
  "sha256:5bd6c7847c240cbfe7f81a62bfbeb8b82793492e51376a7eec26071674714d67" [label="docker-image://docker.io/floydhub/dl-docker:gpu_temp" shape="ellipse"];
  "sha256:7c7bd4adc0ad09fb8a4e2192b2389c301fbc5c0b0ce1c6a092c3ab3f5cee1be4" [label="/bin/sh -c pip --no-cache-dir install git+git://github.com/Theano/Theano.git@${THEANO_VERSION} && \t\techo \"[global]\\ndevice=gpu\\nfloatX=float32\\noptimizer_including=cudnn\\nmode=FAST_RUN \t\t\\n[lib]\\ncnmem=0.95 \t\t\\n[nvcc]\\nfastmath=True \t\t\\n[blas]\\nldflag = -L/usr/lib/openblas-base -lopenblas \t\t\\n[DebugMode]\\ncheck_finite=1\" \t> /root/.theanorc" shape="box"];
  "sha256:eb77ad5dd91c21d5fbe374cd3cc39970cdd82caa9b6c7e7031164deb7e92b93e" [label="/bin/sh -c pip --no-cache-dir install git+git://github.com/fchollet/keras.git@${KERAS_VERSION}" shape="box"];
  "sha256:7ae14ca4cef8b95c2ce1685272d7f14496bf5cc77a884161c646ce5998a61346" [label="/bin/sh -c pip --no-cache-dir install git+git://github.com/Lasagne/Lasagne.git@${LASAGNE_VERSION}" shape="box"];
  "sha256:3b0fbfa439b9671ec1c8d91796a7143174549879835fe4180e9ef37154adf13c" [label="/bin/sh -c git clone https://github.com/torch/distro.git /root/torch --recursive && \tcd /root/torch && \tbash install-deps > /dev/null && \tyes no | ./install.sh > /dev/null" shape="box"];
  "sha256:50f1a6f8b82354c51a9c29f5db501ef6a8a1d5143ec8dfb573e81b3c7b483e8d" [label="sha256:50f1a6f8b82354c51a9c29f5db501ef6a8a1d5143ec8dfb573e81b3c7b483e8d" shape="plaintext"];
  "sha256:5bd6c7847c240cbfe7f81a62bfbeb8b82793492e51376a7eec26071674714d67" -> "sha256:7c7bd4adc0ad09fb8a4e2192b2389c301fbc5c0b0ce1c6a092c3ab3f5cee1be4" [label=""];
  "sha256:7c7bd4adc0ad09fb8a4e2192b2389c301fbc5c0b0ce1c6a092c3ab3f5cee1be4" -> "sha256:eb77ad5dd91c21d5fbe374cd3cc39970cdd82caa9b6c7e7031164deb7e92b93e" [label=""];
  "sha256:eb77ad5dd91c21d5fbe374cd3cc39970cdd82caa9b6c7e7031164deb7e92b93e" -> "sha256:7ae14ca4cef8b95c2ce1685272d7f14496bf5cc77a884161c646ce5998a61346" [label=""];
  "sha256:7ae14ca4cef8b95c2ce1685272d7f14496bf5cc77a884161c646ce5998a61346" -> "sha256:3b0fbfa439b9671ec1c8d91796a7143174549879835fe4180e9ef37154adf13c" [label=""];
  "sha256:3b0fbfa439b9671ec1c8d91796a7143174549879835fe4180e9ef37154adf13c" -> "sha256:50f1a6f8b82354c51a9c29f5db501ef6a8a1d5143ec8dfb573e81b3c7b483e8d" [label=""];
}

