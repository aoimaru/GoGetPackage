[app/sources/379294602.Dockerfile]
digraph {
  "sha256:56d42b421382efdfd2b25f09a233cfe22a9e76f8fc81ed18b78322c00552c36e" [label="docker-image://docker.io/library/debian:testing-slim" shape="ellipse"];
  "sha256:a03ed66f71869cd25cd5da733a7971430a3314aed8a002773176e9cd285856d3" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:1b1c713530773be0512ac3414484fa8d9957c169ba0aa4f8f77c2fadae5d06df" [label="/bin/sh -c apt-get install -y build-essential clang rake chicken-bin libchicken-dev llvm" shape="box"];
  "sha256:7f99f4651890656611259ebc1d0dfb46c08bf3a8cb221cefd3b7dfa601cc8d41" [label="/bin/sh -c chicken-install test r7rs" shape="box"];
  "sha256:635c8b2dd27a4c3eda4b7594a41752168c9b3d9e90c9dd60138bccae6b516640" [label="/bin/sh -c mkdir /src /build /out" shape="box"];
  "sha256:b82cee428c3ef9a43b0258e7bea5ff56a404ec175f4b5935698d1c83f493cf68" [label="local://context" shape="ellipse"];
  "sha256:652afccb103362a736220600345bdc4263c0b8534d903e4ef7b9a1fc74989f3b" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:ed337e20736e14fcf753f71b3affc47550fd37931bacc99e561deece5126a4eb" [label="mkdir{path=/src}" shape="note"];
  "sha256:df804e3faeb06fd2836fa2168b8d0b5884eea2856791d6e2d1dacb2bcbc9a5f9" [label="sha256:df804e3faeb06fd2836fa2168b8d0b5884eea2856791d6e2d1dacb2bcbc9a5f9" shape="plaintext"];
  "sha256:56d42b421382efdfd2b25f09a233cfe22a9e76f8fc81ed18b78322c00552c36e" -> "sha256:a03ed66f71869cd25cd5da733a7971430a3314aed8a002773176e9cd285856d3" [label=""];
  "sha256:a03ed66f71869cd25cd5da733a7971430a3314aed8a002773176e9cd285856d3" -> "sha256:1b1c713530773be0512ac3414484fa8d9957c169ba0aa4f8f77c2fadae5d06df" [label=""];
  "sha256:1b1c713530773be0512ac3414484fa8d9957c169ba0aa4f8f77c2fadae5d06df" -> "sha256:7f99f4651890656611259ebc1d0dfb46c08bf3a8cb221cefd3b7dfa601cc8d41" [label=""];
  "sha256:7f99f4651890656611259ebc1d0dfb46c08bf3a8cb221cefd3b7dfa601cc8d41" -> "sha256:635c8b2dd27a4c3eda4b7594a41752168c9b3d9e90c9dd60138bccae6b516640" [label=""];
  "sha256:635c8b2dd27a4c3eda4b7594a41752168c9b3d9e90c9dd60138bccae6b516640" -> "sha256:652afccb103362a736220600345bdc4263c0b8534d903e4ef7b9a1fc74989f3b" [label=""];
  "sha256:b82cee428c3ef9a43b0258e7bea5ff56a404ec175f4b5935698d1c83f493cf68" -> "sha256:652afccb103362a736220600345bdc4263c0b8534d903e4ef7b9a1fc74989f3b" [label=""];
  "sha256:652afccb103362a736220600345bdc4263c0b8534d903e4ef7b9a1fc74989f3b" -> "sha256:ed337e20736e14fcf753f71b3affc47550fd37931bacc99e561deece5126a4eb" [label=""];
  "sha256:ed337e20736e14fcf753f71b3affc47550fd37931bacc99e561deece5126a4eb" -> "sha256:df804e3faeb06fd2836fa2168b8d0b5884eea2856791d6e2d1dacb2bcbc9a5f9" [label=""];
}

