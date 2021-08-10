[app/sources/349813532.Dockerfile]
digraph {
  "sha256:f5e4b8c9f0ff6eb4a67685587f715934ed99dcc56c651cf9f3fa9f2d1e6505a5" [label="local://context" shape="ellipse"];
  "sha256:391a259f6d56eebcfcc6f4698d59f26911abcf9f5e7759ed86bb108157a1db11" [label="docker-image://docker.io/vertx/vertx3@sha256:27a96820aa19d3cb7daf51ee5583bebc44480b89a2b206537a5232aed1fc6b1d" shape="ellipse"];
  "sha256:726f29c19e577c570b880a854aeab2c1966453a832b5105db6287c3874c7034b" [label="copy{src=/scripts, dest=/opt/cloudunit/scripts}" shape="note"];
  "sha256:c2fb5c91123a08b96a17e6b269c86d348b02a7881f8e6071c9061422bb6932a5" [label="/bin/sh -c chmod +x /opt/cloudunit/scripts/*" shape="box"];
  "sha256:ecafeee2523c47c33e6ba900c0e6632c83716576eaa898549f8593d0846988cc" [label="/bin/sh -c mkdir -p /opt/cloudunit/verticles &&     mkdir -p /opt/cloudunit/tmp" shape="box"];
  "sha256:6c2390e3d00bb1c85712fc4c52e0da4d289c875d09dedf0eeffdc2a3ed657e95" [label="mkdir{path=/opt/cloudunit}" shape="note"];
  "sha256:f30d5985c27bfac436ad99b9bb4f8aa832d8a3f08565810f7fe1e2ea7560826a" [label="copy{src=/verticle.groovy, dest=/opt/cloudunit/verticles}" shape="note"];
  "sha256:9e08e4a74186cce09399ed344c287e579de5cccbd5c01f996edd82abfde080d5" [label="mkdir{path=/opt/cloudunit/verticles}" shape="note"];
  "sha256:299b613eae5adedceb2b281b11bdeeaa50ce5a6abe07cf9244d5873fb83ee832" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:7365091c4c21f6ff5811cf0178ebf29c6309d2246f213c7ecfd1d572dbaca4d4" [label="sha256:7365091c4c21f6ff5811cf0178ebf29c6309d2246f213c7ecfd1d572dbaca4d4" shape="plaintext"];
  "sha256:391a259f6d56eebcfcc6f4698d59f26911abcf9f5e7759ed86bb108157a1db11" -> "sha256:726f29c19e577c570b880a854aeab2c1966453a832b5105db6287c3874c7034b" [label=""];
  "sha256:f5e4b8c9f0ff6eb4a67685587f715934ed99dcc56c651cf9f3fa9f2d1e6505a5" -> "sha256:726f29c19e577c570b880a854aeab2c1966453a832b5105db6287c3874c7034b" [label=""];
  "sha256:726f29c19e577c570b880a854aeab2c1966453a832b5105db6287c3874c7034b" -> "sha256:c2fb5c91123a08b96a17e6b269c86d348b02a7881f8e6071c9061422bb6932a5" [label=""];
  "sha256:c2fb5c91123a08b96a17e6b269c86d348b02a7881f8e6071c9061422bb6932a5" -> "sha256:ecafeee2523c47c33e6ba900c0e6632c83716576eaa898549f8593d0846988cc" [label=""];
  "sha256:ecafeee2523c47c33e6ba900c0e6632c83716576eaa898549f8593d0846988cc" -> "sha256:6c2390e3d00bb1c85712fc4c52e0da4d289c875d09dedf0eeffdc2a3ed657e95" [label=""];
  "sha256:6c2390e3d00bb1c85712fc4c52e0da4d289c875d09dedf0eeffdc2a3ed657e95" -> "sha256:f30d5985c27bfac436ad99b9bb4f8aa832d8a3f08565810f7fe1e2ea7560826a" [label=""];
  "sha256:f5e4b8c9f0ff6eb4a67685587f715934ed99dcc56c651cf9f3fa9f2d1e6505a5" -> "sha256:f30d5985c27bfac436ad99b9bb4f8aa832d8a3f08565810f7fe1e2ea7560826a" [label=""];
  "sha256:f30d5985c27bfac436ad99b9bb4f8aa832d8a3f08565810f7fe1e2ea7560826a" -> "sha256:9e08e4a74186cce09399ed344c287e579de5cccbd5c01f996edd82abfde080d5" [label=""];
  "sha256:9e08e4a74186cce09399ed344c287e579de5cccbd5c01f996edd82abfde080d5" -> "sha256:299b613eae5adedceb2b281b11bdeeaa50ce5a6abe07cf9244d5873fb83ee832" [label=""];
  "sha256:f5e4b8c9f0ff6eb4a67685587f715934ed99dcc56c651cf9f3fa9f2d1e6505a5" -> "sha256:299b613eae5adedceb2b281b11bdeeaa50ce5a6abe07cf9244d5873fb83ee832" [label=""];
  "sha256:299b613eae5adedceb2b281b11bdeeaa50ce5a6abe07cf9244d5873fb83ee832" -> "sha256:7365091c4c21f6ff5811cf0178ebf29c6309d2246f213c7ecfd1d572dbaca4d4" [label=""];
}

