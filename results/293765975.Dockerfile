[app/sources/293765975.Dockerfile]
digraph {
  "sha256:427f35ce4a9d513c24ddaea3b2f3263e0d6e3a39978b2751c74e13dac2c93adb" [label="docker-image://docker.io/mhart/alpine-node:latest" shape="ellipse"];
  "sha256:e3b8dad5315c62f370ed0fb1b4c9a15344cdf9d27897c482ca2f27b46442d05b" [label="mkdir{path=/app}" shape="note"];
  "sha256:b288c9fe2bb1fd87abef513ef73eb3fa5cb2adb21244e4edca55dbe27a117f3f" [label="local://context" shape="ellipse"];
  "sha256:bdcd45a7eac3efcccff2f7837be3e777f014b958cd4e0139276bc1f236212823" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:2cda2a3419da4e6240caa53f780d2ca54e7cdf526ecf0c39a1fec2091311e5e8" [label="/bin/sh -c npm install" shape="box"];
  "sha256:fd9b49d7e77b98329241239a779c97051b4ff3b1a89d174d748364d346bec797" [label="sha256:fd9b49d7e77b98329241239a779c97051b4ff3b1a89d174d748364d346bec797" shape="plaintext"];
  "sha256:427f35ce4a9d513c24ddaea3b2f3263e0d6e3a39978b2751c74e13dac2c93adb" -> "sha256:e3b8dad5315c62f370ed0fb1b4c9a15344cdf9d27897c482ca2f27b46442d05b" [label=""];
  "sha256:e3b8dad5315c62f370ed0fb1b4c9a15344cdf9d27897c482ca2f27b46442d05b" -> "sha256:bdcd45a7eac3efcccff2f7837be3e777f014b958cd4e0139276bc1f236212823" [label=""];
  "sha256:b288c9fe2bb1fd87abef513ef73eb3fa5cb2adb21244e4edca55dbe27a117f3f" -> "sha256:bdcd45a7eac3efcccff2f7837be3e777f014b958cd4e0139276bc1f236212823" [label=""];
  "sha256:bdcd45a7eac3efcccff2f7837be3e777f014b958cd4e0139276bc1f236212823" -> "sha256:2cda2a3419da4e6240caa53f780d2ca54e7cdf526ecf0c39a1fec2091311e5e8" [label=""];
  "sha256:2cda2a3419da4e6240caa53f780d2ca54e7cdf526ecf0c39a1fec2091311e5e8" -> "sha256:fd9b49d7e77b98329241239a779c97051b4ff3b1a89d174d748364d346bec797" [label=""];
}

