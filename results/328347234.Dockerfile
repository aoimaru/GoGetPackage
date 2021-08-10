[app/sources/328347234.Dockerfile]
digraph {
  "sha256:ac95981bcf18405cb6a2a8c456fcd16f0a053f328af69a27238c83c5009cde9b" [label="docker-image://docker.io/discourse/base:release" shape="ellipse"];
  "sha256:07a9689ead8e8fa59300f50b415ad6b6283b4a6a0b6c4cde8fb4df576c73a0f5" [label="/bin/sh -c apt-get update && apt-get install -y libsqlite3-dev     && gem install mailcatcher && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6c62c7f672330c5b9ac225086c7600db7d6202b333dd395add890c9d591ca432" [label="/bin/sh -c rm -rf /var/www/*" shape="box"];
  "sha256:0dca11d2084f5179582edab3d9691cdb388ae833ca6f2ec7da311a8ec5bc65e9" [label="local://context" shape="ellipse"];
  "sha256:868bd399e35372402aedf0dab2a1adc53ade5632e06c6d91b6adfb6ea1497ef0" [label="copy{src=/sudoers.discourse, dest=/etc/sudoers.d/discourse}" shape="note"];
  "sha256:15f3f646809de2b2a0bfbb2d5c42a9569845906bd144ebee3699067f9f86b02b" [label="copy{src=/redis.template.yml, dest=/pups/redis.yml}" shape="note"];
  "sha256:13ba72f70603701d2f5adcab5f40d91d30900a6aba1cc82636731ba3a56a01aa" [label="/bin/sh -c /pups/bin/pups /pups/redis.yml" shape="box"];
  "sha256:f0add2e06b4282e02ff2c8e6e2ed5b29b9d45a6377dfb2ce6ed12d924e8d5d8c" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:3207cabcd53dad598099ed4e2833aaf438b0ba8fa6daca4a98179844fe2dfbef" [label="copy{src=/postgres.template.yml, dest=/pups/postgres.yml}" shape="note"];
  "sha256:bf416cd6969391b138c3845f13f2e5c4c936e34152e1e4e523a7c1b21fb24d91" [label="/bin/sh -c LANG=en_US.UTF-8 /pups/bin/pups /pups/postgres.yml" shape="box"];
  "sha256:dc2aa2c6f7154b7608cb1aaa77eb40618cca383697b9b25ae6a1650e9e196392" [label="copy{src=/postgres_dev.template.yml, dest=/pups/postgres_dev.yml}" shape="note"];
  "sha256:88e12d57b47653b837de3661fb7dee1a4b8743c10408a9e7888f7e809de8dd85" [label="/bin/sh -c /pups/bin/pups /pups/postgres_dev.yml" shape="box"];
  "sha256:385015d6cd0b61eb8fc7f5e5ee78a6c0c25b60d7abd82ec43ab3175c1c36dec8" [label="/bin/sh -c mv /shared/postgres_data /shared/postgres_data_orig" shape="box"];
  "sha256:27012d9939b69c137679343cef71f7adbe67f8444558f40e7842ec6ee84b2236" [label="copy{src=/ensure-database, dest=/etc/runit/1.d/ensure-database}" shape="note"];
  "sha256:f256e2ad72e0aadf3d3cda3826e539922dc382340d5be270dce6c1ee23f82b6e" [label="/bin/sh -c wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - &&    echo \"deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main\" >> /etc/apt/sources.list.d/google.list &&    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - &&    echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | sudo tee /etc/apt/sources.list.d/yarn.list &&    apt-get update &&    apt-get install -y google-chrome-stable yarn nodejs &&    npm install -g eslint babel-eslint" shape="box"];
  "sha256:191385930108b9f99d1ad210f7a7b4f8f13a2721b474a11b1df12a55b002b366" [label="sha256:191385930108b9f99d1ad210f7a7b4f8f13a2721b474a11b1df12a55b002b366" shape="plaintext"];
  "sha256:ac95981bcf18405cb6a2a8c456fcd16f0a053f328af69a27238c83c5009cde9b" -> "sha256:07a9689ead8e8fa59300f50b415ad6b6283b4a6a0b6c4cde8fb4df576c73a0f5" [label=""];
  "sha256:07a9689ead8e8fa59300f50b415ad6b6283b4a6a0b6c4cde8fb4df576c73a0f5" -> "sha256:6c62c7f672330c5b9ac225086c7600db7d6202b333dd395add890c9d591ca432" [label=""];
  "sha256:6c62c7f672330c5b9ac225086c7600db7d6202b333dd395add890c9d591ca432" -> "sha256:868bd399e35372402aedf0dab2a1adc53ade5632e06c6d91b6adfb6ea1497ef0" [label=""];
  "sha256:0dca11d2084f5179582edab3d9691cdb388ae833ca6f2ec7da311a8ec5bc65e9" -> "sha256:868bd399e35372402aedf0dab2a1adc53ade5632e06c6d91b6adfb6ea1497ef0" [label=""];
  "sha256:868bd399e35372402aedf0dab2a1adc53ade5632e06c6d91b6adfb6ea1497ef0" -> "sha256:15f3f646809de2b2a0bfbb2d5c42a9569845906bd144ebee3699067f9f86b02b" [label=""];
  "sha256:0dca11d2084f5179582edab3d9691cdb388ae833ca6f2ec7da311a8ec5bc65e9" -> "sha256:15f3f646809de2b2a0bfbb2d5c42a9569845906bd144ebee3699067f9f86b02b" [label=""];
  "sha256:15f3f646809de2b2a0bfbb2d5c42a9569845906bd144ebee3699067f9f86b02b" -> "sha256:13ba72f70603701d2f5adcab5f40d91d30900a6aba1cc82636731ba3a56a01aa" [label=""];
  "sha256:13ba72f70603701d2f5adcab5f40d91d30900a6aba1cc82636731ba3a56a01aa" -> "sha256:f0add2e06b4282e02ff2c8e6e2ed5b29b9d45a6377dfb2ce6ed12d924e8d5d8c" [label=""];
  "sha256:f0add2e06b4282e02ff2c8e6e2ed5b29b9d45a6377dfb2ce6ed12d924e8d5d8c" -> "sha256:3207cabcd53dad598099ed4e2833aaf438b0ba8fa6daca4a98179844fe2dfbef" [label=""];
  "sha256:0dca11d2084f5179582edab3d9691cdb388ae833ca6f2ec7da311a8ec5bc65e9" -> "sha256:3207cabcd53dad598099ed4e2833aaf438b0ba8fa6daca4a98179844fe2dfbef" [label=""];
  "sha256:3207cabcd53dad598099ed4e2833aaf438b0ba8fa6daca4a98179844fe2dfbef" -> "sha256:bf416cd6969391b138c3845f13f2e5c4c936e34152e1e4e523a7c1b21fb24d91" [label=""];
  "sha256:bf416cd6969391b138c3845f13f2e5c4c936e34152e1e4e523a7c1b21fb24d91" -> "sha256:dc2aa2c6f7154b7608cb1aaa77eb40618cca383697b9b25ae6a1650e9e196392" [label=""];
  "sha256:0dca11d2084f5179582edab3d9691cdb388ae833ca6f2ec7da311a8ec5bc65e9" -> "sha256:dc2aa2c6f7154b7608cb1aaa77eb40618cca383697b9b25ae6a1650e9e196392" [label=""];
  "sha256:dc2aa2c6f7154b7608cb1aaa77eb40618cca383697b9b25ae6a1650e9e196392" -> "sha256:88e12d57b47653b837de3661fb7dee1a4b8743c10408a9e7888f7e809de8dd85" [label=""];
  "sha256:88e12d57b47653b837de3661fb7dee1a4b8743c10408a9e7888f7e809de8dd85" -> "sha256:385015d6cd0b61eb8fc7f5e5ee78a6c0c25b60d7abd82ec43ab3175c1c36dec8" [label=""];
  "sha256:385015d6cd0b61eb8fc7f5e5ee78a6c0c25b60d7abd82ec43ab3175c1c36dec8" -> "sha256:27012d9939b69c137679343cef71f7adbe67f8444558f40e7842ec6ee84b2236" [label=""];
  "sha256:0dca11d2084f5179582edab3d9691cdb388ae833ca6f2ec7da311a8ec5bc65e9" -> "sha256:27012d9939b69c137679343cef71f7adbe67f8444558f40e7842ec6ee84b2236" [label=""];
  "sha256:27012d9939b69c137679343cef71f7adbe67f8444558f40e7842ec6ee84b2236" -> "sha256:f256e2ad72e0aadf3d3cda3826e539922dc382340d5be270dce6c1ee23f82b6e" [label=""];
  "sha256:f256e2ad72e0aadf3d3cda3826e539922dc382340d5be270dce6c1ee23f82b6e" -> "sha256:191385930108b9f99d1ad210f7a7b4f8f13a2721b474a11b1df12a55b002b366" [label=""];
}

