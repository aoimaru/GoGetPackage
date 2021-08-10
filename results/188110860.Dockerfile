[app/sources/188110860.Dockerfile]
digraph {
  "sha256:427f35ce4a9d513c24ddaea3b2f3263e0d6e3a39978b2751c74e13dac2c93adb" [label="docker-image://docker.io/mhart/alpine-node:latest" shape="ellipse"];
  "sha256:e3b8dad5315c62f370ed0fb1b4c9a15344cdf9d27897c482ca2f27b46442d05b" [label="mkdir{path=/app}" shape="note"];
  "sha256:d8544a7e87ecd305797f9598026239462c0f52331735fd96f9570fe49fd917f8" [label="/bin/sh -c apk update" shape="box"];
  "sha256:76f5d40d4b925154ef496310aea7bf0ef891086f7531f9217934a1236ab00afd" [label="local://context" shape="ellipse"];
  "sha256:f8a4b952e64caf4eba95a527a4c63874541cec3f393b02d5f9eda828f3d46364" [label="copy{src=/wait-for.sh, dest=/app/}" shape="note"];
  "sha256:121e117938b5c4927d0fe1db41dcf5c04c00f49abd35f4618ff3742a46c1a3ad" [label="/bin/sh -c chmod +x wait-for.sh" shape="box"];
  "sha256:db7e0809bec3d2cd673b3b03ffd1e0189dae5e09dec4aeb9a450b25c07e79dc8" [label="copy{src=/package.json, dest=/app/},copy{src=/yarn.lock, dest=/app/}" shape="note"];
  "sha256:6e25bf6ee045c9cac0bed795a79cbd6e9de2ce19a1a5f5787a8208ba15966207" [label="/bin/sh -c yarn install --emoji" shape="box"];
  "sha256:726b5e88966ebb5dd97b63fd5c5a945ddce081d4fde8ff67670e1a56e7a25441" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:33676e23334a6b849e4a3800e811b6fe33e4c2b426065adf921f0c00cf121e10" [label="sha256:33676e23334a6b849e4a3800e811b6fe33e4c2b426065adf921f0c00cf121e10" shape="plaintext"];
  "sha256:427f35ce4a9d513c24ddaea3b2f3263e0d6e3a39978b2751c74e13dac2c93adb" -> "sha256:e3b8dad5315c62f370ed0fb1b4c9a15344cdf9d27897c482ca2f27b46442d05b" [label=""];
  "sha256:e3b8dad5315c62f370ed0fb1b4c9a15344cdf9d27897c482ca2f27b46442d05b" -> "sha256:d8544a7e87ecd305797f9598026239462c0f52331735fd96f9570fe49fd917f8" [label=""];
  "sha256:d8544a7e87ecd305797f9598026239462c0f52331735fd96f9570fe49fd917f8" -> "sha256:f8a4b952e64caf4eba95a527a4c63874541cec3f393b02d5f9eda828f3d46364" [label=""];
  "sha256:76f5d40d4b925154ef496310aea7bf0ef891086f7531f9217934a1236ab00afd" -> "sha256:f8a4b952e64caf4eba95a527a4c63874541cec3f393b02d5f9eda828f3d46364" [label=""];
  "sha256:f8a4b952e64caf4eba95a527a4c63874541cec3f393b02d5f9eda828f3d46364" -> "sha256:121e117938b5c4927d0fe1db41dcf5c04c00f49abd35f4618ff3742a46c1a3ad" [label=""];
  "sha256:121e117938b5c4927d0fe1db41dcf5c04c00f49abd35f4618ff3742a46c1a3ad" -> "sha256:db7e0809bec3d2cd673b3b03ffd1e0189dae5e09dec4aeb9a450b25c07e79dc8" [label=""];
  "sha256:76f5d40d4b925154ef496310aea7bf0ef891086f7531f9217934a1236ab00afd" -> "sha256:db7e0809bec3d2cd673b3b03ffd1e0189dae5e09dec4aeb9a450b25c07e79dc8" [label=""];
  "sha256:db7e0809bec3d2cd673b3b03ffd1e0189dae5e09dec4aeb9a450b25c07e79dc8" -> "sha256:6e25bf6ee045c9cac0bed795a79cbd6e9de2ce19a1a5f5787a8208ba15966207" [label=""];
  "sha256:6e25bf6ee045c9cac0bed795a79cbd6e9de2ce19a1a5f5787a8208ba15966207" -> "sha256:726b5e88966ebb5dd97b63fd5c5a945ddce081d4fde8ff67670e1a56e7a25441" [label=""];
  "sha256:76f5d40d4b925154ef496310aea7bf0ef891086f7531f9217934a1236ab00afd" -> "sha256:726b5e88966ebb5dd97b63fd5c5a945ddce081d4fde8ff67670e1a56e7a25441" [label=""];
  "sha256:726b5e88966ebb5dd97b63fd5c5a945ddce081d4fde8ff67670e1a56e7a25441" -> "sha256:33676e23334a6b849e4a3800e811b6fe33e4c2b426065adf921f0c00cf121e10" [label=""];
}

