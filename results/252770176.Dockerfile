[app/sources/252770176.Dockerfile]
digraph {
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:9da99ca7c1fb70aec303c0a44d2327c99b5f574a8161e3dfa291f936b1c0bb39" [label="/bin/sh -c npm install -g pm2" shape="box"];
  "sha256:6cba384c03fb261b451c4b80362dea3b05807d62adac8221be738db18eb5ec72" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:c04a1f0e4ccab415b98b3b573f6c509fb9648c04873c7d48468efd5b5b766b97" [label="mkdir{path=/app}" shape="note"];
  "sha256:772c1199f98d80c6c1ffc5de5a2525b1143ffa46aa92df3efedf8b61e14a4d18" [label="local://context" shape="ellipse"];
  "sha256:a2d41775d62ca4cddd8500d25c56c3d243ff266652e53179183e09947449c4a2" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:87b2adbdfcee173c7d6fcc5a4a6a608ac6a3882c8f3b8a5939b60cc0a844a2c4" [label="/bin/sh -c rm -rf /app/node_modules" shape="box"];
  "sha256:61ad1ebe5722ef416812e5558d48de74544c58930b1e791ca7ef2e6179f2685a" [label="/bin/sh -c npm install" shape="box"];
  "sha256:bcb3d1bc0e7209dcc2e451690e1660ad4b9c5aafd411b35133e7130377d01c83" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:21e867888e61d8a79afafc0334670e8766fa0d223a538daa3cf6328e0a1db3c7" [label="sha256:21e867888e61d8a79afafc0334670e8766fa0d223a538daa3cf6328e0a1db3c7" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:9da99ca7c1fb70aec303c0a44d2327c99b5f574a8161e3dfa291f936b1c0bb39" [label=""];
  "sha256:9da99ca7c1fb70aec303c0a44d2327c99b5f574a8161e3dfa291f936b1c0bb39" -> "sha256:6cba384c03fb261b451c4b80362dea3b05807d62adac8221be738db18eb5ec72" [label=""];
  "sha256:6cba384c03fb261b451c4b80362dea3b05807d62adac8221be738db18eb5ec72" -> "sha256:c04a1f0e4ccab415b98b3b573f6c509fb9648c04873c7d48468efd5b5b766b97" [label=""];
  "sha256:c04a1f0e4ccab415b98b3b573f6c509fb9648c04873c7d48468efd5b5b766b97" -> "sha256:a2d41775d62ca4cddd8500d25c56c3d243ff266652e53179183e09947449c4a2" [label=""];
  "sha256:772c1199f98d80c6c1ffc5de5a2525b1143ffa46aa92df3efedf8b61e14a4d18" -> "sha256:a2d41775d62ca4cddd8500d25c56c3d243ff266652e53179183e09947449c4a2" [label=""];
  "sha256:a2d41775d62ca4cddd8500d25c56c3d243ff266652e53179183e09947449c4a2" -> "sha256:87b2adbdfcee173c7d6fcc5a4a6a608ac6a3882c8f3b8a5939b60cc0a844a2c4" [label=""];
  "sha256:87b2adbdfcee173c7d6fcc5a4a6a608ac6a3882c8f3b8a5939b60cc0a844a2c4" -> "sha256:61ad1ebe5722ef416812e5558d48de74544c58930b1e791ca7ef2e6179f2685a" [label=""];
  "sha256:61ad1ebe5722ef416812e5558d48de74544c58930b1e791ca7ef2e6179f2685a" -> "sha256:bcb3d1bc0e7209dcc2e451690e1660ad4b9c5aafd411b35133e7130377d01c83" [label=""];
  "sha256:bcb3d1bc0e7209dcc2e451690e1660ad4b9c5aafd411b35133e7130377d01c83" -> "sha256:21e867888e61d8a79afafc0334670e8766fa0d223a538daa3cf6328e0a1db3c7" [label=""];
}

