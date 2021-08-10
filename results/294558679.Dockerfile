[app/sources/294558679.Dockerfile]
digraph {
  "sha256:a6ce8f637525326beed1d3a4b73299415966971c93416066f2142a2204da7247" [label="local://context" shape="ellipse"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:45f2977c744c1b4dcefa821334f1d6517207bbf79464a6232ccf2a29d3ddf0ae" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:79cbe8dc0b9559e88b85a6cc928dc565f7d44612d7f860f3c704b1335da782de" [label="mkdir{path=/usr/src/app/client}" shape="note"];
  "sha256:9752ded38d1e8b5c411eafa79b0936b6d6fccbb3a791a64b614ae8abd0853817" [label="copy{src=/client, dest=/usr/src/app/client}" shape="note"];
  "sha256:40a51c7cfc99395bd162ab3a3d2adf8e6c609822857998edbfd8a7bc5586284c" [label="/bin/sh -c cd $(npm root -g)/npm  && npm install fs-extra  && sed -i -e s/graceful-fs/fs-extra/ -e s/fs\\.rename/fs\\.move/ ./lib/utils/rename.js" shape="box"];
  "sha256:7559183a021a8cc40aa31981e89f5f4070f8ac029c1819d0680a273062a19030" [label="/bin/sh -c rm -rf node_modules" shape="box"];
  "sha256:42efc3820dde9623618665c9031500bc6df888d36a9e97bfb10ace46d5b564ac" [label="/bin/sh -c npm install" shape="box"];
  "sha256:43a07540a12ab8e5468d5adcfe5be7f822c740bd66f4946721076b154aa5efc5" [label="sha256:43a07540a12ab8e5468d5adcfe5be7f822c740bd66f4946721076b154aa5efc5" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:45f2977c744c1b4dcefa821334f1d6517207bbf79464a6232ccf2a29d3ddf0ae" [label=""];
  "sha256:45f2977c744c1b4dcefa821334f1d6517207bbf79464a6232ccf2a29d3ddf0ae" -> "sha256:79cbe8dc0b9559e88b85a6cc928dc565f7d44612d7f860f3c704b1335da782de" [label=""];
  "sha256:79cbe8dc0b9559e88b85a6cc928dc565f7d44612d7f860f3c704b1335da782de" -> "sha256:9752ded38d1e8b5c411eafa79b0936b6d6fccbb3a791a64b614ae8abd0853817" [label=""];
  "sha256:a6ce8f637525326beed1d3a4b73299415966971c93416066f2142a2204da7247" -> "sha256:9752ded38d1e8b5c411eafa79b0936b6d6fccbb3a791a64b614ae8abd0853817" [label=""];
  "sha256:9752ded38d1e8b5c411eafa79b0936b6d6fccbb3a791a64b614ae8abd0853817" -> "sha256:40a51c7cfc99395bd162ab3a3d2adf8e6c609822857998edbfd8a7bc5586284c" [label=""];
  "sha256:40a51c7cfc99395bd162ab3a3d2adf8e6c609822857998edbfd8a7bc5586284c" -> "sha256:7559183a021a8cc40aa31981e89f5f4070f8ac029c1819d0680a273062a19030" [label=""];
  "sha256:7559183a021a8cc40aa31981e89f5f4070f8ac029c1819d0680a273062a19030" -> "sha256:42efc3820dde9623618665c9031500bc6df888d36a9e97bfb10ace46d5b564ac" [label=""];
  "sha256:42efc3820dde9623618665c9031500bc6df888d36a9e97bfb10ace46d5b564ac" -> "sha256:43a07540a12ab8e5468d5adcfe5be7f822c740bd66f4946721076b154aa5efc5" [label=""];
}

