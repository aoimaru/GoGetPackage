[app/sources/286865578.Dockerfile]
digraph {
  "sha256:7d34226d7a8fa2e9af891202bae147e7c29f5a7ba62a0e682be4996a70a36937" [label="local://context" shape="ellipse"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:0bbc3b69db6d2297277df068a59b7d1158633ae293d5145a6a2bdd71983cd1c7" [label="/bin/sh -c npm install -g nginx" shape="box"];
  "sha256:97457a3ebe85f61e4c63dfbd117f049d0dee9b66613ef51e4a1cb80a53fc9065" [label="/bin/sh -c mkdir /webapp" shape="box"];
  "sha256:e1b987e1c4483f568aea7133405d937f6df4b9921c5cd056f0ca653294a429e7" [label="mkdir{path=/webapp}" shape="note"];
  "sha256:cf32d33601da8d9c6812cbd17f1349f8ce9e839f5b9e745ff9e06fdfe29aabd8" [label="copy{src=/package.json, dest=/webapp/package.json}" shape="note"];
  "sha256:eda0ca3fe05e589520c5e98004efc13be1cc0a37ce11c36e906490d3f131414a" [label="/bin/sh -c npm install --unsafe-perm" shape="box"];
  "sha256:2c5b6b2f6e84fd4b10c29f8d1544964906051b5f03fa3b0e256d64abba6371a7" [label="copy{src=/, dest=/webapp/}" shape="note"];
  "sha256:faf97621b411830ce944247ff7ea0bec2a51270734724da4048bca04431ce3e1" [label="sha256:faf97621b411830ce944247ff7ea0bec2a51270734724da4048bca04431ce3e1" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:0bbc3b69db6d2297277df068a59b7d1158633ae293d5145a6a2bdd71983cd1c7" [label=""];
  "sha256:0bbc3b69db6d2297277df068a59b7d1158633ae293d5145a6a2bdd71983cd1c7" -> "sha256:97457a3ebe85f61e4c63dfbd117f049d0dee9b66613ef51e4a1cb80a53fc9065" [label=""];
  "sha256:97457a3ebe85f61e4c63dfbd117f049d0dee9b66613ef51e4a1cb80a53fc9065" -> "sha256:e1b987e1c4483f568aea7133405d937f6df4b9921c5cd056f0ca653294a429e7" [label=""];
  "sha256:e1b987e1c4483f568aea7133405d937f6df4b9921c5cd056f0ca653294a429e7" -> "sha256:cf32d33601da8d9c6812cbd17f1349f8ce9e839f5b9e745ff9e06fdfe29aabd8" [label=""];
  "sha256:7d34226d7a8fa2e9af891202bae147e7c29f5a7ba62a0e682be4996a70a36937" -> "sha256:cf32d33601da8d9c6812cbd17f1349f8ce9e839f5b9e745ff9e06fdfe29aabd8" [label=""];
  "sha256:cf32d33601da8d9c6812cbd17f1349f8ce9e839f5b9e745ff9e06fdfe29aabd8" -> "sha256:eda0ca3fe05e589520c5e98004efc13be1cc0a37ce11c36e906490d3f131414a" [label=""];
  "sha256:eda0ca3fe05e589520c5e98004efc13be1cc0a37ce11c36e906490d3f131414a" -> "sha256:2c5b6b2f6e84fd4b10c29f8d1544964906051b5f03fa3b0e256d64abba6371a7" [label=""];
  "sha256:7d34226d7a8fa2e9af891202bae147e7c29f5a7ba62a0e682be4996a70a36937" -> "sha256:2c5b6b2f6e84fd4b10c29f8d1544964906051b5f03fa3b0e256d64abba6371a7" [label=""];
  "sha256:2c5b6b2f6e84fd4b10c29f8d1544964906051b5f03fa3b0e256d64abba6371a7" -> "sha256:faf97621b411830ce944247ff7ea0bec2a51270734724da4048bca04431ce3e1" [label=""];
}

