[app/sources/386556359.Dockerfile]
digraph {
  "sha256:fc6339e2261972a1c95ca0e5b9758b8079a44bccdc199f19a6b6d9a6b91d05ee" [label="docker-image://docker.io/library/busybox:buildroot-2014.02" shape="ellipse"];
  "sha256:8390d42971a294b9bb13c898bc3451c3c1bc141bcd4299e13a56cd96ccbbd62a" [label="ls -la" shape="box"];
  "sha256:477f4fea4cf27dd6860703e4ac2fd7adb6d5870c5c66c4881376db87fb9946ca" [label="echo '1234'" shape="box"];
  "sha256:0ff9ae062690ab841be5e5e501a86dde61f66e6e8823d190a3c417ca7b78184c" [label="/bin/sh -c echo \"1234\"" shape="box"];
  "sha256:50ceddd09b156a13e5cadd96383cac0e596a83d6d607c20ba3a83d57e682ed38" [label="/bin/sh -c echo 1234" shape="box"];
  "sha256:671221f676ee8e2c2db54ff5072b92a692554cc7e28e7e28a779e7b4003ee6eb" [label="/bin/sh -c echo '1234' &&     echo \"456\" &&     echo 789" shape="box"];
  "sha256:765eaeae38e2e01b150aeda3f25fc4252562e8c7e6ded9fe6f4eee040d8a5f9d" [label="/bin/sh -c sh -c 'echo root:testpass         > /tmp/passwd'" shape="box"];
  "sha256:127441352756d82ea37f6a72f0480acda73bc5bb230a62c7eb6dd9a1a54f4ade" [label="/bin/sh -c mkdir -p /test /test2 /test3/test" shape="box"];
  "sha256:54719bf2e8548262559818a049dee0af07e1d7365eb0711c8c314337bd87ffc8" [label="mkdir{path=/test}" shape="note"];
  "sha256:3eb9cab616a20cbc451e926bf835351b3cc598540194e5fba09d08e64cd0bf78" [label="local://context" shape="ellipse"];
  "sha256:44fd65c9a79e48fc1e7f11e457dfc530cd1a88db456b64dfe271058ebc045f39" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:24277e8958a786643a2d8edba41e4630ca12a67ff60f4554a43692f9becf5797" [label="copy{src=/, dest=/test/copy}" shape="note"];
  "sha256:1306b93ecb6d006b8f1e33cc7c4f9d12fd44389c65a798326de227f22b4568c0" [label="sha256:1306b93ecb6d006b8f1e33cc7c4f9d12fd44389c65a798326de227f22b4568c0" shape="plaintext"];
  "sha256:fc6339e2261972a1c95ca0e5b9758b8079a44bccdc199f19a6b6d9a6b91d05ee" -> "sha256:8390d42971a294b9bb13c898bc3451c3c1bc141bcd4299e13a56cd96ccbbd62a" [label=""];
  "sha256:8390d42971a294b9bb13c898bc3451c3c1bc141bcd4299e13a56cd96ccbbd62a" -> "sha256:477f4fea4cf27dd6860703e4ac2fd7adb6d5870c5c66c4881376db87fb9946ca" [label=""];
  "sha256:477f4fea4cf27dd6860703e4ac2fd7adb6d5870c5c66c4881376db87fb9946ca" -> "sha256:0ff9ae062690ab841be5e5e501a86dde61f66e6e8823d190a3c417ca7b78184c" [label=""];
  "sha256:0ff9ae062690ab841be5e5e501a86dde61f66e6e8823d190a3c417ca7b78184c" -> "sha256:50ceddd09b156a13e5cadd96383cac0e596a83d6d607c20ba3a83d57e682ed38" [label=""];
  "sha256:50ceddd09b156a13e5cadd96383cac0e596a83d6d607c20ba3a83d57e682ed38" -> "sha256:671221f676ee8e2c2db54ff5072b92a692554cc7e28e7e28a779e7b4003ee6eb" [label=""];
  "sha256:671221f676ee8e2c2db54ff5072b92a692554cc7e28e7e28a779e7b4003ee6eb" -> "sha256:765eaeae38e2e01b150aeda3f25fc4252562e8c7e6ded9fe6f4eee040d8a5f9d" [label=""];
  "sha256:765eaeae38e2e01b150aeda3f25fc4252562e8c7e6ded9fe6f4eee040d8a5f9d" -> "sha256:127441352756d82ea37f6a72f0480acda73bc5bb230a62c7eb6dd9a1a54f4ade" [label=""];
  "sha256:127441352756d82ea37f6a72f0480acda73bc5bb230a62c7eb6dd9a1a54f4ade" -> "sha256:54719bf2e8548262559818a049dee0af07e1d7365eb0711c8c314337bd87ffc8" [label=""];
  "sha256:54719bf2e8548262559818a049dee0af07e1d7365eb0711c8c314337bd87ffc8" -> "sha256:44fd65c9a79e48fc1e7f11e457dfc530cd1a88db456b64dfe271058ebc045f39" [label=""];
  "sha256:3eb9cab616a20cbc451e926bf835351b3cc598540194e5fba09d08e64cd0bf78" -> "sha256:44fd65c9a79e48fc1e7f11e457dfc530cd1a88db456b64dfe271058ebc045f39" [label=""];
  "sha256:44fd65c9a79e48fc1e7f11e457dfc530cd1a88db456b64dfe271058ebc045f39" -> "sha256:24277e8958a786643a2d8edba41e4630ca12a67ff60f4554a43692f9becf5797" [label=""];
  "sha256:3eb9cab616a20cbc451e926bf835351b3cc598540194e5fba09d08e64cd0bf78" -> "sha256:24277e8958a786643a2d8edba41e4630ca12a67ff60f4554a43692f9becf5797" [label=""];
  "sha256:24277e8958a786643a2d8edba41e4630ca12a67ff60f4554a43692f9becf5797" -> "sha256:1306b93ecb6d006b8f1e33cc7c4f9d12fd44389c65a798326de227f22b4568c0" [label=""];
}

