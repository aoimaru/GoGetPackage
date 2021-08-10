[app/sources/286257548.Dockerfile]
digraph {
  "sha256:b3d3fe1204ae3b525ee89da117775cddbe48415784807688de9ec65dbb98b432" [label="docker-image://docker.io/mhart/alpine-node:6.9.2" shape="ellipse"];
  "sha256:67a08e91d192a0d7771f3073edc93aec3c9654998faad482f747e01862f4777d" [label="/bin/sh -c apk add --no-cache make gcc g++ python git bash" shape="box"];
  "sha256:1e836c7d3f53613d874ade3ef44f5e62ba9952509a8f68f6dbf60d94b5aef185" [label="local://context" shape="ellipse"];
  "sha256:3cd97c11a149e1c5a725c2ac85f1d1b617537a284e5083875035a75d8a5d3154" [label="copy{src=/package.json, dest=/src/package.json}" shape="note"];
  "sha256:5f94e4626f73b93e94d00d4fd6f1e390571787e4c04e3c738b3b71c473001930" [label="mkdir{path=/src}" shape="note"];
  "sha256:ca9ffee22056258c31625dc016e85a1f9a9ec4aa35933f28fbd5e664a56d3076" [label="/bin/sh -c npm install" shape="box"];
  "sha256:da7dee19c93d6214425d60001f57b3ecb6996cee04db6e980da0e9bf2fabb38c" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:b3aee22c80f9aabc7467a03128b4da6c56fd72bc9b4865fad79ef5a100cdda4c" [label="sha256:b3aee22c80f9aabc7467a03128b4da6c56fd72bc9b4865fad79ef5a100cdda4c" shape="plaintext"];
  "sha256:b3d3fe1204ae3b525ee89da117775cddbe48415784807688de9ec65dbb98b432" -> "sha256:67a08e91d192a0d7771f3073edc93aec3c9654998faad482f747e01862f4777d" [label=""];
  "sha256:67a08e91d192a0d7771f3073edc93aec3c9654998faad482f747e01862f4777d" -> "sha256:3cd97c11a149e1c5a725c2ac85f1d1b617537a284e5083875035a75d8a5d3154" [label=""];
  "sha256:1e836c7d3f53613d874ade3ef44f5e62ba9952509a8f68f6dbf60d94b5aef185" -> "sha256:3cd97c11a149e1c5a725c2ac85f1d1b617537a284e5083875035a75d8a5d3154" [label=""];
  "sha256:3cd97c11a149e1c5a725c2ac85f1d1b617537a284e5083875035a75d8a5d3154" -> "sha256:5f94e4626f73b93e94d00d4fd6f1e390571787e4c04e3c738b3b71c473001930" [label=""];
  "sha256:5f94e4626f73b93e94d00d4fd6f1e390571787e4c04e3c738b3b71c473001930" -> "sha256:ca9ffee22056258c31625dc016e85a1f9a9ec4aa35933f28fbd5e664a56d3076" [label=""];
  "sha256:ca9ffee22056258c31625dc016e85a1f9a9ec4aa35933f28fbd5e664a56d3076" -> "sha256:da7dee19c93d6214425d60001f57b3ecb6996cee04db6e980da0e9bf2fabb38c" [label=""];
  "sha256:1e836c7d3f53613d874ade3ef44f5e62ba9952509a8f68f6dbf60d94b5aef185" -> "sha256:da7dee19c93d6214425d60001f57b3ecb6996cee04db6e980da0e9bf2fabb38c" [label=""];
  "sha256:da7dee19c93d6214425d60001f57b3ecb6996cee04db6e980da0e9bf2fabb38c" -> "sha256:b3aee22c80f9aabc7467a03128b4da6c56fd72bc9b4865fad79ef5a100cdda4c" [label=""];
}

