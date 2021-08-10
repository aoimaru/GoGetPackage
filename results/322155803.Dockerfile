[app/sources/322155803.Dockerfile]
digraph {
  "sha256:b5cbf969b5e0a093811fd7f08740e8842400f25c4c5a625cd9e6a8e0fbde2203" [label="docker-image://docker.io/library/node:8.9" shape="ellipse"];
  "sha256:9ff55661b0a5041c654e4e26a55a629f9cef41a53808d930cc015c6abaa9960f" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:bd2e71a7407174d2ea548321fbb90291e84934c2e783c95b05749812235a126a" [label="local://context" shape="ellipse"];
  "sha256:d08650f875d6d34160f91455dff0f7f3f82048f68eb3b367afb881bde6b25d27" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:9e6d382632163e75f5c8c01fc92d0e7c55df7c7a9365fbf12f7ad675917bbc3f" [label="/bin/sh -c npm install" shape="box"];
  "sha256:140560b777762f0a1be7750a4da6011f05c2d282a59d37f3d9edb219dda85fab" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:e351dc06780cfdea8b902181067d13bdc70329ff240e6d7c0d836a0d537de0a5" [label="/bin/sh -c npm run build:prod" shape="box"];
  "sha256:8e1beec418db61e746cc64a2dcc7c86524df7b873abaeb150f7762078d14562b" [label="docker-image://docker.io/library/nginx:1.12" shape="ellipse"];
  "sha256:0816eddf68adb008812bbd124199cf7d63028003f25661454f98d289c0992fe2" [label="copy{src=/nginx/default.conf, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:5ff451d2931296266f55587e00b9bcf04c3e612953e21e416abdf5633c84761e" [label="/bin/sh -c rm -rf /usr/share/nginx/html/*" shape="box"];
  "sha256:2c0bbefe536aa20c6098bf677d755367e8f67a8b3df20e7200cf9b2c277d0099" [label="copy{src=/usr/src/app/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:44c7ea3ce74e83d1055cbe3e8c63dfcd3c868094afebdae28f7ba0cd4586a1ac" [label="sha256:44c7ea3ce74e83d1055cbe3e8c63dfcd3c868094afebdae28f7ba0cd4586a1ac" shape="plaintext"];
  "sha256:b5cbf969b5e0a093811fd7f08740e8842400f25c4c5a625cd9e6a8e0fbde2203" -> "sha256:9ff55661b0a5041c654e4e26a55a629f9cef41a53808d930cc015c6abaa9960f" [label=""];
  "sha256:9ff55661b0a5041c654e4e26a55a629f9cef41a53808d930cc015c6abaa9960f" -> "sha256:d08650f875d6d34160f91455dff0f7f3f82048f68eb3b367afb881bde6b25d27" [label=""];
  "sha256:bd2e71a7407174d2ea548321fbb90291e84934c2e783c95b05749812235a126a" -> "sha256:d08650f875d6d34160f91455dff0f7f3f82048f68eb3b367afb881bde6b25d27" [label=""];
  "sha256:d08650f875d6d34160f91455dff0f7f3f82048f68eb3b367afb881bde6b25d27" -> "sha256:9e6d382632163e75f5c8c01fc92d0e7c55df7c7a9365fbf12f7ad675917bbc3f" [label=""];
  "sha256:9e6d382632163e75f5c8c01fc92d0e7c55df7c7a9365fbf12f7ad675917bbc3f" -> "sha256:140560b777762f0a1be7750a4da6011f05c2d282a59d37f3d9edb219dda85fab" [label=""];
  "sha256:bd2e71a7407174d2ea548321fbb90291e84934c2e783c95b05749812235a126a" -> "sha256:140560b777762f0a1be7750a4da6011f05c2d282a59d37f3d9edb219dda85fab" [label=""];
  "sha256:140560b777762f0a1be7750a4da6011f05c2d282a59d37f3d9edb219dda85fab" -> "sha256:e351dc06780cfdea8b902181067d13bdc70329ff240e6d7c0d836a0d537de0a5" [label=""];
  "sha256:8e1beec418db61e746cc64a2dcc7c86524df7b873abaeb150f7762078d14562b" -> "sha256:0816eddf68adb008812bbd124199cf7d63028003f25661454f98d289c0992fe2" [label=""];
  "sha256:bd2e71a7407174d2ea548321fbb90291e84934c2e783c95b05749812235a126a" -> "sha256:0816eddf68adb008812bbd124199cf7d63028003f25661454f98d289c0992fe2" [label=""];
  "sha256:0816eddf68adb008812bbd124199cf7d63028003f25661454f98d289c0992fe2" -> "sha256:5ff451d2931296266f55587e00b9bcf04c3e612953e21e416abdf5633c84761e" [label=""];
  "sha256:5ff451d2931296266f55587e00b9bcf04c3e612953e21e416abdf5633c84761e" -> "sha256:2c0bbefe536aa20c6098bf677d755367e8f67a8b3df20e7200cf9b2c277d0099" [label=""];
  "sha256:e351dc06780cfdea8b902181067d13bdc70329ff240e6d7c0d836a0d537de0a5" -> "sha256:2c0bbefe536aa20c6098bf677d755367e8f67a8b3df20e7200cf9b2c277d0099" [label=""];
  "sha256:2c0bbefe536aa20c6098bf677d755367e8f67a8b3df20e7200cf9b2c277d0099" -> "sha256:44c7ea3ce74e83d1055cbe3e8c63dfcd3c868094afebdae28f7ba0cd4586a1ac" [label=""];
}

