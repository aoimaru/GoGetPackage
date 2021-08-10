[app/sources/246109198.Dockerfile]
digraph {
  "sha256:8fdabc5b86d4fb92a772008f6de85b49117cd73f073e97ecfafe1a14deadb143" [label="docker-image://docker.io/bitnami/minideb:stretch@sha256:940f4bc821ab9d7d128a3e8bdc5644d16474e70270fe1af7e1095adc92882feb" shape="ellipse"];
  "sha256:c312ab03c1264837586a423390c925f4ad4c078983cabff919c8723e6764da07" [label="/bin/sh -c apt-get update && apt-get -y install git" shape="box"];
  "sha256:274f716e8eb8910591c443eb0b64cbe847dddc3ee475233685fc2caac8c2a27e" [label="/bin/sh -c git clone https://github.com/BayLibre/lava-healthchecks-binary.git" shape="box"];
  "sha256:a545a405eb70e4550b2cf39af36ab0c54cbbe8640d088cff02e344e4543129a1" [label="docker-image://docker.io/library/nginx:mainline-alpine" shape="ellipse"];
  "sha256:5186f31a00ccc0a550bc4132414b9627957dff3245599497e3b5d170f0f931b1" [label="local://context" shape="ellipse"];
  "sha256:49f34c548cdc48a12ab62729b2070bbf1c31b327e86bd25356b5f1d51d42eeec" [label="copy{src=/port.conf, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:18308315f96552d948e207d1a630f9027b87d45923f9b381a77fa4c24e13c732" [label="copy{src=/lava-healthchecks-binary/mainline, dest=/usr/share/nginx/html/mainline/}" shape="note"];
  "sha256:6dae6f88c4dd9123e82c810ec89503d87e422b11246ca0c72cf4b3f09e080921" [label="copy{src=/lava-healthchecks-binary/images, dest=/usr/share/nginx/html/images/}" shape="note"];
  "sha256:6f1a410bb358230649c2d31ac5da226bd546925ffe67337596824d85c2ac7211" [label="copy{src=/lava-healthchecks-binary/next, dest=/usr/share/nginx/html/next/}" shape="note"];
  "sha256:221f6e0574672880657bae7b36e2729d62d3472ba2e604078f26fcf659fa81ef" [label="copy{src=/lava-healthchecks-binary/stable, dest=/usr/share/nginx/html/stable/}" shape="note"];
  "sha256:ba9393cf2c9efd26d08e41ddeeda77bc2debab276055998aaeecdd07ad6f29f0" [label="sha256:ba9393cf2c9efd26d08e41ddeeda77bc2debab276055998aaeecdd07ad6f29f0" shape="plaintext"];
  "sha256:8fdabc5b86d4fb92a772008f6de85b49117cd73f073e97ecfafe1a14deadb143" -> "sha256:c312ab03c1264837586a423390c925f4ad4c078983cabff919c8723e6764da07" [label=""];
  "sha256:c312ab03c1264837586a423390c925f4ad4c078983cabff919c8723e6764da07" -> "sha256:274f716e8eb8910591c443eb0b64cbe847dddc3ee475233685fc2caac8c2a27e" [label=""];
  "sha256:a545a405eb70e4550b2cf39af36ab0c54cbbe8640d088cff02e344e4543129a1" -> "sha256:49f34c548cdc48a12ab62729b2070bbf1c31b327e86bd25356b5f1d51d42eeec" [label=""];
  "sha256:5186f31a00ccc0a550bc4132414b9627957dff3245599497e3b5d170f0f931b1" -> "sha256:49f34c548cdc48a12ab62729b2070bbf1c31b327e86bd25356b5f1d51d42eeec" [label=""];
  "sha256:49f34c548cdc48a12ab62729b2070bbf1c31b327e86bd25356b5f1d51d42eeec" -> "sha256:18308315f96552d948e207d1a630f9027b87d45923f9b381a77fa4c24e13c732" [label=""];
  "sha256:274f716e8eb8910591c443eb0b64cbe847dddc3ee475233685fc2caac8c2a27e" -> "sha256:18308315f96552d948e207d1a630f9027b87d45923f9b381a77fa4c24e13c732" [label=""];
  "sha256:18308315f96552d948e207d1a630f9027b87d45923f9b381a77fa4c24e13c732" -> "sha256:6dae6f88c4dd9123e82c810ec89503d87e422b11246ca0c72cf4b3f09e080921" [label=""];
  "sha256:274f716e8eb8910591c443eb0b64cbe847dddc3ee475233685fc2caac8c2a27e" -> "sha256:6dae6f88c4dd9123e82c810ec89503d87e422b11246ca0c72cf4b3f09e080921" [label=""];
  "sha256:6dae6f88c4dd9123e82c810ec89503d87e422b11246ca0c72cf4b3f09e080921" -> "sha256:6f1a410bb358230649c2d31ac5da226bd546925ffe67337596824d85c2ac7211" [label=""];
  "sha256:274f716e8eb8910591c443eb0b64cbe847dddc3ee475233685fc2caac8c2a27e" -> "sha256:6f1a410bb358230649c2d31ac5da226bd546925ffe67337596824d85c2ac7211" [label=""];
  "sha256:6f1a410bb358230649c2d31ac5da226bd546925ffe67337596824d85c2ac7211" -> "sha256:221f6e0574672880657bae7b36e2729d62d3472ba2e604078f26fcf659fa81ef" [label=""];
  "sha256:274f716e8eb8910591c443eb0b64cbe847dddc3ee475233685fc2caac8c2a27e" -> "sha256:221f6e0574672880657bae7b36e2729d62d3472ba2e604078f26fcf659fa81ef" [label=""];
  "sha256:221f6e0574672880657bae7b36e2729d62d3472ba2e604078f26fcf659fa81ef" -> "sha256:ba9393cf2c9efd26d08e41ddeeda77bc2debab276055998aaeecdd07ad6f29f0" [label=""];
}

