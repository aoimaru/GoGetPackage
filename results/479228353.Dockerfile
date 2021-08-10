[app/sources/479228353.Dockerfile]
digraph {
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" [label="docker-image://docker.io/library/node:10" shape="ellipse"];
  "sha256:35635aafa0108942a2a2bbc30db72aee409fead1e7890ce5f10084c21e3cc3b9" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:76cb038c1ec13b3df916ea40dedd81eeda531fddf910b5abf2b08ac3ee6817ef" [label="local://context" shape="ellipse"];
  "sha256:d383694bfe715ca179796b450a3b29a8ccea544127bd9a0341dc070d9d6ade2f" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:265a4140db393df48e5ca674d7e15a369bdb846c85ca9ff3082eff01c379965b" [label="/bin/sh -c cd /app && yarn" shape="box"];
  "sha256:b9bec65372460c3c62cf0ff086ed0ec928c8566c29c51b0e8c2aad8055bad52c" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:823409272bf6d46e76861d417be2fb6b0cd32dfce48e0ca410387b9ddfdfbb4b" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:b005c55bd703a9e0b57324f74f498c0783c1abeff651ed33348233e2d63e54cd" [label="sha256:b005c55bd703a9e0b57324f74f498c0783c1abeff651ed33348233e2d63e54cd" shape="plaintext"];
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" -> "sha256:35635aafa0108942a2a2bbc30db72aee409fead1e7890ce5f10084c21e3cc3b9" [label=""];
  "sha256:35635aafa0108942a2a2bbc30db72aee409fead1e7890ce5f10084c21e3cc3b9" -> "sha256:d383694bfe715ca179796b450a3b29a8ccea544127bd9a0341dc070d9d6ade2f" [label=""];
  "sha256:76cb038c1ec13b3df916ea40dedd81eeda531fddf910b5abf2b08ac3ee6817ef" -> "sha256:d383694bfe715ca179796b450a3b29a8ccea544127bd9a0341dc070d9d6ade2f" [label=""];
  "sha256:d383694bfe715ca179796b450a3b29a8ccea544127bd9a0341dc070d9d6ade2f" -> "sha256:265a4140db393df48e5ca674d7e15a369bdb846c85ca9ff3082eff01c379965b" [label=""];
  "sha256:265a4140db393df48e5ca674d7e15a369bdb846c85ca9ff3082eff01c379965b" -> "sha256:b9bec65372460c3c62cf0ff086ed0ec928c8566c29c51b0e8c2aad8055bad52c" [label=""];
  "sha256:76cb038c1ec13b3df916ea40dedd81eeda531fddf910b5abf2b08ac3ee6817ef" -> "sha256:b9bec65372460c3c62cf0ff086ed0ec928c8566c29c51b0e8c2aad8055bad52c" [label=""];
  "sha256:b9bec65372460c3c62cf0ff086ed0ec928c8566c29c51b0e8c2aad8055bad52c" -> "sha256:823409272bf6d46e76861d417be2fb6b0cd32dfce48e0ca410387b9ddfdfbb4b" [label=""];
  "sha256:76cb038c1ec13b3df916ea40dedd81eeda531fddf910b5abf2b08ac3ee6817ef" -> "sha256:823409272bf6d46e76861d417be2fb6b0cd32dfce48e0ca410387b9ddfdfbb4b" [label=""];
  "sha256:823409272bf6d46e76861d417be2fb6b0cd32dfce48e0ca410387b9ddfdfbb4b" -> "sha256:b005c55bd703a9e0b57324f74f498c0783c1abeff651ed33348233e2d63e54cd" [label=""];
}

