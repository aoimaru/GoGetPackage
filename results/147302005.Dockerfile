[app/sources/147302005.Dockerfile]
digraph {
  "sha256:c46959036b3c23d4c87c1f301b452a0d59480ae33bd386c5aa7fe8f312e1fdb5" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a612b9d9b92f1fe40174336c9534356927fce7f3cf49d8c12f31a0846a2c9663" [label="/bin/sh -c apt-get install -y curl" shape="box"];
  "sha256:0a1da4e26ff6b7d534e7567deb55e24babe7e9929fdb58c8486ce61a34ef5ec3" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh" shape="box"];
  "sha256:d3e6c17af269203c6fd4a30a7dda5ea04ff590d419f2a6908c2767ce52d5b269" [label="/bin/sh -c bash nodesource_setup.sh" shape="box"];
  "sha256:3ce5b2320d04e01958b4ea631f622173eb89dfaeee18507c31c51f20a9173370" [label="/bin/sh -c apt-get install -y build-essential libssl-dev net-tools vim" shape="box"];
  "sha256:564093713ff3456fb7d17ef232e4254eb9dc26f5be0b388579c0c075805ebf62" [label="/bin/sh -c apt-get install -y gcc g++ make" shape="box"];
  "sha256:aaeddb30dd22ea20b55703163f266e457d933e87db66009885ead0caa1efb314" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:7d1cd3949e73af29031a51abbaebbaeb6e5e529d39f993ab096cdb30eeffc79d" [label="mkdir{path=/opt}" shape="note"];
  "sha256:401bcaf39f85b0f43086d6656e3164546e4a96bcb2cfa07dfcfd0299c3724ff0" [label="copy{src=/package*.json, dest=/opt/}" shape="note"];
  "sha256:5e1b105ce394d8c5d3178bbfb7b0586ca830b5524f82ba1c3d87e368ab500faa" [label="copy{src=/, dest=/opt/}" shape="note"];
  "sha256:b86b2a0525bf886974094b28f691c2a343bb944d4be2e3aaabb86a323ce668e6" [label="/bin/sh -c useradd -ms /bin/bash node" shape="box"];
  "sha256:d7453aaf5cd2d54710d51a93457940a7f3438f6f055064aebef23b1c662545f4" [label="/bin/sh -c chown -R node:node /opt/" shape="box"];
  "sha256:d2686edb2223759014f630e8e90d31b08cce3825beeed7a156fa5db901a06930" [label="/bin/sh -c npm install" shape="box"];
  "sha256:2b29814c5b03666879dd359e7207c70e90438b31b226b05f3f5e66d8270f586a" [label="/bin/sh -c npm install -g nodemon" shape="box"];
  "sha256:5be04f9469a597209aef4291292d49a95fea7108518cef2908cc8a584b389b2c" [label="sha256:5be04f9469a597209aef4291292d49a95fea7108518cef2908cc8a584b389b2c" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label=""];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" -> "sha256:a612b9d9b92f1fe40174336c9534356927fce7f3cf49d8c12f31a0846a2c9663" [label=""];
  "sha256:a612b9d9b92f1fe40174336c9534356927fce7f3cf49d8c12f31a0846a2c9663" -> "sha256:0a1da4e26ff6b7d534e7567deb55e24babe7e9929fdb58c8486ce61a34ef5ec3" [label=""];
  "sha256:0a1da4e26ff6b7d534e7567deb55e24babe7e9929fdb58c8486ce61a34ef5ec3" -> "sha256:d3e6c17af269203c6fd4a30a7dda5ea04ff590d419f2a6908c2767ce52d5b269" [label=""];
  "sha256:d3e6c17af269203c6fd4a30a7dda5ea04ff590d419f2a6908c2767ce52d5b269" -> "sha256:3ce5b2320d04e01958b4ea631f622173eb89dfaeee18507c31c51f20a9173370" [label=""];
  "sha256:3ce5b2320d04e01958b4ea631f622173eb89dfaeee18507c31c51f20a9173370" -> "sha256:564093713ff3456fb7d17ef232e4254eb9dc26f5be0b388579c0c075805ebf62" [label=""];
  "sha256:564093713ff3456fb7d17ef232e4254eb9dc26f5be0b388579c0c075805ebf62" -> "sha256:aaeddb30dd22ea20b55703163f266e457d933e87db66009885ead0caa1efb314" [label=""];
  "sha256:aaeddb30dd22ea20b55703163f266e457d933e87db66009885ead0caa1efb314" -> "sha256:7d1cd3949e73af29031a51abbaebbaeb6e5e529d39f993ab096cdb30eeffc79d" [label=""];
  "sha256:7d1cd3949e73af29031a51abbaebbaeb6e5e529d39f993ab096cdb30eeffc79d" -> "sha256:401bcaf39f85b0f43086d6656e3164546e4a96bcb2cfa07dfcfd0299c3724ff0" [label=""];
  "sha256:c46959036b3c23d4c87c1f301b452a0d59480ae33bd386c5aa7fe8f312e1fdb5" -> "sha256:401bcaf39f85b0f43086d6656e3164546e4a96bcb2cfa07dfcfd0299c3724ff0" [label=""];
  "sha256:401bcaf39f85b0f43086d6656e3164546e4a96bcb2cfa07dfcfd0299c3724ff0" -> "sha256:5e1b105ce394d8c5d3178bbfb7b0586ca830b5524f82ba1c3d87e368ab500faa" [label=""];
  "sha256:c46959036b3c23d4c87c1f301b452a0d59480ae33bd386c5aa7fe8f312e1fdb5" -> "sha256:5e1b105ce394d8c5d3178bbfb7b0586ca830b5524f82ba1c3d87e368ab500faa" [label=""];
  "sha256:5e1b105ce394d8c5d3178bbfb7b0586ca830b5524f82ba1c3d87e368ab500faa" -> "sha256:b86b2a0525bf886974094b28f691c2a343bb944d4be2e3aaabb86a323ce668e6" [label=""];
  "sha256:b86b2a0525bf886974094b28f691c2a343bb944d4be2e3aaabb86a323ce668e6" -> "sha256:d7453aaf5cd2d54710d51a93457940a7f3438f6f055064aebef23b1c662545f4" [label=""];
  "sha256:d7453aaf5cd2d54710d51a93457940a7f3438f6f055064aebef23b1c662545f4" -> "sha256:d2686edb2223759014f630e8e90d31b08cce3825beeed7a156fa5db901a06930" [label=""];
  "sha256:d2686edb2223759014f630e8e90d31b08cce3825beeed7a156fa5db901a06930" -> "sha256:2b29814c5b03666879dd359e7207c70e90438b31b226b05f3f5e66d8270f586a" [label=""];
  "sha256:2b29814c5b03666879dd359e7207c70e90438b31b226b05f3f5e66d8270f586a" -> "sha256:5be04f9469a597209aef4291292d49a95fea7108518cef2908cc8a584b389b2c" [label=""];
}

