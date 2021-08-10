[app/sources/199387086.Dockerfile]
digraph {
  "sha256:866f77d626926eef8c50c3c5f93f0770634530aaf139998e4a868eff44b4f62e" [label="local://context" shape="ellipse"];
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" [label="docker-image://docker.io/library/busybox:ubuntu-14.04" shape="ellipse"];
  "sha256:1979273e016f6c32f12b64d1176f682bc1911dd985a8e0ea9d209734d3640e5f" [label="copy{src=/guestbook_bin, dest=/app/guestbook}" shape="note"];
  "sha256:8c2bdcf1e6e913db9a1b4087af803f2474b2a59777d9611eef1fe0f9da75fe1a" [label="copy{src=/public/index.html, dest=/app/public/index.html}" shape="note"];
  "sha256:e57280823bd6a2b984662275151d082bf86fe5903dd9d35ee4708bba9a42f29c" [label="copy{src=/public/script.js, dest=/app/public/script.js}" shape="note"];
  "sha256:d5be7866cb1b99b5c54c2364b9e82cbfa7ebbae29495bdaf1eb2e46a13d0508c" [label="copy{src=/public/style.css, dest=/app/public/style.css}" shape="note"];
  "sha256:1322b2ce148294f3dbd9a36fa70b15dc201ab9d39611b1e9f727dc55bf0030a8" [label="mkdir{path=/app}" shape="note"];
  "sha256:c46f13742fe49bb6fc5f767beaeef54f83f94b0bf1f06691182217b41cb0434d" [label="sha256:c46f13742fe49bb6fc5f767beaeef54f83f94b0bf1f06691182217b41cb0434d" shape="plaintext"];
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" -> "sha256:1979273e016f6c32f12b64d1176f682bc1911dd985a8e0ea9d209734d3640e5f" [label=""];
  "sha256:866f77d626926eef8c50c3c5f93f0770634530aaf139998e4a868eff44b4f62e" -> "sha256:1979273e016f6c32f12b64d1176f682bc1911dd985a8e0ea9d209734d3640e5f" [label=""];
  "sha256:1979273e016f6c32f12b64d1176f682bc1911dd985a8e0ea9d209734d3640e5f" -> "sha256:8c2bdcf1e6e913db9a1b4087af803f2474b2a59777d9611eef1fe0f9da75fe1a" [label=""];
  "sha256:866f77d626926eef8c50c3c5f93f0770634530aaf139998e4a868eff44b4f62e" -> "sha256:8c2bdcf1e6e913db9a1b4087af803f2474b2a59777d9611eef1fe0f9da75fe1a" [label=""];
  "sha256:8c2bdcf1e6e913db9a1b4087af803f2474b2a59777d9611eef1fe0f9da75fe1a" -> "sha256:e57280823bd6a2b984662275151d082bf86fe5903dd9d35ee4708bba9a42f29c" [label=""];
  "sha256:866f77d626926eef8c50c3c5f93f0770634530aaf139998e4a868eff44b4f62e" -> "sha256:e57280823bd6a2b984662275151d082bf86fe5903dd9d35ee4708bba9a42f29c" [label=""];
  "sha256:e57280823bd6a2b984662275151d082bf86fe5903dd9d35ee4708bba9a42f29c" -> "sha256:d5be7866cb1b99b5c54c2364b9e82cbfa7ebbae29495bdaf1eb2e46a13d0508c" [label=""];
  "sha256:866f77d626926eef8c50c3c5f93f0770634530aaf139998e4a868eff44b4f62e" -> "sha256:d5be7866cb1b99b5c54c2364b9e82cbfa7ebbae29495bdaf1eb2e46a13d0508c" [label=""];
  "sha256:d5be7866cb1b99b5c54c2364b9e82cbfa7ebbae29495bdaf1eb2e46a13d0508c" -> "sha256:1322b2ce148294f3dbd9a36fa70b15dc201ab9d39611b1e9f727dc55bf0030a8" [label=""];
  "sha256:1322b2ce148294f3dbd9a36fa70b15dc201ab9d39611b1e9f727dc55bf0030a8" -> "sha256:c46f13742fe49bb6fc5f767beaeef54f83f94b0bf1f06691182217b41cb0434d" [label=""];
}

