[app/sources/243624660.Dockerfile]
digraph {
  "sha256:8661597dd55befc0cad851b6492090dc5dbef09511d8b4752c14bc74b54b0950" [label="docker-image://gcr.io/distroless/nodejs@sha256:cc43b4c307d1e57a55ce5b035187e3e5aa6b9de3a5ee77a9ab26781953b2996a" shape="ellipse"];
  "sha256:076247bf05bb79e6bfb54314b3bc98776ecec7f580dfb6456baab295d8d07771" [label="docker-image://docker.io/library/node:8.11.3" shape="ellipse"];
  "sha256:b534e39b016d81937363cf7c2b36ff3390fc34db154cad857407903393ff907c" [label="mkdir{path=/chunky}" shape="note"];
  "sha256:fd5002bb6c0856105ab945bdc350c822b856a8c9d770fb7c217aaec2d1f34704" [label="local://context" shape="ellipse"];
  "sha256:1b62ec95821e523b99f88175d88efe1c9231f1a447e1fba550bb61da4dc89722" [label="copy{src=/, dest=/chunky/}" shape="note"];
  "sha256:1a1d36b17b5d24eeba124158db7a727f4218213a253bb93cc0cbbc633be0bd09" [label="/bin/sh -c npm install" shape="box"];
  "sha256:05ffce770f7dac8d1bd37e08099d66773b3e6d8dca5c06bd9a97ab3cf7712e76" [label="copy{src=/chunky, dest=/chunky}" shape="note"];
  "sha256:2dbe1bdf1e54641b046143751a2464047cde235af6787b706da4758827291b08" [label="mkdir{path=/chunky}" shape="note"];
  "sha256:5d00fab4f6be663e2acd13b4bb50d8823c7156d03d2868f56bca22b1f99c8c72" [label="sha256:5d00fab4f6be663e2acd13b4bb50d8823c7156d03d2868f56bca22b1f99c8c72" shape="plaintext"];
  "sha256:076247bf05bb79e6bfb54314b3bc98776ecec7f580dfb6456baab295d8d07771" -> "sha256:b534e39b016d81937363cf7c2b36ff3390fc34db154cad857407903393ff907c" [label=""];
  "sha256:b534e39b016d81937363cf7c2b36ff3390fc34db154cad857407903393ff907c" -> "sha256:1b62ec95821e523b99f88175d88efe1c9231f1a447e1fba550bb61da4dc89722" [label=""];
  "sha256:fd5002bb6c0856105ab945bdc350c822b856a8c9d770fb7c217aaec2d1f34704" -> "sha256:1b62ec95821e523b99f88175d88efe1c9231f1a447e1fba550bb61da4dc89722" [label=""];
  "sha256:1b62ec95821e523b99f88175d88efe1c9231f1a447e1fba550bb61da4dc89722" -> "sha256:1a1d36b17b5d24eeba124158db7a727f4218213a253bb93cc0cbbc633be0bd09" [label=""];
  "sha256:8661597dd55befc0cad851b6492090dc5dbef09511d8b4752c14bc74b54b0950" -> "sha256:05ffce770f7dac8d1bd37e08099d66773b3e6d8dca5c06bd9a97ab3cf7712e76" [label=""];
  "sha256:1a1d36b17b5d24eeba124158db7a727f4218213a253bb93cc0cbbc633be0bd09" -> "sha256:05ffce770f7dac8d1bd37e08099d66773b3e6d8dca5c06bd9a97ab3cf7712e76" [label=""];
  "sha256:05ffce770f7dac8d1bd37e08099d66773b3e6d8dca5c06bd9a97ab3cf7712e76" -> "sha256:2dbe1bdf1e54641b046143751a2464047cde235af6787b706da4758827291b08" [label=""];
  "sha256:2dbe1bdf1e54641b046143751a2464047cde235af6787b706da4758827291b08" -> "sha256:5d00fab4f6be663e2acd13b4bb50d8823c7156d03d2868f56bca22b1f99c8c72" [label=""];
}

