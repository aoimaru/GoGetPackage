[app/sources/291062642.Dockerfile]
digraph {
  "sha256:649d9fa643a97f782fd19fb3066f1e95b80cafeb6836a2d53146babae956d196" [label="local://context" shape="ellipse"];
  "sha256:ecd4ab30cee9a1e2179ac0a85fbc52b1ae98fa3854aa8249bbec6a82e6855dd6" [label="docker-image://docker.io/resin/raspberrypi3-alpine-node:slim" shape="ellipse"];
  "sha256:f411c50eed33372941427015ea43ff07d73178dfd9cccde2e67b718e0755a426" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:09149d686d89e16fe19deabf162da2e055b2bc30302f36dea877128727333bf4" [label="copy{src=/package.json, dest=/usr/src/app/},copy{src=/package-lock.json, dest=/usr/src/app/}" shape="note"];
  "sha256:3fb385dd4b6f4c6c04c55cc62e63c52e82918d3682e78138bf4bab28f4b236c6" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:e335b37dc36c1533fc8a83b8f85bb26c7e0ea6ff3979b57fb2154a3361fbe4ee" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:ba3d48257b18e00878f88bef7e4e445753823f86c5f3b0af09416ea6c4a2eb29" [label="sha256:ba3d48257b18e00878f88bef7e4e445753823f86c5f3b0af09416ea6c4a2eb29" shape="plaintext"];
  "sha256:ecd4ab30cee9a1e2179ac0a85fbc52b1ae98fa3854aa8249bbec6a82e6855dd6" -> "sha256:f411c50eed33372941427015ea43ff07d73178dfd9cccde2e67b718e0755a426" [label=""];
  "sha256:f411c50eed33372941427015ea43ff07d73178dfd9cccde2e67b718e0755a426" -> "sha256:09149d686d89e16fe19deabf162da2e055b2bc30302f36dea877128727333bf4" [label=""];
  "sha256:649d9fa643a97f782fd19fb3066f1e95b80cafeb6836a2d53146babae956d196" -> "sha256:09149d686d89e16fe19deabf162da2e055b2bc30302f36dea877128727333bf4" [label=""];
  "sha256:09149d686d89e16fe19deabf162da2e055b2bc30302f36dea877128727333bf4" -> "sha256:3fb385dd4b6f4c6c04c55cc62e63c52e82918d3682e78138bf4bab28f4b236c6" [label=""];
  "sha256:3fb385dd4b6f4c6c04c55cc62e63c52e82918d3682e78138bf4bab28f4b236c6" -> "sha256:e335b37dc36c1533fc8a83b8f85bb26c7e0ea6ff3979b57fb2154a3361fbe4ee" [label=""];
  "sha256:649d9fa643a97f782fd19fb3066f1e95b80cafeb6836a2d53146babae956d196" -> "sha256:e335b37dc36c1533fc8a83b8f85bb26c7e0ea6ff3979b57fb2154a3361fbe4ee" [label=""];
  "sha256:e335b37dc36c1533fc8a83b8f85bb26c7e0ea6ff3979b57fb2154a3361fbe4ee" -> "sha256:ba3d48257b18e00878f88bef7e4e445753823f86c5f3b0af09416ea6c4a2eb29" [label=""];
}

