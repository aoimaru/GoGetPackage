[app/sources/252772006.Dockerfile]
digraph {
  "sha256:f49c328244b0fa338a52775edd1b971bdaaf1754d2554dcf2f47af5a1755fc42" [label="docker-image://docker.io/library/node:4.2.4-wheezy" shape="ellipse"];
  "sha256:204237fab479586b2b4e4fd350f98a3fd8e32959c9bfec83fe79be6e262e20c9" [label="local://context" shape="ellipse"];
  "sha256:e419693ecea594ccfbc542610384dfe381231be84f6cee579f07ee23575d6b16" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:41b4a598ba62dae5b6542c1b8d165ab6222f08e38a6e4f23f8386243e69cfa16" [label="mkdir{path=/app}" shape="note"];
  "sha256:63e0fb3a9ab87b21e4a9ab0584193acac87cc42474d649ec6cbb3e6edfd054ad" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get -q2 -y update && apt-get -y upgrade" shape="box"];
  "sha256:2ed6edf78b16d203ceb6ea6d7bffd937dc38eeaa3c643160bf7d1379446cd0ff" [label="/bin/sh -c npm install" shape="box"];
  "sha256:fbd34ca4c6fc0eac59960cac73c89d69befb22998ea2216753002a7c4e063ab3" [label="sha256:fbd34ca4c6fc0eac59960cac73c89d69befb22998ea2216753002a7c4e063ab3" shape="plaintext"];
  "sha256:f49c328244b0fa338a52775edd1b971bdaaf1754d2554dcf2f47af5a1755fc42" -> "sha256:e419693ecea594ccfbc542610384dfe381231be84f6cee579f07ee23575d6b16" [label=""];
  "sha256:204237fab479586b2b4e4fd350f98a3fd8e32959c9bfec83fe79be6e262e20c9" -> "sha256:e419693ecea594ccfbc542610384dfe381231be84f6cee579f07ee23575d6b16" [label=""];
  "sha256:e419693ecea594ccfbc542610384dfe381231be84f6cee579f07ee23575d6b16" -> "sha256:41b4a598ba62dae5b6542c1b8d165ab6222f08e38a6e4f23f8386243e69cfa16" [label=""];
  "sha256:41b4a598ba62dae5b6542c1b8d165ab6222f08e38a6e4f23f8386243e69cfa16" -> "sha256:63e0fb3a9ab87b21e4a9ab0584193acac87cc42474d649ec6cbb3e6edfd054ad" [label=""];
  "sha256:63e0fb3a9ab87b21e4a9ab0584193acac87cc42474d649ec6cbb3e6edfd054ad" -> "sha256:2ed6edf78b16d203ceb6ea6d7bffd937dc38eeaa3c643160bf7d1379446cd0ff" [label=""];
  "sha256:2ed6edf78b16d203ceb6ea6d7bffd937dc38eeaa3c643160bf7d1379446cd0ff" -> "sha256:fbd34ca4c6fc0eac59960cac73c89d69befb22998ea2216753002a7c4e063ab3" [label=""];
}

