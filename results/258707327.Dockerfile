[app/sources/258707327.Dockerfile]
digraph {
  "sha256:053ecd3ccb5b5371ec5324bb97a445ab526cbab6a96d623914e0e02f9f187dca" [label="docker-image://docker.io/ray-project/deploy:latest" shape="ellipse"];
  "sha256:82b1f35c864fde01e3035c06fc4a80602cd2afa4b0b88ca7387bd2847d288252" [label="/bin/sh -c conda install -y numpy" shape="box"];
  "sha256:7a3d93b84ca7bfd1dc652f947ddd43bdf655e66db82e71ab11dee15175c9d474" [label="/bin/sh -c apt-get install -y zlib1g-dev" shape="box"];
  "sha256:50895c049643e21bf99249c7e0a42d543b733defe7b6d8445c94951957216b9c" [label="/bin/sh -c conda remove -y --force wrapt" shape="box"];
  "sha256:72b8dc4358f1627ee5c8d7441deb7ec88e7fe073e60c9abde37e4699672eac90" [label="/bin/sh -c pip install gym[atari] opencv-python-headless tensorflow lz4 keras pytest-timeout smart_open" shape="box"];
  "sha256:092a57a67aac7a8036a3a65b0f66fec3df0bf7914ccb1a1be5e8122014628fa5" [label="/bin/sh -c pip install -U h5py  # Mutes FutureWarnings" shape="box"];
  "sha256:52f81b4cfe00729fc74bd8578e4297e3fe04ce159cda87a1a6dd61da7610ee9c" [label="/bin/sh -c pip install --upgrade bayesian-optimization" shape="box"];
  "sha256:2475cf838be3405c0f78dca3c93202c9bccec66935e0b64b4af91f0d3fd3fba1" [label="/bin/sh -c pip install --upgrade git+git://github.com/hyperopt/hyperopt.git" shape="box"];
  "sha256:9e8a67123a062e9e20a23a83f786ae6230efbe0cf076874b6968384f9428769d" [label="/bin/sh -c pip install --upgrade sigopt" shape="box"];
  "sha256:d331fd979ab65121deec1202d3baffd2fa91337194918d94b3be74a5e9774e8b" [label="/bin/sh -c pip install --upgrade nevergrad" shape="box"];
  "sha256:e0c9b450858a17e288f6fec1c8a3f028895d513d8080eefa873e6f9af0a9ca28" [label="/bin/sh -c pip install --upgrade scikit-optimize" shape="box"];
  "sha256:8227ab1467e1871525dd4282cc91f40e10124bd94a6aaef9466ccfe3fc237938" [label="/bin/sh -c pip install -U pytest-remotedata>=0.3.1" shape="box"];
  "sha256:671bb1fc40a822cd39d149d052a7615cd397d9484b126998a4d92bcc9201d172" [label="/bin/sh -c conda install pytorch-cpu torchvision-cpu -c pytorch" shape="box"];
  "sha256:02af58fb2e69b474948869ec2870d8a43c9d0a2cfa8c877b69bcc995cc4988a3" [label="sha256:02af58fb2e69b474948869ec2870d8a43c9d0a2cfa8c877b69bcc995cc4988a3" shape="plaintext"];
  "sha256:053ecd3ccb5b5371ec5324bb97a445ab526cbab6a96d623914e0e02f9f187dca" -> "sha256:82b1f35c864fde01e3035c06fc4a80602cd2afa4b0b88ca7387bd2847d288252" [label=""];
  "sha256:82b1f35c864fde01e3035c06fc4a80602cd2afa4b0b88ca7387bd2847d288252" -> "sha256:7a3d93b84ca7bfd1dc652f947ddd43bdf655e66db82e71ab11dee15175c9d474" [label=""];
  "sha256:7a3d93b84ca7bfd1dc652f947ddd43bdf655e66db82e71ab11dee15175c9d474" -> "sha256:50895c049643e21bf99249c7e0a42d543b733defe7b6d8445c94951957216b9c" [label=""];
  "sha256:50895c049643e21bf99249c7e0a42d543b733defe7b6d8445c94951957216b9c" -> "sha256:72b8dc4358f1627ee5c8d7441deb7ec88e7fe073e60c9abde37e4699672eac90" [label=""];
  "sha256:72b8dc4358f1627ee5c8d7441deb7ec88e7fe073e60c9abde37e4699672eac90" -> "sha256:092a57a67aac7a8036a3a65b0f66fec3df0bf7914ccb1a1be5e8122014628fa5" [label=""];
  "sha256:092a57a67aac7a8036a3a65b0f66fec3df0bf7914ccb1a1be5e8122014628fa5" -> "sha256:52f81b4cfe00729fc74bd8578e4297e3fe04ce159cda87a1a6dd61da7610ee9c" [label=""];
  "sha256:52f81b4cfe00729fc74bd8578e4297e3fe04ce159cda87a1a6dd61da7610ee9c" -> "sha256:2475cf838be3405c0f78dca3c93202c9bccec66935e0b64b4af91f0d3fd3fba1" [label=""];
  "sha256:2475cf838be3405c0f78dca3c93202c9bccec66935e0b64b4af91f0d3fd3fba1" -> "sha256:9e8a67123a062e9e20a23a83f786ae6230efbe0cf076874b6968384f9428769d" [label=""];
  "sha256:9e8a67123a062e9e20a23a83f786ae6230efbe0cf076874b6968384f9428769d" -> "sha256:d331fd979ab65121deec1202d3baffd2fa91337194918d94b3be74a5e9774e8b" [label=""];
  "sha256:d331fd979ab65121deec1202d3baffd2fa91337194918d94b3be74a5e9774e8b" -> "sha256:e0c9b450858a17e288f6fec1c8a3f028895d513d8080eefa873e6f9af0a9ca28" [label=""];
  "sha256:e0c9b450858a17e288f6fec1c8a3f028895d513d8080eefa873e6f9af0a9ca28" -> "sha256:8227ab1467e1871525dd4282cc91f40e10124bd94a6aaef9466ccfe3fc237938" [label=""];
  "sha256:8227ab1467e1871525dd4282cc91f40e10124bd94a6aaef9466ccfe3fc237938" -> "sha256:671bb1fc40a822cd39d149d052a7615cd397d9484b126998a4d92bcc9201d172" [label=""];
  "sha256:671bb1fc40a822cd39d149d052a7615cd397d9484b126998a4d92bcc9201d172" -> "sha256:02af58fb2e69b474948869ec2870d8a43c9d0a2cfa8c877b69bcc995cc4988a3" [label=""];
}

