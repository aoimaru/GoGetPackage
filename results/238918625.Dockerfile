[app/sources/238918625.Dockerfile]
digraph {
  "sha256:5cfc7681f9d010a473b51d9de151d39fda913a2084017b337b6646a2dd852c32" [label="local://context" shape="ellipse"];
  "sha256:6ed80195874a70813284f83324c593a6359bfd8a98c0bd1cfee3467a76456833" [label="docker-image://docker.io/library/python:2.7.15-slim-stretch" shape="ellipse"];
  "sha256:babdf5fa8275422bb9a176c4063aad94f1c72b05233e9519c77d0cee8cbab361" [label="mkdir{path=/duct}" shape="note"];
  "sha256:e4c1d9e4b715cc887dfbbfd0928bffd0c2013d0a2bf022d82a8298be3e79b9e1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:fee0defa9babc7ccb6a6df674e9c0fb5a39f92d4c01a78305df1bff9b0834693" [label="/bin/sh -c apt-get -y upgrade" shape="box"];
  "sha256:b15a8eabc004f12adacf0e7934e1fea1328aed29cd1cd32ddafb2add5acb7778" [label="/bin/sh -c apt-get -y install build-essential python-cryptography python-twisted python-protobuf python-yaml python-openssl" shape="box"];
  "sha256:0821341392681d7afecee66a63d43073ce74f279ace0b0f4472ea9ab02752b50" [label="/bin/sh -c mkdir -p /duct/conf.d" shape="box"];
  "sha256:5aabc23ddf9d77bf1175737fd5c7d31ab8a3fc3c2c22b253e2533d698dec36a7" [label="copy{src=/duct, dest=/duct/duct}" shape="note"];
  "sha256:0c9b4ca27f985a9a2e1522d33380c5f1b1221b54bff696ed6e191cfa6e6475fb" [label="copy{src=/twisted, dest=/duct/twisted}" shape="note"];
  "sha256:4dc917b192c282f991c94abea1dcdd812f572a30c9e183cf4988b3102adaa08a" [label="copy{src=/requirements.txt, dest=/duct/}" shape="note"];
  "sha256:fe26d5935289497e130a975a98dcc15b85368cc8a9ad2ebfc3b3e68f2553625d" [label="copy{src=/setup.py, dest=/duct/}" shape="note"];
  "sha256:e0e62f43f665db35eb56b02d1f1b51955646ddf2df572f8be74512172290bed6" [label="copy{src=/docker/duct.yml, dest=/duct/}" shape="note"];
  "sha256:281c2397885e604c8671c9494c3ec1ca7b0253827d5256376d97a63c69d97f60" [label="/bin/sh -c pip install -e ." shape="box"];
  "sha256:c352200c89db3bf8d0a5ec7b4f5e8f720a86f48f1639d3e46ee998e1a75b31e6" [label="/bin/sh -c apt-get -y purge build-essential" shape="box"];
  "sha256:8767538114bc3c8bfec83455a90d078ec89f2244b187bc43fb1dc34dcdd4bf46" [label="/bin/sh -c apt-get -y autoremove" shape="box"];
  "sha256:9203387ff796bdd67566270bb9a6163fd48f6d311434e28bf28a7b3edeeece47" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:4269d86de61330b637952bb157b274da547cc38e7d584273096e0ad864423dfa" [label="sha256:4269d86de61330b637952bb157b274da547cc38e7d584273096e0ad864423dfa" shape="plaintext"];
  "sha256:6ed80195874a70813284f83324c593a6359bfd8a98c0bd1cfee3467a76456833" -> "sha256:babdf5fa8275422bb9a176c4063aad94f1c72b05233e9519c77d0cee8cbab361" [label=""];
  "sha256:babdf5fa8275422bb9a176c4063aad94f1c72b05233e9519c77d0cee8cbab361" -> "sha256:e4c1d9e4b715cc887dfbbfd0928bffd0c2013d0a2bf022d82a8298be3e79b9e1" [label=""];
  "sha256:e4c1d9e4b715cc887dfbbfd0928bffd0c2013d0a2bf022d82a8298be3e79b9e1" -> "sha256:fee0defa9babc7ccb6a6df674e9c0fb5a39f92d4c01a78305df1bff9b0834693" [label=""];
  "sha256:fee0defa9babc7ccb6a6df674e9c0fb5a39f92d4c01a78305df1bff9b0834693" -> "sha256:b15a8eabc004f12adacf0e7934e1fea1328aed29cd1cd32ddafb2add5acb7778" [label=""];
  "sha256:b15a8eabc004f12adacf0e7934e1fea1328aed29cd1cd32ddafb2add5acb7778" -> "sha256:0821341392681d7afecee66a63d43073ce74f279ace0b0f4472ea9ab02752b50" [label=""];
  "sha256:0821341392681d7afecee66a63d43073ce74f279ace0b0f4472ea9ab02752b50" -> "sha256:5aabc23ddf9d77bf1175737fd5c7d31ab8a3fc3c2c22b253e2533d698dec36a7" [label=""];
  "sha256:5cfc7681f9d010a473b51d9de151d39fda913a2084017b337b6646a2dd852c32" -> "sha256:5aabc23ddf9d77bf1175737fd5c7d31ab8a3fc3c2c22b253e2533d698dec36a7" [label=""];
  "sha256:5aabc23ddf9d77bf1175737fd5c7d31ab8a3fc3c2c22b253e2533d698dec36a7" -> "sha256:0c9b4ca27f985a9a2e1522d33380c5f1b1221b54bff696ed6e191cfa6e6475fb" [label=""];
  "sha256:5cfc7681f9d010a473b51d9de151d39fda913a2084017b337b6646a2dd852c32" -> "sha256:0c9b4ca27f985a9a2e1522d33380c5f1b1221b54bff696ed6e191cfa6e6475fb" [label=""];
  "sha256:0c9b4ca27f985a9a2e1522d33380c5f1b1221b54bff696ed6e191cfa6e6475fb" -> "sha256:4dc917b192c282f991c94abea1dcdd812f572a30c9e183cf4988b3102adaa08a" [label=""];
  "sha256:5cfc7681f9d010a473b51d9de151d39fda913a2084017b337b6646a2dd852c32" -> "sha256:4dc917b192c282f991c94abea1dcdd812f572a30c9e183cf4988b3102adaa08a" [label=""];
  "sha256:4dc917b192c282f991c94abea1dcdd812f572a30c9e183cf4988b3102adaa08a" -> "sha256:fe26d5935289497e130a975a98dcc15b85368cc8a9ad2ebfc3b3e68f2553625d" [label=""];
  "sha256:5cfc7681f9d010a473b51d9de151d39fda913a2084017b337b6646a2dd852c32" -> "sha256:fe26d5935289497e130a975a98dcc15b85368cc8a9ad2ebfc3b3e68f2553625d" [label=""];
  "sha256:fe26d5935289497e130a975a98dcc15b85368cc8a9ad2ebfc3b3e68f2553625d" -> "sha256:e0e62f43f665db35eb56b02d1f1b51955646ddf2df572f8be74512172290bed6" [label=""];
  "sha256:5cfc7681f9d010a473b51d9de151d39fda913a2084017b337b6646a2dd852c32" -> "sha256:e0e62f43f665db35eb56b02d1f1b51955646ddf2df572f8be74512172290bed6" [label=""];
  "sha256:e0e62f43f665db35eb56b02d1f1b51955646ddf2df572f8be74512172290bed6" -> "sha256:281c2397885e604c8671c9494c3ec1ca7b0253827d5256376d97a63c69d97f60" [label=""];
  "sha256:281c2397885e604c8671c9494c3ec1ca7b0253827d5256376d97a63c69d97f60" -> "sha256:c352200c89db3bf8d0a5ec7b4f5e8f720a86f48f1639d3e46ee998e1a75b31e6" [label=""];
  "sha256:c352200c89db3bf8d0a5ec7b4f5e8f720a86f48f1639d3e46ee998e1a75b31e6" -> "sha256:8767538114bc3c8bfec83455a90d078ec89f2244b187bc43fb1dc34dcdd4bf46" [label=""];
  "sha256:8767538114bc3c8bfec83455a90d078ec89f2244b187bc43fb1dc34dcdd4bf46" -> "sha256:9203387ff796bdd67566270bb9a6163fd48f6d311434e28bf28a7b3edeeece47" [label=""];
  "sha256:9203387ff796bdd67566270bb9a6163fd48f6d311434e28bf28a7b3edeeece47" -> "sha256:4269d86de61330b637952bb157b274da547cc38e7d584273096e0ad864423dfa" [label=""];
}

