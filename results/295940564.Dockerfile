[app/sources/295940564.Dockerfile]
digraph {
  "sha256:3b866794a883f510906a4f86383a4f5135975df8ccfe63461d4d8a29c225160e" [label="docker-image://docker.io/jupyter/tensorflow-notebook:latest" shape="ellipse"];
  "sha256:d623fe8c3e736d8c68e1bab86bb5f804b7f9d9d42d4f4fca1df3ce4e1172924d" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:31e7bc6723a18d4a1a916172447a0e483f75fbeff04672218cb0cb0a5132c1b6" [label="/bin/sh -c apt-get install -y --no-install-recommends apt-utils" shape="box"];
  "sha256:640759d2d185c399b86baa30d6184db32089eae7f2dac2261385b6c496dcb10a" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:0ca02db7bd6e0aace2e3acc7f714cdb3b0d50fc1cc138fbb33a6d9c7fb6213b2" [label="/bin/sh -c apt-get install -y libav-tools python3 ipython3 python3-pip python3-dev python3-opengl" shape="box"];
  "sha256:5117a74db67c568a34bd207617999ee175e65a5114e3d6de3006d4c7acc38c92" [label="/bin/sh -c apt-get install -y libpq-dev libjpeg-dev libboost-all-dev libsdl2-dev" shape="box"];
  "sha256:53d4f5a896516679dda2b97b900461fc1a46a2cc4763772f05c5e3829b555027" [label="/bin/sh -c apt-get install -y curl cmake swig wget unzip git xpra xvfb flex" shape="box"];
  "sha256:c55ee573712bba93395e41944d3a71a67f172f26cd558a7404ac6e714a54ea5a" [label="/bin/sh -c apt-get install -y libav-tools fluidsynth build-essential qt-sdk" shape="box"];
  "sha256:3263cddaad211dfc3b1371111c49984f22d099e5c60e8e8067c4d45011a0bd0a" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4f386e5b43542ed35e063ea31f8746413a24d35226e89b0358b09720f38d125a" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:ebd4fb3311e63be983b224a18d25b712f2bf4c70dd662e3e486ac7761fa7ece6" [label="/bin/sh -c pip3 install numpy scikit-learn scipy pyglet setuptools pygame" shape="box"];
  "sha256:cdc10ae18272e0b4a6e572fcaa75722d37c29a2d8a727e1c2a5a129a8efb71dd" [label="/bin/sh -c pip3 install gym tensorflow keras asciinema pandas" shape="box"];
  "sha256:80f1bd0cca32b6bb770f1e54cfd25d62b5894a51fd3c61666fc91a4f83e50254" [label="/bin/sh -c pip3 install git+https://github.com/openai/gym-soccer.git@master" shape="box"];
  "sha256:d71a50614db1a6ea360a00d9cec0113a4f728d4710d97c47d050c315b883529a" [label="/bin/sh -c pip3 install git+https://github.com/lusob/gym-ple.git@master" shape="box"];
  "sha256:e93756921cdd93b7880128122132e112e69ef2116da92a87556cb9b843d225be" [label="/bin/sh -c pip3 install git+https://github.com/ntasfi/PyGame-Learning-Environment.git@master" shape="box"];
  "sha256:c9d9150f53f60dbc0d278e11a50f16294c0807cd81a78486a8c6ca9281e11cdb" [label="/bin/sh -c echo '#!/bin/bash' > /tmp/run.sh &&     echo \"nohup sh -c 'tensorboard --logdir=/mnt/notebooks/logs' > /dev/null 2>&1 &\" >> /tmp/run.sh &&     echo 'xvfb-run -s \"-screen 0 1280x720x24\" /usr/local/bin/start-notebook.sh' >> /tmp/run.sh &&     chmod +x /tmp/run.sh" shape="box"];
  "sha256:8c1c8227c2eb2f94466af98f40b256a45a24fb5df16223aa0d0ba465311c91f9" [label="mkdir{path=/mnt/notebooks}" shape="note"];
  "sha256:af95117c7ba36e9a7b8a6f74135540527231b6cc5b7bd38ab5434369874b08b4" [label="sha256:af95117c7ba36e9a7b8a6f74135540527231b6cc5b7bd38ab5434369874b08b4" shape="plaintext"];
  "sha256:3b866794a883f510906a4f86383a4f5135975df8ccfe63461d4d8a29c225160e" -> "sha256:d623fe8c3e736d8c68e1bab86bb5f804b7f9d9d42d4f4fca1df3ce4e1172924d" [label=""];
  "sha256:d623fe8c3e736d8c68e1bab86bb5f804b7f9d9d42d4f4fca1df3ce4e1172924d" -> "sha256:31e7bc6723a18d4a1a916172447a0e483f75fbeff04672218cb0cb0a5132c1b6" [label=""];
  "sha256:31e7bc6723a18d4a1a916172447a0e483f75fbeff04672218cb0cb0a5132c1b6" -> "sha256:640759d2d185c399b86baa30d6184db32089eae7f2dac2261385b6c496dcb10a" [label=""];
  "sha256:640759d2d185c399b86baa30d6184db32089eae7f2dac2261385b6c496dcb10a" -> "sha256:0ca02db7bd6e0aace2e3acc7f714cdb3b0d50fc1cc138fbb33a6d9c7fb6213b2" [label=""];
  "sha256:0ca02db7bd6e0aace2e3acc7f714cdb3b0d50fc1cc138fbb33a6d9c7fb6213b2" -> "sha256:5117a74db67c568a34bd207617999ee175e65a5114e3d6de3006d4c7acc38c92" [label=""];
  "sha256:5117a74db67c568a34bd207617999ee175e65a5114e3d6de3006d4c7acc38c92" -> "sha256:53d4f5a896516679dda2b97b900461fc1a46a2cc4763772f05c5e3829b555027" [label=""];
  "sha256:53d4f5a896516679dda2b97b900461fc1a46a2cc4763772f05c5e3829b555027" -> "sha256:c55ee573712bba93395e41944d3a71a67f172f26cd558a7404ac6e714a54ea5a" [label=""];
  "sha256:c55ee573712bba93395e41944d3a71a67f172f26cd558a7404ac6e714a54ea5a" -> "sha256:3263cddaad211dfc3b1371111c49984f22d099e5c60e8e8067c4d45011a0bd0a" [label=""];
  "sha256:3263cddaad211dfc3b1371111c49984f22d099e5c60e8e8067c4d45011a0bd0a" -> "sha256:4f386e5b43542ed35e063ea31f8746413a24d35226e89b0358b09720f38d125a" [label=""];
  "sha256:4f386e5b43542ed35e063ea31f8746413a24d35226e89b0358b09720f38d125a" -> "sha256:ebd4fb3311e63be983b224a18d25b712f2bf4c70dd662e3e486ac7761fa7ece6" [label=""];
  "sha256:ebd4fb3311e63be983b224a18d25b712f2bf4c70dd662e3e486ac7761fa7ece6" -> "sha256:cdc10ae18272e0b4a6e572fcaa75722d37c29a2d8a727e1c2a5a129a8efb71dd" [label=""];
  "sha256:cdc10ae18272e0b4a6e572fcaa75722d37c29a2d8a727e1c2a5a129a8efb71dd" -> "sha256:80f1bd0cca32b6bb770f1e54cfd25d62b5894a51fd3c61666fc91a4f83e50254" [label=""];
  "sha256:80f1bd0cca32b6bb770f1e54cfd25d62b5894a51fd3c61666fc91a4f83e50254" -> "sha256:d71a50614db1a6ea360a00d9cec0113a4f728d4710d97c47d050c315b883529a" [label=""];
  "sha256:d71a50614db1a6ea360a00d9cec0113a4f728d4710d97c47d050c315b883529a" -> "sha256:e93756921cdd93b7880128122132e112e69ef2116da92a87556cb9b843d225be" [label=""];
  "sha256:e93756921cdd93b7880128122132e112e69ef2116da92a87556cb9b843d225be" -> "sha256:c9d9150f53f60dbc0d278e11a50f16294c0807cd81a78486a8c6ca9281e11cdb" [label=""];
  "sha256:c9d9150f53f60dbc0d278e11a50f16294c0807cd81a78486a8c6ca9281e11cdb" -> "sha256:8c1c8227c2eb2f94466af98f40b256a45a24fb5df16223aa0d0ba465311c91f9" [label=""];
  "sha256:8c1c8227c2eb2f94466af98f40b256a45a24fb5df16223aa0d0ba465311c91f9" -> "sha256:af95117c7ba36e9a7b8a6f74135540527231b6cc5b7bd38ab5434369874b08b4" [label=""];
}

