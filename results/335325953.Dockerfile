[app/sources/335325953.Dockerfile]
digraph {
  "sha256:db1b721b430fe47d18d23dcaa7ad23930750752b0187057c3a7578405caa9836" [label="docker-image://docker.io/rocker/r-apt:bionic" shape="ellipse"];
  "sha256:a10ca3ca5dcda810be8bdd720cd9cbd37c50ad69f20a36dbff1f8e3248eba97c" [label="/bin/sh -c apt-get update &&     apt-get install -y -qq     \tr-cran-caret     \tr-cran-pls     \tr-cran-e1071" shape="box"];
  "sha256:7bba6f9be3f4411264c11b6c28b092c085e6acc58805624099232f89fbeb753e" [label="/bin/sh -c R -e 'install.packages(\"doParallel\")'" shape="box"];
  "sha256:f59d2950667c7b20b5958f37b3031b9aa9da3f35b498537d13856d41c9a79217" [label="/bin/sh -c mkdir training" shape="box"];
  "sha256:8bed0e803225500166ea6e5de78a83e08b6e5620ede5d87689c75dd6adaf0f69" [label="local://context" shape="ellipse"];
  "sha256:0c8c4c6a091578b64e107f37ea520c76820c7d3d925ef62c909d22c6cb5d5a50" [label="copy{src=/train.R, dest=/training/train.R}" shape="note"];
  "sha256:f4933630085654a8c170b3d0695c9679a6084bb7aa2c920dfd676968998acd16" [label="copy{src=/get_data.sh, dest=/training/get_data.sh}" shape="note"];
  "sha256:f4688249904a007057cb2f733fe6200379a8606b4465896bafdde5cb967aa836" [label="copy{src=/train.sh, dest=/training/train.sh}" shape="note"];
  "sha256:a035b610431b63a1e1c0724b72cc8a95afd354802c28f8d2df74c471c82fe716" [label="/bin/sh -c cd /training &&     ./get_data.sh" shape="box"];
  "sha256:979e36e56a5569882edf117395cc85166c9f8cd5c74102f096660cd7f5609083" [label="mkdir{path=/training}" shape="note"];
  "sha256:02593eb74eed865aa344800f34aedac7790e02838af6b8a738b6fe5ec12f0b78" [label="sha256:02593eb74eed865aa344800f34aedac7790e02838af6b8a738b6fe5ec12f0b78" shape="plaintext"];
  "sha256:db1b721b430fe47d18d23dcaa7ad23930750752b0187057c3a7578405caa9836" -> "sha256:a10ca3ca5dcda810be8bdd720cd9cbd37c50ad69f20a36dbff1f8e3248eba97c" [label=""];
  "sha256:a10ca3ca5dcda810be8bdd720cd9cbd37c50ad69f20a36dbff1f8e3248eba97c" -> "sha256:7bba6f9be3f4411264c11b6c28b092c085e6acc58805624099232f89fbeb753e" [label=""];
  "sha256:7bba6f9be3f4411264c11b6c28b092c085e6acc58805624099232f89fbeb753e" -> "sha256:f59d2950667c7b20b5958f37b3031b9aa9da3f35b498537d13856d41c9a79217" [label=""];
  "sha256:f59d2950667c7b20b5958f37b3031b9aa9da3f35b498537d13856d41c9a79217" -> "sha256:0c8c4c6a091578b64e107f37ea520c76820c7d3d925ef62c909d22c6cb5d5a50" [label=""];
  "sha256:8bed0e803225500166ea6e5de78a83e08b6e5620ede5d87689c75dd6adaf0f69" -> "sha256:0c8c4c6a091578b64e107f37ea520c76820c7d3d925ef62c909d22c6cb5d5a50" [label=""];
  "sha256:0c8c4c6a091578b64e107f37ea520c76820c7d3d925ef62c909d22c6cb5d5a50" -> "sha256:f4933630085654a8c170b3d0695c9679a6084bb7aa2c920dfd676968998acd16" [label=""];
  "sha256:8bed0e803225500166ea6e5de78a83e08b6e5620ede5d87689c75dd6adaf0f69" -> "sha256:f4933630085654a8c170b3d0695c9679a6084bb7aa2c920dfd676968998acd16" [label=""];
  "sha256:f4933630085654a8c170b3d0695c9679a6084bb7aa2c920dfd676968998acd16" -> "sha256:f4688249904a007057cb2f733fe6200379a8606b4465896bafdde5cb967aa836" [label=""];
  "sha256:8bed0e803225500166ea6e5de78a83e08b6e5620ede5d87689c75dd6adaf0f69" -> "sha256:f4688249904a007057cb2f733fe6200379a8606b4465896bafdde5cb967aa836" [label=""];
  "sha256:f4688249904a007057cb2f733fe6200379a8606b4465896bafdde5cb967aa836" -> "sha256:a035b610431b63a1e1c0724b72cc8a95afd354802c28f8d2df74c471c82fe716" [label=""];
  "sha256:a035b610431b63a1e1c0724b72cc8a95afd354802c28f8d2df74c471c82fe716" -> "sha256:979e36e56a5569882edf117395cc85166c9f8cd5c74102f096660cd7f5609083" [label=""];
  "sha256:979e36e56a5569882edf117395cc85166c9f8cd5c74102f096660cd7f5609083" -> "sha256:02593eb74eed865aa344800f34aedac7790e02838af6b8a738b6fe5ec12f0b78" [label=""];
}

