[app/sources/341301445.Dockerfile]
digraph {
  "sha256:a64e09d5d83d15fd73689cc1005c5d6910da9e2ed7776aaf631bf103e37b6e23" [label="local://context" shape="ellipse"];
  "sha256:fc6339e2261972a1c95ca0e5b9758b8079a44bccdc199f19a6b6d9a6b91d05ee" [label="docker-image://docker.io/library/busybox:buildroot-2014.02" shape="ellipse"];
  "sha256:8390d42971a294b9bb13c898bc3451c3c1bc141bcd4299e13a56cd96ccbbd62a" [label="ls -la" shape="box"];
  "sha256:477f4fea4cf27dd6860703e4ac2fd7adb6d5870c5c66c4881376db87fb9946ca" [label="echo '1234'" shape="box"];
  "sha256:0ff9ae062690ab841be5e5e501a86dde61f66e6e8823d190a3c417ca7b78184c" [label="/bin/sh -c echo \"1234\"" shape="box"];
  "sha256:50ceddd09b156a13e5cadd96383cac0e596a83d6d607c20ba3a83d57e682ed38" [label="/bin/sh -c echo 1234" shape="box"];
  "sha256:671221f676ee8e2c2db54ff5072b92a692554cc7e28e7e28a779e7b4003ee6eb" [label="/bin/sh -c echo '1234' &&     echo \"456\" &&     echo 789" shape="box"];
  "sha256:765eaeae38e2e01b150aeda3f25fc4252562e8c7e6ded9fe6f4eee040d8a5f9d" [label="/bin/sh -c sh -c 'echo root:testpass         > /tmp/passwd'" shape="box"];
  "sha256:127441352756d82ea37f6a72f0480acda73bc5bb230a62c7eb6dd9a1a54f4ade" [label="/bin/sh -c mkdir -p /test /test2 /test3/test" shape="box"];
  "sha256:54719bf2e8548262559818a049dee0af07e1d7365eb0711c8c314337bd87ffc8" [label="mkdir{path=/test}" shape="note"];
  "sha256:371c99e7c23e695d7b2736c8b0d818015397a8cc23e106b1d464aa020765e86f" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:8887111bb4f57d06bd5f620584fa94a2068496b2f86d0291ce909ae2647b43c4" [label="copy{src=/, dest=/test/copy}" shape="note"];
  "sha256:e7ec341347a9a81daa4ae12a49ede35b94c97afdd2dd9a6e60709539bebb66d2" [label="sha256:e7ec341347a9a81daa4ae12a49ede35b94c97afdd2dd9a6e60709539bebb66d2" shape="plaintext"];
  "sha256:fc6339e2261972a1c95ca0e5b9758b8079a44bccdc199f19a6b6d9a6b91d05ee" -> "sha256:8390d42971a294b9bb13c898bc3451c3c1bc141bcd4299e13a56cd96ccbbd62a" [label=""];
  "sha256:8390d42971a294b9bb13c898bc3451c3c1bc141bcd4299e13a56cd96ccbbd62a" -> "sha256:477f4fea4cf27dd6860703e4ac2fd7adb6d5870c5c66c4881376db87fb9946ca" [label=""];
  "sha256:477f4fea4cf27dd6860703e4ac2fd7adb6d5870c5c66c4881376db87fb9946ca" -> "sha256:0ff9ae062690ab841be5e5e501a86dde61f66e6e8823d190a3c417ca7b78184c" [label=""];
  "sha256:0ff9ae062690ab841be5e5e501a86dde61f66e6e8823d190a3c417ca7b78184c" -> "sha256:50ceddd09b156a13e5cadd96383cac0e596a83d6d607c20ba3a83d57e682ed38" [label=""];
  "sha256:50ceddd09b156a13e5cadd96383cac0e596a83d6d607c20ba3a83d57e682ed38" -> "sha256:671221f676ee8e2c2db54ff5072b92a692554cc7e28e7e28a779e7b4003ee6eb" [label=""];
  "sha256:671221f676ee8e2c2db54ff5072b92a692554cc7e28e7e28a779e7b4003ee6eb" -> "sha256:765eaeae38e2e01b150aeda3f25fc4252562e8c7e6ded9fe6f4eee040d8a5f9d" [label=""];
  "sha256:765eaeae38e2e01b150aeda3f25fc4252562e8c7e6ded9fe6f4eee040d8a5f9d" -> "sha256:127441352756d82ea37f6a72f0480acda73bc5bb230a62c7eb6dd9a1a54f4ade" [label=""];
  "sha256:127441352756d82ea37f6a72f0480acda73bc5bb230a62c7eb6dd9a1a54f4ade" -> "sha256:54719bf2e8548262559818a049dee0af07e1d7365eb0711c8c314337bd87ffc8" [label=""];
  "sha256:54719bf2e8548262559818a049dee0af07e1d7365eb0711c8c314337bd87ffc8" -> "sha256:371c99e7c23e695d7b2736c8b0d818015397a8cc23e106b1d464aa020765e86f" [label=""];
  "sha256:a64e09d5d83d15fd73689cc1005c5d6910da9e2ed7776aaf631bf103e37b6e23" -> "sha256:371c99e7c23e695d7b2736c8b0d818015397a8cc23e106b1d464aa020765e86f" [label=""];
  "sha256:371c99e7c23e695d7b2736c8b0d818015397a8cc23e106b1d464aa020765e86f" -> "sha256:8887111bb4f57d06bd5f620584fa94a2068496b2f86d0291ce909ae2647b43c4" [label=""];
  "sha256:a64e09d5d83d15fd73689cc1005c5d6910da9e2ed7776aaf631bf103e37b6e23" -> "sha256:8887111bb4f57d06bd5f620584fa94a2068496b2f86d0291ce909ae2647b43c4" [label=""];
  "sha256:8887111bb4f57d06bd5f620584fa94a2068496b2f86d0291ce909ae2647b43c4" -> "sha256:e7ec341347a9a81daa4ae12a49ede35b94c97afdd2dd9a6e60709539bebb66d2" [label=""];
}

