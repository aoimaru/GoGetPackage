[app/sources/436241839.Dockerfile]
digraph {
  "sha256:1f9c8d80405b463a3b523c37c5c9dea2373b14b56c6942199bfb81a4b784c088" [label="local://context" shape="ellipse"];
  "sha256:a8b5395be2a13393b8093e94d2841ced22651d01a2ed8670727e777db17f0153" [label="docker-image://docker.io/library/node:10.16.0-alpine" shape="ellipse"];
  "sha256:9820b05021ee26e4b67147c272809ed1562fd081b36fa587f1f4c88dc70119df" [label="mkdir{path=/app}" shape="note"];
  "sha256:74331ed8f2220adc0daa95c16be82f540fe9bc0d4def0e4a3755acd3b4bbdddb" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:f740527c51fa008b839567a112186405c249f85158822c0ffa9fe9214e96ecb0" [label="copy{src=/package-lock.json, dest=/app/}" shape="note"];
  "sha256:a926c851aa8c69080c65ecf1aafc44812ccc6d8d52e8aa5d71b67a9787774b7c" [label="/bin/sh -c npm ci" shape="box"];
  "sha256:29ab1292627fa1a404c3c10bfa77ae0afc99a41a00efffa6cb1710fdf443be3a" [label="copy{src=/.env.example, dest=/app/.env}" shape="note"];
  "sha256:5f86aec9b4ce7d42f88a0499d4ce8b4ce4ed04b5bab7d6e2365bc97f172b3c77" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:76fa50cdc809f8287aec01ca721e4b5c72f05847874577bf66149089f4e81a65" [label="/bin/sh -c npm run type-check" shape="box"];
  "sha256:eca3641fd40164325769aed7cd25cadd9e6e16a38de55d3654953e81ba0d4e68" [label="/bin/sh -c npm run lint" shape="box"];
  "sha256:edd451ec730a261796af4104ce9a9290f9723f6e0159185c64dfa247f800ab82" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:c19c46ef6315572a95e32b9069128ae4ce24d3153727db25bae70d80fc2bbe5f" [label="docker-image://docker.io/library/nginx:1.17.0-alpine" shape="ellipse"];
  "sha256:1cbf9b9e90aba3f08c26b2b8a8d970d05619f625960289932edbf5d811bfa96f" [label="copy{src=/app/build, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:882d975d92c4a959ed819d0e8b05e00ed362cee08b5a7aa66b532beaca7d47d7" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:14f6eedc5a4cde48eb074def443983bbf310725cf08c6e8b3556d64d53c51c35" [label="sha256:14f6eedc5a4cde48eb074def443983bbf310725cf08c6e8b3556d64d53c51c35" shape="plaintext"];
  "sha256:a8b5395be2a13393b8093e94d2841ced22651d01a2ed8670727e777db17f0153" -> "sha256:9820b05021ee26e4b67147c272809ed1562fd081b36fa587f1f4c88dc70119df" [label=""];
  "sha256:9820b05021ee26e4b67147c272809ed1562fd081b36fa587f1f4c88dc70119df" -> "sha256:74331ed8f2220adc0daa95c16be82f540fe9bc0d4def0e4a3755acd3b4bbdddb" [label=""];
  "sha256:1f9c8d80405b463a3b523c37c5c9dea2373b14b56c6942199bfb81a4b784c088" -> "sha256:74331ed8f2220adc0daa95c16be82f540fe9bc0d4def0e4a3755acd3b4bbdddb" [label=""];
  "sha256:74331ed8f2220adc0daa95c16be82f540fe9bc0d4def0e4a3755acd3b4bbdddb" -> "sha256:f740527c51fa008b839567a112186405c249f85158822c0ffa9fe9214e96ecb0" [label=""];
  "sha256:1f9c8d80405b463a3b523c37c5c9dea2373b14b56c6942199bfb81a4b784c088" -> "sha256:f740527c51fa008b839567a112186405c249f85158822c0ffa9fe9214e96ecb0" [label=""];
  "sha256:f740527c51fa008b839567a112186405c249f85158822c0ffa9fe9214e96ecb0" -> "sha256:a926c851aa8c69080c65ecf1aafc44812ccc6d8d52e8aa5d71b67a9787774b7c" [label=""];
  "sha256:a926c851aa8c69080c65ecf1aafc44812ccc6d8d52e8aa5d71b67a9787774b7c" -> "sha256:29ab1292627fa1a404c3c10bfa77ae0afc99a41a00efffa6cb1710fdf443be3a" [label=""];
  "sha256:1f9c8d80405b463a3b523c37c5c9dea2373b14b56c6942199bfb81a4b784c088" -> "sha256:29ab1292627fa1a404c3c10bfa77ae0afc99a41a00efffa6cb1710fdf443be3a" [label=""];
  "sha256:29ab1292627fa1a404c3c10bfa77ae0afc99a41a00efffa6cb1710fdf443be3a" -> "sha256:5f86aec9b4ce7d42f88a0499d4ce8b4ce4ed04b5bab7d6e2365bc97f172b3c77" [label=""];
  "sha256:1f9c8d80405b463a3b523c37c5c9dea2373b14b56c6942199bfb81a4b784c088" -> "sha256:5f86aec9b4ce7d42f88a0499d4ce8b4ce4ed04b5bab7d6e2365bc97f172b3c77" [label=""];
  "sha256:5f86aec9b4ce7d42f88a0499d4ce8b4ce4ed04b5bab7d6e2365bc97f172b3c77" -> "sha256:76fa50cdc809f8287aec01ca721e4b5c72f05847874577bf66149089f4e81a65" [label=""];
  "sha256:76fa50cdc809f8287aec01ca721e4b5c72f05847874577bf66149089f4e81a65" -> "sha256:eca3641fd40164325769aed7cd25cadd9e6e16a38de55d3654953e81ba0d4e68" [label=""];
  "sha256:eca3641fd40164325769aed7cd25cadd9e6e16a38de55d3654953e81ba0d4e68" -> "sha256:edd451ec730a261796af4104ce9a9290f9723f6e0159185c64dfa247f800ab82" [label=""];
  "sha256:c19c46ef6315572a95e32b9069128ae4ce24d3153727db25bae70d80fc2bbe5f" -> "sha256:1cbf9b9e90aba3f08c26b2b8a8d970d05619f625960289932edbf5d811bfa96f" [label=""];
  "sha256:edd451ec730a261796af4104ce9a9290f9723f6e0159185c64dfa247f800ab82" -> "sha256:1cbf9b9e90aba3f08c26b2b8a8d970d05619f625960289932edbf5d811bfa96f" [label=""];
  "sha256:1cbf9b9e90aba3f08c26b2b8a8d970d05619f625960289932edbf5d811bfa96f" -> "sha256:882d975d92c4a959ed819d0e8b05e00ed362cee08b5a7aa66b532beaca7d47d7" [label=""];
  "sha256:1f9c8d80405b463a3b523c37c5c9dea2373b14b56c6942199bfb81a4b784c088" -> "sha256:882d975d92c4a959ed819d0e8b05e00ed362cee08b5a7aa66b532beaca7d47d7" [label=""];
  "sha256:882d975d92c4a959ed819d0e8b05e00ed362cee08b5a7aa66b532beaca7d47d7" -> "sha256:14f6eedc5a4cde48eb074def443983bbf310725cf08c6e8b3556d64d53c51c35" [label=""];
}

