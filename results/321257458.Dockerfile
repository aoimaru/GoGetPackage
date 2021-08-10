[app/sources/321257458.Dockerfile]
digraph {
  "sha256:0ecb2e68dcb527e1a110d5f6c41aceec542e0845a4b4d4d43c6fcb9824bdc70d" [label="local://context" shape="ellipse"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:e595b62af7535c2ef86f905624431632d47f138e7c328021a28f963b98f28301" [label="mkdir{path=/usr/src/component-repository}" shape="note"];
  "sha256:746b25a5cbc493e41f8adced40a365d6e99ab3c68a986f181dbc58152e74c261" [label="/bin/sh -c apk update && apk add --no-cache bash" shape="box"];
  "sha256:f1cb641a369c062f9c0e039e1d38258927883353ec13aee59b0edde81798b8df" [label="copy{src=/package.json, dest=/usr/src/component-repository/},copy{src=/yarn.lock, dest=/usr/src/component-repository/}" shape="note"];
  "sha256:e6ca110079617aafcf59696307086e9fd8f0c8178418cd4df19113245fc73138" [label="copy{src=/lib/backend-commons-lib, dest=/usr/src/component-repository/lib/backend-commons-lib}" shape="note"];
  "sha256:a03a05cae2961641a77bfb20e79bdf8a35f755920d5a2ce0c7b38d8d2c58f448" [label="copy{src=/lib/iam-utils, dest=/usr/src/component-repository/lib/iam-utils}" shape="note"];
  "sha256:9c65c149af4c9beaddd67bbffede20151e896d157c09d8c5154e0bfc896cfa8e" [label="copy{src=/lib/component-repository, dest=/usr/src/component-repository/lib/component-repository}" shape="note"];
  "sha256:fb3bdb4b86720583bb2175865d05360ddef836eed2e864b17c0071a391f441f1" [label="copy{src=/services/component-repository/package.json, dest=/usr/src/component-repository/services/component-repository/},copy{src=/services/component-repository/index.js, dest=/usr/src/component-repository/services/component-repository/}" shape="note"];
  "sha256:1b3dfdddff6592e7826f80cc8b3ffa490c4a00654b1cf7ae5353aa83043f026b" [label="copy{src=/services/component-repository/src, dest=/usr/src/component-repository/services/component-repository/src}" shape="note"];
  "sha256:b7f7d3a0637ab8bb4b1256d97dd4c87b8006d0de61c42350ced52e285668cd82" [label="copy{src=/services/component-repository/config/default.json, dest=/usr/src/component-repository/services/component-repository/config/default.json}" shape="note"];
  "sha256:91cb4166ac99cf0708563180bfd168914f2e23ab6d9b7ba583b69d0ef1879276" [label="/bin/sh -c apk update && apk add --no-cache     make     gcc     g++     python" shape="box"];
  "sha256:f584b0d6f95a1a2e396f0f64d9ad3f482cdea5006a5b7e29fef4a14e179df20f" [label="/bin/sh -c yarn install --production" shape="box"];
  "sha256:a7505a8a15df83b697b2e218115c0d45466044fd1303d911ab5f640f471b8771" [label="copy{src=/usr/src/component-repository/node_modules, dest=/usr/src/component-repository/node_modules}" shape="note"];
  "sha256:9ea26f51fd0dbd1df0d7955352ffbc2bfeed2e9e6d54e4ab0cd035a4d66e150c" [label="/bin/sh -c rm yarn.lock" shape="box"];
  "sha256:875c7323f9e10a90719cb57ca1aa93f51f8af521c5cdf127f4c1ca8d64f88b35" [label="/bin/sh -c chown -R node:node ." shape="box"];
  "sha256:93a395e2952cb15241b6e5fc2fca7b5c2eca3d0299ebff1fd01775801372301e" [label="sha256:93a395e2952cb15241b6e5fc2fca7b5c2eca3d0299ebff1fd01775801372301e" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:e595b62af7535c2ef86f905624431632d47f138e7c328021a28f963b98f28301" [label=""];
  "sha256:e595b62af7535c2ef86f905624431632d47f138e7c328021a28f963b98f28301" -> "sha256:746b25a5cbc493e41f8adced40a365d6e99ab3c68a986f181dbc58152e74c261" [label=""];
  "sha256:746b25a5cbc493e41f8adced40a365d6e99ab3c68a986f181dbc58152e74c261" -> "sha256:f1cb641a369c062f9c0e039e1d38258927883353ec13aee59b0edde81798b8df" [label=""];
  "sha256:0ecb2e68dcb527e1a110d5f6c41aceec542e0845a4b4d4d43c6fcb9824bdc70d" -> "sha256:f1cb641a369c062f9c0e039e1d38258927883353ec13aee59b0edde81798b8df" [label=""];
  "sha256:f1cb641a369c062f9c0e039e1d38258927883353ec13aee59b0edde81798b8df" -> "sha256:e6ca110079617aafcf59696307086e9fd8f0c8178418cd4df19113245fc73138" [label=""];
  "sha256:0ecb2e68dcb527e1a110d5f6c41aceec542e0845a4b4d4d43c6fcb9824bdc70d" -> "sha256:e6ca110079617aafcf59696307086e9fd8f0c8178418cd4df19113245fc73138" [label=""];
  "sha256:e6ca110079617aafcf59696307086e9fd8f0c8178418cd4df19113245fc73138" -> "sha256:a03a05cae2961641a77bfb20e79bdf8a35f755920d5a2ce0c7b38d8d2c58f448" [label=""];
  "sha256:0ecb2e68dcb527e1a110d5f6c41aceec542e0845a4b4d4d43c6fcb9824bdc70d" -> "sha256:a03a05cae2961641a77bfb20e79bdf8a35f755920d5a2ce0c7b38d8d2c58f448" [label=""];
  "sha256:a03a05cae2961641a77bfb20e79bdf8a35f755920d5a2ce0c7b38d8d2c58f448" -> "sha256:9c65c149af4c9beaddd67bbffede20151e896d157c09d8c5154e0bfc896cfa8e" [label=""];
  "sha256:0ecb2e68dcb527e1a110d5f6c41aceec542e0845a4b4d4d43c6fcb9824bdc70d" -> "sha256:9c65c149af4c9beaddd67bbffede20151e896d157c09d8c5154e0bfc896cfa8e" [label=""];
  "sha256:9c65c149af4c9beaddd67bbffede20151e896d157c09d8c5154e0bfc896cfa8e" -> "sha256:fb3bdb4b86720583bb2175865d05360ddef836eed2e864b17c0071a391f441f1" [label=""];
  "sha256:0ecb2e68dcb527e1a110d5f6c41aceec542e0845a4b4d4d43c6fcb9824bdc70d" -> "sha256:fb3bdb4b86720583bb2175865d05360ddef836eed2e864b17c0071a391f441f1" [label=""];
  "sha256:fb3bdb4b86720583bb2175865d05360ddef836eed2e864b17c0071a391f441f1" -> "sha256:1b3dfdddff6592e7826f80cc8b3ffa490c4a00654b1cf7ae5353aa83043f026b" [label=""];
  "sha256:0ecb2e68dcb527e1a110d5f6c41aceec542e0845a4b4d4d43c6fcb9824bdc70d" -> "sha256:1b3dfdddff6592e7826f80cc8b3ffa490c4a00654b1cf7ae5353aa83043f026b" [label=""];
  "sha256:1b3dfdddff6592e7826f80cc8b3ffa490c4a00654b1cf7ae5353aa83043f026b" -> "sha256:b7f7d3a0637ab8bb4b1256d97dd4c87b8006d0de61c42350ced52e285668cd82" [label=""];
  "sha256:0ecb2e68dcb527e1a110d5f6c41aceec542e0845a4b4d4d43c6fcb9824bdc70d" -> "sha256:b7f7d3a0637ab8bb4b1256d97dd4c87b8006d0de61c42350ced52e285668cd82" [label=""];
  "sha256:b7f7d3a0637ab8bb4b1256d97dd4c87b8006d0de61c42350ced52e285668cd82" -> "sha256:91cb4166ac99cf0708563180bfd168914f2e23ab6d9b7ba583b69d0ef1879276" [label=""];
  "sha256:91cb4166ac99cf0708563180bfd168914f2e23ab6d9b7ba583b69d0ef1879276" -> "sha256:f584b0d6f95a1a2e396f0f64d9ad3f482cdea5006a5b7e29fef4a14e179df20f" [label=""];
  "sha256:b7f7d3a0637ab8bb4b1256d97dd4c87b8006d0de61c42350ced52e285668cd82" -> "sha256:a7505a8a15df83b697b2e218115c0d45466044fd1303d911ab5f640f471b8771" [label=""];
  "sha256:f584b0d6f95a1a2e396f0f64d9ad3f482cdea5006a5b7e29fef4a14e179df20f" -> "sha256:a7505a8a15df83b697b2e218115c0d45466044fd1303d911ab5f640f471b8771" [label=""];
  "sha256:a7505a8a15df83b697b2e218115c0d45466044fd1303d911ab5f640f471b8771" -> "sha256:9ea26f51fd0dbd1df0d7955352ffbc2bfeed2e9e6d54e4ab0cd035a4d66e150c" [label=""];
  "sha256:9ea26f51fd0dbd1df0d7955352ffbc2bfeed2e9e6d54e4ab0cd035a4d66e150c" -> "sha256:875c7323f9e10a90719cb57ca1aa93f51f8af521c5cdf127f4c1ca8d64f88b35" [label=""];
  "sha256:875c7323f9e10a90719cb57ca1aa93f51f8af521c5cdf127f4c1ca8d64f88b35" -> "sha256:93a395e2952cb15241b6e5fc2fca7b5c2eca3d0299ebff1fd01775801372301e" [label=""];
}

