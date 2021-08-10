[app/sources/252788546.Dockerfile]
digraph {
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" [label="docker-image://docker.io/library/node:7" shape="ellipse"];
  "sha256:3c8b366994382629cfd932be7f67a6a395673e9636b1432677ecbf32282f69c0" [label="/bin/sh -c mkdir /practice_docker" shape="box"];
  "sha256:cf4e1b30057c913e8e9c6fdaaf13daf01409f4a1624c1ac77719f7e7e2514b59" [label="local://context" shape="ellipse"];
  "sha256:8ca6aeab0a57fc0f8341aac6ede1dd1d099c3b033fd55894b0d4d4952eb9f607" [label="copy{src=/, dest=/practice_docker}" shape="note"];
  "sha256:d87014ffedd5e69a9fb43c582c7f0bc038ecb687f502f4dd1d4c3446e4d314d4" [label="mkdir{path=/practice_docker}" shape="note"];
  "sha256:7309b086ce6755dc52753d6d7931caca3b27f77d7665afc7a95acd1edf72673f" [label="/bin/sh -c npm i" shape="box"];
  "sha256:c40a38854698150a282aadafbd3e554fbef09f161fd8e509d0766ecf9682ba68" [label="sha256:c40a38854698150a282aadafbd3e554fbef09f161fd8e509d0766ecf9682ba68" shape="plaintext"];
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" -> "sha256:3c8b366994382629cfd932be7f67a6a395673e9636b1432677ecbf32282f69c0" [label=""];
  "sha256:3c8b366994382629cfd932be7f67a6a395673e9636b1432677ecbf32282f69c0" -> "sha256:8ca6aeab0a57fc0f8341aac6ede1dd1d099c3b033fd55894b0d4d4952eb9f607" [label=""];
  "sha256:cf4e1b30057c913e8e9c6fdaaf13daf01409f4a1624c1ac77719f7e7e2514b59" -> "sha256:8ca6aeab0a57fc0f8341aac6ede1dd1d099c3b033fd55894b0d4d4952eb9f607" [label=""];
  "sha256:8ca6aeab0a57fc0f8341aac6ede1dd1d099c3b033fd55894b0d4d4952eb9f607" -> "sha256:d87014ffedd5e69a9fb43c582c7f0bc038ecb687f502f4dd1d4c3446e4d314d4" [label=""];
  "sha256:d87014ffedd5e69a9fb43c582c7f0bc038ecb687f502f4dd1d4c3446e4d314d4" -> "sha256:7309b086ce6755dc52753d6d7931caca3b27f77d7665afc7a95acd1edf72673f" [label=""];
  "sha256:7309b086ce6755dc52753d6d7931caca3b27f77d7665afc7a95acd1edf72673f" -> "sha256:c40a38854698150a282aadafbd3e554fbef09f161fd8e509d0766ecf9682ba68" [label=""];
}

