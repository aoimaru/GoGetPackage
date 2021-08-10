[app/sources/322143976.Dockerfile]
digraph {
  "sha256:a6ccb808080b29a8f1e2e560214da6b02531536b750351f032d07e45ffbff295" [label="docker-image://520713654638.dkr.ecr.us-west-2.amazonaws.com/sagemaker-tensorflow:1.6.0-gpu-py2" shape="ellipse"];
  "sha256:af6fc22d302e5e10730a10297c4afdca469c6070a50aa984c57aab40614394cf" [label="/bin/sh -c pip install cmake" shape="box"];
  "sha256:edd6febb45fe7ca0a2a98ce033123f95af3101ee388adac3a67a292974938e62" [label="/bin/sh -c export LD_LIBRARY_PATH=/usr/local/cuda-9.0/targets/x86_64-linux/lib/stubs/:/usr/local/cuda-9.0/targets/x86_64-linux/lib/" shape="box"];
  "sha256:56b1ac9a6943d2c0a9394968ff1a96abf150a8fbe8e29b6ececc51bd9e4764f2" [label="/bin/sh -c if [ \"$device\"=\"cpu\" ] ; then \t\tpip install tensorflow==$tf_version; \telse \t\tpip install \"tensorflow-gpu\"==$tf_version; \tfi" shape="box"];
  "sha256:a4b96822afcba28eb858e40fc54a3b1520b94d0a0bb28b050a1c4432b1032da7" [label="mkdir{path=/root}" shape="note"];
  "sha256:e29a0c54c1f92fac21506331d168ba8962ce9144a920714104dfd13652f6d4f5" [label="local://context" shape="ellipse"];
  "sha256:dd8305aae2460f5845859fa0c30efbec9a0ec75620440088990b355526f67dc3" [label="copy{src=/, dest=/root/}" shape="note"];
  "sha256:56ba49fa4969427d26711fa1c77aaf2ab4f4d9c4dfee70af3754175eb4c0d325" [label="/bin/sh -c framework_support_installable_local=$(basename $sagemaker_tensorflow) &&         pip install $framework_support_installable_local &&         rm $framework_support_installable_local" shape="box"];
  "sha256:10b707b732f419cf7ef36e2d41fa86c2d42161935bfbc3e7965e0f03e2c8bf17" [label="copy{src=/, dest=/root/script.py}" shape="note"];
  "sha256:1e2e196f4ccf73f41d027ba3a64fec17ef9ce1552bf206383909ef4fc820ac42" [label="sha256:1e2e196f4ccf73f41d027ba3a64fec17ef9ce1552bf206383909ef4fc820ac42" shape="plaintext"];
  "sha256:a6ccb808080b29a8f1e2e560214da6b02531536b750351f032d07e45ffbff295" -> "sha256:af6fc22d302e5e10730a10297c4afdca469c6070a50aa984c57aab40614394cf" [label=""];
  "sha256:af6fc22d302e5e10730a10297c4afdca469c6070a50aa984c57aab40614394cf" -> "sha256:edd6febb45fe7ca0a2a98ce033123f95af3101ee388adac3a67a292974938e62" [label=""];
  "sha256:edd6febb45fe7ca0a2a98ce033123f95af3101ee388adac3a67a292974938e62" -> "sha256:56b1ac9a6943d2c0a9394968ff1a96abf150a8fbe8e29b6ececc51bd9e4764f2" [label=""];
  "sha256:56b1ac9a6943d2c0a9394968ff1a96abf150a8fbe8e29b6ececc51bd9e4764f2" -> "sha256:a4b96822afcba28eb858e40fc54a3b1520b94d0a0bb28b050a1c4432b1032da7" [label=""];
  "sha256:a4b96822afcba28eb858e40fc54a3b1520b94d0a0bb28b050a1c4432b1032da7" -> "sha256:dd8305aae2460f5845859fa0c30efbec9a0ec75620440088990b355526f67dc3" [label=""];
  "sha256:e29a0c54c1f92fac21506331d168ba8962ce9144a920714104dfd13652f6d4f5" -> "sha256:dd8305aae2460f5845859fa0c30efbec9a0ec75620440088990b355526f67dc3" [label=""];
  "sha256:dd8305aae2460f5845859fa0c30efbec9a0ec75620440088990b355526f67dc3" -> "sha256:56ba49fa4969427d26711fa1c77aaf2ab4f4d9c4dfee70af3754175eb4c0d325" [label=""];
  "sha256:56ba49fa4969427d26711fa1c77aaf2ab4f4d9c4dfee70af3754175eb4c0d325" -> "sha256:10b707b732f419cf7ef36e2d41fa86c2d42161935bfbc3e7965e0f03e2c8bf17" [label=""];
  "sha256:e29a0c54c1f92fac21506331d168ba8962ce9144a920714104dfd13652f6d4f5" -> "sha256:10b707b732f419cf7ef36e2d41fa86c2d42161935bfbc3e7965e0f03e2c8bf17" [label=""];
  "sha256:10b707b732f419cf7ef36e2d41fa86c2d42161935bfbc3e7965e0f03e2c8bf17" -> "sha256:1e2e196f4ccf73f41d027ba3a64fec17ef9ce1552bf206383909ef4fc820ac42" [label=""];
}

