[app/sources/236466608.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:4a00218a95e6a8cf7cfaf724742af1d382e54cdb4849f2a10dc3b51d7881495d" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends     ca-certificates     cmake     gcc     libc6-dev     make     pkg-config     git     automake     libtool     m4     autoconf     make     file     binutils" shape="box"];
  "sha256:c7fb93807fb1c48d86ff71ccdb1b38e5a741e6401a7d5180655e016997332a14" [label="local://context" shape="ellipse"];
  "sha256:694128c0f60f584eb292536434cb4299048b5e129adeffc08b8b8b193c856599" [label="copy{src=/xargo.sh, dest=/}" shape="note"];
  "sha256:050fcaf783c4b919318e208fa4baf0117053603f26d4cf8679bf108563a65175" [label="/bin/sh -c bash /xargo.sh" shape="box"];
  "sha256:804f0d7f9d8b1002ebf2364e27ac9537120cbca4940ee61b9c023ca6f73cf9ec" [label="copy{src=/cmake.sh, dest=/}" shape="note"];
  "sha256:199ab784714333d14b77cc2511a0350101345f9d6d9d4ece02d2e7b16eacc1b5" [label="/bin/sh -c apt-get purge --auto-remove -y cmake &&     bash /cmake.sh 3.5.1" shape="box"];
  "sha256:afca6f99dfb5f7d8d7078a0db8d67b8004942f5ae147af9686481fb00671cb32" [label="/bin/sh -c apt-get install -y --no-install-recommends     g++-powerpc-linux-gnu     libc6-dev-powerpc-cross" shape="box"];
  "sha256:664bd310326a36cd9cd8490e66a02024f03cd99b85cc8ca384fbe9db07f705a8" [label="copy{src=/openssl.sh, dest=/}" shape="note"];
  "sha256:665f08281b2806e58e999fecd90d3ed14d6526b9eea47cc59a2af8c89c67acb3" [label="/bin/sh -c bash /openssl.sh linux-ppc powerpc-linux-gnu-" shape="box"];
  "sha256:7dcd40eafb70772a74a9049c88308adc79938a919fd0c46dd2a15684f927ddb6" [label="copy{src=/qemu.sh, dest=/}" shape="note"];
  "sha256:5e564046f6660cdfb1af91cbc7fd2127e748bae907cbb1b26db3b85b6a96a7b8" [label="/bin/sh -c bash /qemu.sh ppc linux softmmu" shape="box"];
  "sha256:9c68252be7b3bec43603697004968c95ae13b662f31e2d4e54b9e090585278c4" [label="copy{src=/dropbear.sh, dest=/}" shape="note"];
  "sha256:311c9d0ba53da56085ceecfb5732187de4da98cb66e8c5d39fa57009d75c2783" [label="/bin/sh -c bash /dropbear.sh" shape="box"];
  "sha256:11d778528dc6f2e61781a68293a40ec3d7dfa1c2114d44e38637200f0f674a6d" [label="copy{src=/linux-image.sh, dest=/}" shape="note"];
  "sha256:daf316832192a51828730474825d20370547016ade2f2dfd9bdc4995c09456e8" [label="/bin/sh -c bash /linux-image.sh powerpc" shape="box"];
  "sha256:aa461564be590d7c0784132eac5e749e5bcd0c66dbff5c89681adb81d803e1f4" [label="copy{src=/linux-runner, dest=/}" shape="note"];
  "sha256:a0a3311d1eda9b13ad8534d0ccde926a7f03691927b37c1bae9d1bc931652388" [label="sha256:a0a3311d1eda9b13ad8534d0ccde926a7f03691927b37c1bae9d1bc931652388" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:4a00218a95e6a8cf7cfaf724742af1d382e54cdb4849f2a10dc3b51d7881495d" [label=""];
  "sha256:4a00218a95e6a8cf7cfaf724742af1d382e54cdb4849f2a10dc3b51d7881495d" -> "sha256:694128c0f60f584eb292536434cb4299048b5e129adeffc08b8b8b193c856599" [label=""];
  "sha256:c7fb93807fb1c48d86ff71ccdb1b38e5a741e6401a7d5180655e016997332a14" -> "sha256:694128c0f60f584eb292536434cb4299048b5e129adeffc08b8b8b193c856599" [label=""];
  "sha256:694128c0f60f584eb292536434cb4299048b5e129adeffc08b8b8b193c856599" -> "sha256:050fcaf783c4b919318e208fa4baf0117053603f26d4cf8679bf108563a65175" [label=""];
  "sha256:050fcaf783c4b919318e208fa4baf0117053603f26d4cf8679bf108563a65175" -> "sha256:804f0d7f9d8b1002ebf2364e27ac9537120cbca4940ee61b9c023ca6f73cf9ec" [label=""];
  "sha256:c7fb93807fb1c48d86ff71ccdb1b38e5a741e6401a7d5180655e016997332a14" -> "sha256:804f0d7f9d8b1002ebf2364e27ac9537120cbca4940ee61b9c023ca6f73cf9ec" [label=""];
  "sha256:804f0d7f9d8b1002ebf2364e27ac9537120cbca4940ee61b9c023ca6f73cf9ec" -> "sha256:199ab784714333d14b77cc2511a0350101345f9d6d9d4ece02d2e7b16eacc1b5" [label=""];
  "sha256:199ab784714333d14b77cc2511a0350101345f9d6d9d4ece02d2e7b16eacc1b5" -> "sha256:afca6f99dfb5f7d8d7078a0db8d67b8004942f5ae147af9686481fb00671cb32" [label=""];
  "sha256:afca6f99dfb5f7d8d7078a0db8d67b8004942f5ae147af9686481fb00671cb32" -> "sha256:664bd310326a36cd9cd8490e66a02024f03cd99b85cc8ca384fbe9db07f705a8" [label=""];
  "sha256:c7fb93807fb1c48d86ff71ccdb1b38e5a741e6401a7d5180655e016997332a14" -> "sha256:664bd310326a36cd9cd8490e66a02024f03cd99b85cc8ca384fbe9db07f705a8" [label=""];
  "sha256:664bd310326a36cd9cd8490e66a02024f03cd99b85cc8ca384fbe9db07f705a8" -> "sha256:665f08281b2806e58e999fecd90d3ed14d6526b9eea47cc59a2af8c89c67acb3" [label=""];
  "sha256:665f08281b2806e58e999fecd90d3ed14d6526b9eea47cc59a2af8c89c67acb3" -> "sha256:7dcd40eafb70772a74a9049c88308adc79938a919fd0c46dd2a15684f927ddb6" [label=""];
  "sha256:c7fb93807fb1c48d86ff71ccdb1b38e5a741e6401a7d5180655e016997332a14" -> "sha256:7dcd40eafb70772a74a9049c88308adc79938a919fd0c46dd2a15684f927ddb6" [label=""];
  "sha256:7dcd40eafb70772a74a9049c88308adc79938a919fd0c46dd2a15684f927ddb6" -> "sha256:5e564046f6660cdfb1af91cbc7fd2127e748bae907cbb1b26db3b85b6a96a7b8" [label=""];
  "sha256:5e564046f6660cdfb1af91cbc7fd2127e748bae907cbb1b26db3b85b6a96a7b8" -> "sha256:9c68252be7b3bec43603697004968c95ae13b662f31e2d4e54b9e090585278c4" [label=""];
  "sha256:c7fb93807fb1c48d86ff71ccdb1b38e5a741e6401a7d5180655e016997332a14" -> "sha256:9c68252be7b3bec43603697004968c95ae13b662f31e2d4e54b9e090585278c4" [label=""];
  "sha256:9c68252be7b3bec43603697004968c95ae13b662f31e2d4e54b9e090585278c4" -> "sha256:311c9d0ba53da56085ceecfb5732187de4da98cb66e8c5d39fa57009d75c2783" [label=""];
  "sha256:311c9d0ba53da56085ceecfb5732187de4da98cb66e8c5d39fa57009d75c2783" -> "sha256:11d778528dc6f2e61781a68293a40ec3d7dfa1c2114d44e38637200f0f674a6d" [label=""];
  "sha256:c7fb93807fb1c48d86ff71ccdb1b38e5a741e6401a7d5180655e016997332a14" -> "sha256:11d778528dc6f2e61781a68293a40ec3d7dfa1c2114d44e38637200f0f674a6d" [label=""];
  "sha256:11d778528dc6f2e61781a68293a40ec3d7dfa1c2114d44e38637200f0f674a6d" -> "sha256:daf316832192a51828730474825d20370547016ade2f2dfd9bdc4995c09456e8" [label=""];
  "sha256:daf316832192a51828730474825d20370547016ade2f2dfd9bdc4995c09456e8" -> "sha256:aa461564be590d7c0784132eac5e749e5bcd0c66dbff5c89681adb81d803e1f4" [label=""];
  "sha256:c7fb93807fb1c48d86ff71ccdb1b38e5a741e6401a7d5180655e016997332a14" -> "sha256:aa461564be590d7c0784132eac5e749e5bcd0c66dbff5c89681adb81d803e1f4" [label=""];
  "sha256:aa461564be590d7c0784132eac5e749e5bcd0c66dbff5c89681adb81d803e1f4" -> "sha256:a0a3311d1eda9b13ad8534d0ccde926a7f03691927b37c1bae9d1bc931652388" [label=""];
}

