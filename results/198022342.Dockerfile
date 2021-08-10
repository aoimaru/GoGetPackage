[app/sources/198022342.Dockerfile]
digraph {
  "sha256:03de0030705f94a0e1a982472322800ef1eefe39a9cef6c72c461c1b794488e8" [label="local://context" shape="ellipse"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:67f4e8dfea3ce98f85173cf3d0a097a286a957bdc9d537a68563d1cb7db94930" [label="/bin/sh -c apk --update add erlang erlang-sasl erlang-crypto erlang-syntax-tools imagemagick && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:4cb6e38df54d8cdcc22efefcbd9ba5da6cf6e2983fd33859df9d0bf081a0ca81" [label="/bin/sh -c mkdir -p /$APP_NAME" shape="box"];
  "sha256:73db43ae77e33c0dbdfec3ed3c6b959171b601027d947da385868b09ea8c9e87" [label="copy{src=/rel/kitteh/bin, dest=/kitteh/bin}" shape="note"];
  "sha256:fa75bcedefec8c948ffc0e9ed6d8a5747b21e6ca20ee01dbf2440ed348baacd2" [label="copy{src=/rel/kitteh/lib, dest=/kitteh/lib}" shape="note"];
  "sha256:cca6d1568cbcd991301447e0965b064ca7df3c14a790ddd921670587ee199bba" [label="copy{src=/rel/kitteh/releases/start_erl.data, dest=/kitteh/releases/start_erl.data}" shape="note"];
  "sha256:1aa7aed85179ec80b899f9235ca8b076118861c383d4c9cb8a11633c3424b389" [label="copy{src=/rel/kitteh/releases/0.0.1/kitteh.sh, dest=/kitteh/releases/0.0.1/kitteh.sh}" shape="note"];
  "sha256:844fbcc301f0e3bcd0685fb5ab1873b75de2a9964a08afba17ee7f623ecdda65" [label="copy{src=/rel/kitteh/releases/0.0.1/kitteh.boot, dest=/kitteh/releases/0.0.1/kitteh.boot}" shape="note"];
  "sha256:586cfb939f344dd536f35c0a1da2904fbef7ac06fc84b5bae641d3057196c92d" [label="copy{src=/rel/kitteh/releases/0.0.1/kitteh.rel, dest=/kitteh/releases/0.0.1/kitteh.rel}" shape="note"];
  "sha256:2c4879846cad80fdac17d68df354fb36021cb0ec65658b21fa6e1bd7b0f1cd50" [label="copy{src=/rel/kitteh/releases/0.0.1/kitteh.script, dest=/kitteh/releases/0.0.1/kitteh.script}" shape="note"];
  "sha256:50e2db75323f69c7809df84e2e2c2ad1b90ed5796024d26e5d45bd65275d7363" [label="copy{src=/rel/kitteh/releases/0.0.1/start.boot, dest=/kitteh/releases/0.0.1/start.boot}" shape="note"];
  "sha256:faeeea5843415b9b5a50aa58cea36e7d4f78daf847eed7e04d32a3f4bf3fd29f" [label="copy{src=/rel/kitteh/releases/0.0.1/sys.config, dest=/kitteh/releases/0.0.1/sys.config}" shape="note"];
  "sha256:cbf672e65bf3712746305cf8ec3fad464c75d89ab7b2fdb94b928266a3d177b4" [label="copy{src=/rel/kitteh/releases/0.0.1/vm.args, dest=/kitteh/releases/0.0.1/vm.args}" shape="note"];
  "sha256:54d5bcc284645d3579af0f5d115889dae6a48f3fa9da6aa1978a7b6d12d2c1df" [label="sha256:54d5bcc284645d3579af0f5d115889dae6a48f3fa9da6aa1978a7b6d12d2c1df" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:67f4e8dfea3ce98f85173cf3d0a097a286a957bdc9d537a68563d1cb7db94930" [label=""];
  "sha256:67f4e8dfea3ce98f85173cf3d0a097a286a957bdc9d537a68563d1cb7db94930" -> "sha256:4cb6e38df54d8cdcc22efefcbd9ba5da6cf6e2983fd33859df9d0bf081a0ca81" [label=""];
  "sha256:4cb6e38df54d8cdcc22efefcbd9ba5da6cf6e2983fd33859df9d0bf081a0ca81" -> "sha256:73db43ae77e33c0dbdfec3ed3c6b959171b601027d947da385868b09ea8c9e87" [label=""];
  "sha256:03de0030705f94a0e1a982472322800ef1eefe39a9cef6c72c461c1b794488e8" -> "sha256:73db43ae77e33c0dbdfec3ed3c6b959171b601027d947da385868b09ea8c9e87" [label=""];
  "sha256:73db43ae77e33c0dbdfec3ed3c6b959171b601027d947da385868b09ea8c9e87" -> "sha256:fa75bcedefec8c948ffc0e9ed6d8a5747b21e6ca20ee01dbf2440ed348baacd2" [label=""];
  "sha256:03de0030705f94a0e1a982472322800ef1eefe39a9cef6c72c461c1b794488e8" -> "sha256:fa75bcedefec8c948ffc0e9ed6d8a5747b21e6ca20ee01dbf2440ed348baacd2" [label=""];
  "sha256:fa75bcedefec8c948ffc0e9ed6d8a5747b21e6ca20ee01dbf2440ed348baacd2" -> "sha256:cca6d1568cbcd991301447e0965b064ca7df3c14a790ddd921670587ee199bba" [label=""];
  "sha256:03de0030705f94a0e1a982472322800ef1eefe39a9cef6c72c461c1b794488e8" -> "sha256:cca6d1568cbcd991301447e0965b064ca7df3c14a790ddd921670587ee199bba" [label=""];
  "sha256:cca6d1568cbcd991301447e0965b064ca7df3c14a790ddd921670587ee199bba" -> "sha256:1aa7aed85179ec80b899f9235ca8b076118861c383d4c9cb8a11633c3424b389" [label=""];
  "sha256:03de0030705f94a0e1a982472322800ef1eefe39a9cef6c72c461c1b794488e8" -> "sha256:1aa7aed85179ec80b899f9235ca8b076118861c383d4c9cb8a11633c3424b389" [label=""];
  "sha256:1aa7aed85179ec80b899f9235ca8b076118861c383d4c9cb8a11633c3424b389" -> "sha256:844fbcc301f0e3bcd0685fb5ab1873b75de2a9964a08afba17ee7f623ecdda65" [label=""];
  "sha256:03de0030705f94a0e1a982472322800ef1eefe39a9cef6c72c461c1b794488e8" -> "sha256:844fbcc301f0e3bcd0685fb5ab1873b75de2a9964a08afba17ee7f623ecdda65" [label=""];
  "sha256:844fbcc301f0e3bcd0685fb5ab1873b75de2a9964a08afba17ee7f623ecdda65" -> "sha256:586cfb939f344dd536f35c0a1da2904fbef7ac06fc84b5bae641d3057196c92d" [label=""];
  "sha256:03de0030705f94a0e1a982472322800ef1eefe39a9cef6c72c461c1b794488e8" -> "sha256:586cfb939f344dd536f35c0a1da2904fbef7ac06fc84b5bae641d3057196c92d" [label=""];
  "sha256:586cfb939f344dd536f35c0a1da2904fbef7ac06fc84b5bae641d3057196c92d" -> "sha256:2c4879846cad80fdac17d68df354fb36021cb0ec65658b21fa6e1bd7b0f1cd50" [label=""];
  "sha256:03de0030705f94a0e1a982472322800ef1eefe39a9cef6c72c461c1b794488e8" -> "sha256:2c4879846cad80fdac17d68df354fb36021cb0ec65658b21fa6e1bd7b0f1cd50" [label=""];
  "sha256:2c4879846cad80fdac17d68df354fb36021cb0ec65658b21fa6e1bd7b0f1cd50" -> "sha256:50e2db75323f69c7809df84e2e2c2ad1b90ed5796024d26e5d45bd65275d7363" [label=""];
  "sha256:03de0030705f94a0e1a982472322800ef1eefe39a9cef6c72c461c1b794488e8" -> "sha256:50e2db75323f69c7809df84e2e2c2ad1b90ed5796024d26e5d45bd65275d7363" [label=""];
  "sha256:50e2db75323f69c7809df84e2e2c2ad1b90ed5796024d26e5d45bd65275d7363" -> "sha256:faeeea5843415b9b5a50aa58cea36e7d4f78daf847eed7e04d32a3f4bf3fd29f" [label=""];
  "sha256:03de0030705f94a0e1a982472322800ef1eefe39a9cef6c72c461c1b794488e8" -> "sha256:faeeea5843415b9b5a50aa58cea36e7d4f78daf847eed7e04d32a3f4bf3fd29f" [label=""];
  "sha256:faeeea5843415b9b5a50aa58cea36e7d4f78daf847eed7e04d32a3f4bf3fd29f" -> "sha256:cbf672e65bf3712746305cf8ec3fad464c75d89ab7b2fdb94b928266a3d177b4" [label=""];
  "sha256:03de0030705f94a0e1a982472322800ef1eefe39a9cef6c72c461c1b794488e8" -> "sha256:cbf672e65bf3712746305cf8ec3fad464c75d89ab7b2fdb94b928266a3d177b4" [label=""];
  "sha256:cbf672e65bf3712746305cf8ec3fad464c75d89ab7b2fdb94b928266a3d177b4" -> "sha256:54d5bcc284645d3579af0f5d115889dae6a48f3fa9da6aa1978a7b6d12d2c1df" [label=""];
}

