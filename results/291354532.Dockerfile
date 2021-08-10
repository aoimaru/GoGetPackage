[app/sources/291354532.Dockerfile]
digraph {
  "sha256:1d916039352c0ef4fe2312846f8fd6aad801710329ba6742bcbe82075b24dd96" [label="docker-image://docker.io/tensorflow/tensorflow:1.12.0-gpu-py3" shape="ellipse"];
  "sha256:e42b1f68447a0d42d062cb0eb8169667c18cf14330ed2d20c779383f5fd86430" [label="/bin/sh -c add-apt-repository -y ppa:jonathonf/ffmpeg-4  && apt-get update -qq -y  && apt-get install -y libsm6 libxrender1 libxext-dev python3-tk ffmpeg  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c7d8083bb31525d9b95e8261baabbb1b068ed408172e707c3357eaaed52dd16d" [label="local://context" shape="ellipse"];
  "sha256:10ca6c6cee40407a368e65b882c4c32b1517efde271d5bda821022588f18bbca" [label="copy{src=/requirements.txt, dest=/opt/}" shape="note"];
  "sha256:c98ced03507bcc6b997ae55d19929115dd82f73078beb238a98a2eecec8bba19" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:96a355f077b1b90c2d3eb61d20c8abd7ac19951cc7b47154b2e204c6a6b7073e" [label="/bin/sh -c pip3 --no-cache-dir install -r /opt/requirements.txt && rm /opt/requirements.txt" shape="box"];
  "sha256:801aab78aa7d1560f2fa4005a4047f110ac1d40684f19225149535940b10b29d" [label="/bin/sh -c pip3 install jupyter matplotlib" shape="box"];
  "sha256:527be640e63d4a5c000e89052140e4a590b81c58b109ba0da0a25446ca837243" [label="/bin/sh -c pip3 install jupyter_http_over_ws" shape="box"];
  "sha256:fe621adc12714b66df839936e76c93f7bf31624e3ecce3565f758994c11fda2a" [label="/bin/sh -c jupyter serverextension enable --py jupyter_http_over_ws" shape="box"];
  "sha256:99671c62941209e75b5bc18f61251f2663e540a905bbf9137e326dca13dd5939" [label="/bin/sh -c cd /usr/local/cuda/lib64  && mv stubs/libcuda.so ./  && ln -s libcuda.so libcuda.so.1  && ldconfig" shape="box"];
  "sha256:a30ceb53273cb4e5cbfa3c0d3fe2bb4ebf3be485ffafd1419193f885d4a800ec" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:c31bb6049077f56422f54600415e3a1fef792962c40da11be5b70b49e86d650e" [label="sha256:c31bb6049077f56422f54600415e3a1fef792962c40da11be5b70b49e86d650e" shape="plaintext"];
  "sha256:1d916039352c0ef4fe2312846f8fd6aad801710329ba6742bcbe82075b24dd96" -> "sha256:e42b1f68447a0d42d062cb0eb8169667c18cf14330ed2d20c779383f5fd86430" [label=""];
  "sha256:e42b1f68447a0d42d062cb0eb8169667c18cf14330ed2d20c779383f5fd86430" -> "sha256:10ca6c6cee40407a368e65b882c4c32b1517efde271d5bda821022588f18bbca" [label=""];
  "sha256:c7d8083bb31525d9b95e8261baabbb1b068ed408172e707c3357eaaed52dd16d" -> "sha256:10ca6c6cee40407a368e65b882c4c32b1517efde271d5bda821022588f18bbca" [label=""];
  "sha256:10ca6c6cee40407a368e65b882c4c32b1517efde271d5bda821022588f18bbca" -> "sha256:c98ced03507bcc6b997ae55d19929115dd82f73078beb238a98a2eecec8bba19" [label=""];
  "sha256:c98ced03507bcc6b997ae55d19929115dd82f73078beb238a98a2eecec8bba19" -> "sha256:96a355f077b1b90c2d3eb61d20c8abd7ac19951cc7b47154b2e204c6a6b7073e" [label=""];
  "sha256:96a355f077b1b90c2d3eb61d20c8abd7ac19951cc7b47154b2e204c6a6b7073e" -> "sha256:801aab78aa7d1560f2fa4005a4047f110ac1d40684f19225149535940b10b29d" [label=""];
  "sha256:801aab78aa7d1560f2fa4005a4047f110ac1d40684f19225149535940b10b29d" -> "sha256:527be640e63d4a5c000e89052140e4a590b81c58b109ba0da0a25446ca837243" [label=""];
  "sha256:527be640e63d4a5c000e89052140e4a590b81c58b109ba0da0a25446ca837243" -> "sha256:fe621adc12714b66df839936e76c93f7bf31624e3ecce3565f758994c11fda2a" [label=""];
  "sha256:fe621adc12714b66df839936e76c93f7bf31624e3ecce3565f758994c11fda2a" -> "sha256:99671c62941209e75b5bc18f61251f2663e540a905bbf9137e326dca13dd5939" [label=""];
  "sha256:99671c62941209e75b5bc18f61251f2663e540a905bbf9137e326dca13dd5939" -> "sha256:a30ceb53273cb4e5cbfa3c0d3fe2bb4ebf3be485ffafd1419193f885d4a800ec" [label=""];
  "sha256:a30ceb53273cb4e5cbfa3c0d3fe2bb4ebf3be485ffafd1419193f885d4a800ec" -> "sha256:c31bb6049077f56422f54600415e3a1fef792962c40da11be5b70b49e86d650e" [label=""];
}

