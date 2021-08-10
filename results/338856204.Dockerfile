[app/sources/338856204.Dockerfile]
digraph {
  "sha256:6eb571a8253333b713581ef9addcb7cdf50fa8e30e123a1587248fdd742ca749" [label="docker-image://docker.io/keymetrics/pm2:latest-stretch" shape="ellipse"];
  "sha256:8137df644531eec9afb7ac9bf5bd15bf336bbd8c26bdff946e11a4581d8239cc" [label="local://context" shape="ellipse"];
  "sha256:407ce17d391c63c7789678c2b690347f756022d9cda8f8b803e25764e2e66685" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:77fce862d0a99004a84ca2180e4376ee0e86ade3a1b78a9c3dc3c702ebe7fe47" [label="copy{src=/package.json, dest=/}" shape="note"];
  "sha256:5f9d0b2d73709bf980b5e889d266b1bf54a223ab2734f371eecc2f082ad3fe46" [label="copy{src=/pm2.json, dest=/}" shape="note"];
  "sha256:04ba52efad2141d886944b61c53636e02632ad598674af984103e6ba20fc65ab" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:513babad0ec978c8fd2708b4873dc85f0acf96280d8a937cd1feb96d4e950ff5" [label="/bin/sh -c ls -al -R" shape="box"];
  "sha256:48b5371ee7788d459fda39e3299b657ee0d421a7b756985c29aa117b6fb5d67b" [label="sha256:48b5371ee7788d459fda39e3299b657ee0d421a7b756985c29aa117b6fb5d67b" shape="plaintext"];
  "sha256:6eb571a8253333b713581ef9addcb7cdf50fa8e30e123a1587248fdd742ca749" -> "sha256:407ce17d391c63c7789678c2b690347f756022d9cda8f8b803e25764e2e66685" [label=""];
  "sha256:8137df644531eec9afb7ac9bf5bd15bf336bbd8c26bdff946e11a4581d8239cc" -> "sha256:407ce17d391c63c7789678c2b690347f756022d9cda8f8b803e25764e2e66685" [label=""];
  "sha256:407ce17d391c63c7789678c2b690347f756022d9cda8f8b803e25764e2e66685" -> "sha256:77fce862d0a99004a84ca2180e4376ee0e86ade3a1b78a9c3dc3c702ebe7fe47" [label=""];
  "sha256:8137df644531eec9afb7ac9bf5bd15bf336bbd8c26bdff946e11a4581d8239cc" -> "sha256:77fce862d0a99004a84ca2180e4376ee0e86ade3a1b78a9c3dc3c702ebe7fe47" [label=""];
  "sha256:77fce862d0a99004a84ca2180e4376ee0e86ade3a1b78a9c3dc3c702ebe7fe47" -> "sha256:5f9d0b2d73709bf980b5e889d266b1bf54a223ab2734f371eecc2f082ad3fe46" [label=""];
  "sha256:8137df644531eec9afb7ac9bf5bd15bf336bbd8c26bdff946e11a4581d8239cc" -> "sha256:5f9d0b2d73709bf980b5e889d266b1bf54a223ab2734f371eecc2f082ad3fe46" [label=""];
  "sha256:5f9d0b2d73709bf980b5e889d266b1bf54a223ab2734f371eecc2f082ad3fe46" -> "sha256:04ba52efad2141d886944b61c53636e02632ad598674af984103e6ba20fc65ab" [label=""];
  "sha256:04ba52efad2141d886944b61c53636e02632ad598674af984103e6ba20fc65ab" -> "sha256:513babad0ec978c8fd2708b4873dc85f0acf96280d8a937cd1feb96d4e950ff5" [label=""];
  "sha256:513babad0ec978c8fd2708b4873dc85f0acf96280d8a937cd1feb96d4e950ff5" -> "sha256:48b5371ee7788d459fda39e3299b657ee0d421a7b756985c29aa117b6fb5d67b" [label=""];
}

