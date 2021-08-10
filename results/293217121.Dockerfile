[app/sources/293217121.Dockerfile]
digraph {
  "sha256:427f35ce4a9d513c24ddaea3b2f3263e0d6e3a39978b2751c74e13dac2c93adb" [label="docker-image://docker.io/mhart/alpine-node:latest" shape="ellipse"];
  "sha256:3f2fef9ad95260d0c2497d4f07b266fc3ec131f758d3aa4e0e1eb602038fdf71" [label="/bin/sh -c mkdir -p /bengine" shape="box"];
  "sha256:29fc937b01eed62800e15646cfefed7a16320bec5208e2546f7937e733729c6b" [label="mkdir{path=/bengine}" shape="note"];
  "sha256:fdfed1b6d82f52d9821e85e6433509b2a5f17c1316b8734ca18d8f4a315c6d5b" [label="local://context" shape="ellipse"];
  "sha256:a2ab7b2b61b36282b3a4b3870e1b53df6c7f35a3bdd8a8113fc9ed79b1a5b6a9" [label="copy{src=/package.json, dest=/bengine}" shape="note"];
  "sha256:51d550ff1aacd380c73f3389d8a88789ab8f0539e0b71c43400bdc480c4a5275" [label="/bin/sh -c npm install pm2 -g" shape="box"];
  "sha256:fdbdb2423ee1f0cca814a6a5e6a270f8dbae605490f51a57f6d3183dde5dbee1" [label="/bin/sh -c npm install" shape="box"];
  "sha256:18a926e2c928ff83fa9a9889078480a33bf0e98cde1977d57736c9806b460178" [label="copy{src=/target/release/bengine.js, dest=/bengine/bengine.js}" shape="note"];
  "sha256:ff700f642362a385753e7f76ba34339bfcbba28ebc7f16126ef9f0bb075303ce" [label="copy{src=/public, dest=/bengine/public}" shape="note"];
  "sha256:f894eca3d44c92b6b880c465fd5c4556077878efe5e3b6b0a0c77aa55bdb29db" [label="sha256:f894eca3d44c92b6b880c465fd5c4556077878efe5e3b6b0a0c77aa55bdb29db" shape="plaintext"];
  "sha256:427f35ce4a9d513c24ddaea3b2f3263e0d6e3a39978b2751c74e13dac2c93adb" -> "sha256:3f2fef9ad95260d0c2497d4f07b266fc3ec131f758d3aa4e0e1eb602038fdf71" [label=""];
  "sha256:3f2fef9ad95260d0c2497d4f07b266fc3ec131f758d3aa4e0e1eb602038fdf71" -> "sha256:29fc937b01eed62800e15646cfefed7a16320bec5208e2546f7937e733729c6b" [label=""];
  "sha256:29fc937b01eed62800e15646cfefed7a16320bec5208e2546f7937e733729c6b" -> "sha256:a2ab7b2b61b36282b3a4b3870e1b53df6c7f35a3bdd8a8113fc9ed79b1a5b6a9" [label=""];
  "sha256:fdfed1b6d82f52d9821e85e6433509b2a5f17c1316b8734ca18d8f4a315c6d5b" -> "sha256:a2ab7b2b61b36282b3a4b3870e1b53df6c7f35a3bdd8a8113fc9ed79b1a5b6a9" [label=""];
  "sha256:a2ab7b2b61b36282b3a4b3870e1b53df6c7f35a3bdd8a8113fc9ed79b1a5b6a9" -> "sha256:51d550ff1aacd380c73f3389d8a88789ab8f0539e0b71c43400bdc480c4a5275" [label=""];
  "sha256:51d550ff1aacd380c73f3389d8a88789ab8f0539e0b71c43400bdc480c4a5275" -> "sha256:fdbdb2423ee1f0cca814a6a5e6a270f8dbae605490f51a57f6d3183dde5dbee1" [label=""];
  "sha256:fdbdb2423ee1f0cca814a6a5e6a270f8dbae605490f51a57f6d3183dde5dbee1" -> "sha256:18a926e2c928ff83fa9a9889078480a33bf0e98cde1977d57736c9806b460178" [label=""];
  "sha256:fdfed1b6d82f52d9821e85e6433509b2a5f17c1316b8734ca18d8f4a315c6d5b" -> "sha256:18a926e2c928ff83fa9a9889078480a33bf0e98cde1977d57736c9806b460178" [label=""];
  "sha256:18a926e2c928ff83fa9a9889078480a33bf0e98cde1977d57736c9806b460178" -> "sha256:ff700f642362a385753e7f76ba34339bfcbba28ebc7f16126ef9f0bb075303ce" [label=""];
  "sha256:fdfed1b6d82f52d9821e85e6433509b2a5f17c1316b8734ca18d8f4a315c6d5b" -> "sha256:ff700f642362a385753e7f76ba34339bfcbba28ebc7f16126ef9f0bb075303ce" [label=""];
  "sha256:ff700f642362a385753e7f76ba34339bfcbba28ebc7f16126ef9f0bb075303ce" -> "sha256:f894eca3d44c92b6b880c465fd5c4556077878efe5e3b6b0a0c77aa55bdb29db" [label=""];
}

