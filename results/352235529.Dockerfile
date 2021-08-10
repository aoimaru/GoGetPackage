[app/sources/352235529.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:9c0a7b7d5b969b1506c15b75dbf2c711ad59813ff003cf52a91e97345ee3c1bc" [label="/bin/sh -c mkdir /hygieia/config" shape="box"];
  "sha256:0f1a6324e2ed57ce348ba686b9e407a49d5478d98622a316eb197f42ec10cce6" [label="mkdir{path=/hygieia}" shape="note"];
  "sha256:de621bc567dbafa55fbb73507a60f95f89459aa49cd3ef161124ce764cee6dac" [label="local://context" shape="ellipse"];
  "sha256:1eca45c4d7c68c92e0423301563bf884b914130b9452273afd7421593efad5be" [label="copy{src=/target/*.jar, dest=/hygieia}" shape="note"];
  "sha256:6f31290a39cfdafdf22e3f5df3002030db53a49c2b7d551d49736921c0537754" [label="copy{src=/docker/properties-builder.sh, dest=/hygieia/}" shape="note"];
  "sha256:7cc8bc1c13fe89fba0cdcc2684cfb670c6ec738a8b249cdbd8b5b4f18de0a8d0" [label="sha256:7cc8bc1c13fe89fba0cdcc2684cfb670c6ec738a8b249cdbd8b5b4f18de0a8d0" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:9c0a7b7d5b969b1506c15b75dbf2c711ad59813ff003cf52a91e97345ee3c1bc" [label=""];
  "sha256:9c0a7b7d5b969b1506c15b75dbf2c711ad59813ff003cf52a91e97345ee3c1bc" -> "sha256:0f1a6324e2ed57ce348ba686b9e407a49d5478d98622a316eb197f42ec10cce6" [label=""];
  "sha256:0f1a6324e2ed57ce348ba686b9e407a49d5478d98622a316eb197f42ec10cce6" -> "sha256:1eca45c4d7c68c92e0423301563bf884b914130b9452273afd7421593efad5be" [label=""];
  "sha256:de621bc567dbafa55fbb73507a60f95f89459aa49cd3ef161124ce764cee6dac" -> "sha256:1eca45c4d7c68c92e0423301563bf884b914130b9452273afd7421593efad5be" [label=""];
  "sha256:1eca45c4d7c68c92e0423301563bf884b914130b9452273afd7421593efad5be" -> "sha256:6f31290a39cfdafdf22e3f5df3002030db53a49c2b7d551d49736921c0537754" [label=""];
  "sha256:de621bc567dbafa55fbb73507a60f95f89459aa49cd3ef161124ce764cee6dac" -> "sha256:6f31290a39cfdafdf22e3f5df3002030db53a49c2b7d551d49736921c0537754" [label=""];
  "sha256:6f31290a39cfdafdf22e3f5df3002030db53a49c2b7d551d49736921c0537754" -> "sha256:7cc8bc1c13fe89fba0cdcc2684cfb670c6ec738a8b249cdbd8b5b4f18de0a8d0" [label=""];
}

