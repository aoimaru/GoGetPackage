[app/sources/342805089.Dockerfile]
digraph {
  "sha256:86004eeb3da6b3600d5180df89549c2d9ff38f475302c4797aa9560d8150bfe0" [label="docker-image://docker.io/library/node:carbon-alpine" shape="ellipse"];
  "sha256:f72192e8bbdc4e92680690dcb0751744b325721a4df7ef8b9e28146e0700274c" [label="/bin/sh -c mkdir -p /yamot/controller" shape="box"];
  "sha256:cd47a0cd9c906338c3af56d1792bb969f73691c3a18b001f6fb23cd0035b4849" [label="mkdir{path=/yamot/controller}" shape="note"];
  "sha256:cfa3fb601bdf6ad4ba75fc4fb8bd59e1cd8ccf640546498d9d34108706c1339f" [label="local://context" shape="ellipse"];
  "sha256:cdac7187467d128152adbea94e44e695a9cdcfd334fee3476ab1bf0650c84951" [label="copy{src=/controller.js, dest=/yamot/controller/}" shape="note"];
  "sha256:6c66a728e271b0dd22153747219749645d2eef1f5c5308919ef17f0162fc4992" [label="copy{src=/package.json, dest=/yamot/controller/}" shape="note"];
  "sha256:de58225b3e32fd8c03d421503193a59d71d77fdd6fad8b4c137ca9f6dc442d43" [label="copy{src=/static, dest=/yamot/controller/static}" shape="note"];
  "sha256:eb1d9964ec06b7402216601cdea31d8d04cf6f6f399fe403574fd27f951cf3f5" [label="/bin/sh -c npm i" shape="box"];
  "sha256:ca3d72928351c2ece866de9ef37820b45a508b311dd0938711fb90bd005866d6" [label="sha256:ca3d72928351c2ece866de9ef37820b45a508b311dd0938711fb90bd005866d6" shape="plaintext"];
  "sha256:86004eeb3da6b3600d5180df89549c2d9ff38f475302c4797aa9560d8150bfe0" -> "sha256:f72192e8bbdc4e92680690dcb0751744b325721a4df7ef8b9e28146e0700274c" [label=""];
  "sha256:f72192e8bbdc4e92680690dcb0751744b325721a4df7ef8b9e28146e0700274c" -> "sha256:cd47a0cd9c906338c3af56d1792bb969f73691c3a18b001f6fb23cd0035b4849" [label=""];
  "sha256:cd47a0cd9c906338c3af56d1792bb969f73691c3a18b001f6fb23cd0035b4849" -> "sha256:cdac7187467d128152adbea94e44e695a9cdcfd334fee3476ab1bf0650c84951" [label=""];
  "sha256:cfa3fb601bdf6ad4ba75fc4fb8bd59e1cd8ccf640546498d9d34108706c1339f" -> "sha256:cdac7187467d128152adbea94e44e695a9cdcfd334fee3476ab1bf0650c84951" [label=""];
  "sha256:cdac7187467d128152adbea94e44e695a9cdcfd334fee3476ab1bf0650c84951" -> "sha256:6c66a728e271b0dd22153747219749645d2eef1f5c5308919ef17f0162fc4992" [label=""];
  "sha256:cfa3fb601bdf6ad4ba75fc4fb8bd59e1cd8ccf640546498d9d34108706c1339f" -> "sha256:6c66a728e271b0dd22153747219749645d2eef1f5c5308919ef17f0162fc4992" [label=""];
  "sha256:6c66a728e271b0dd22153747219749645d2eef1f5c5308919ef17f0162fc4992" -> "sha256:de58225b3e32fd8c03d421503193a59d71d77fdd6fad8b4c137ca9f6dc442d43" [label=""];
  "sha256:cfa3fb601bdf6ad4ba75fc4fb8bd59e1cd8ccf640546498d9d34108706c1339f" -> "sha256:de58225b3e32fd8c03d421503193a59d71d77fdd6fad8b4c137ca9f6dc442d43" [label=""];
  "sha256:de58225b3e32fd8c03d421503193a59d71d77fdd6fad8b4c137ca9f6dc442d43" -> "sha256:eb1d9964ec06b7402216601cdea31d8d04cf6f6f399fe403574fd27f951cf3f5" [label=""];
  "sha256:eb1d9964ec06b7402216601cdea31d8d04cf6f6f399fe403574fd27f951cf3f5" -> "sha256:ca3d72928351c2ece866de9ef37820b45a508b311dd0938711fb90bd005866d6" [label=""];
}

