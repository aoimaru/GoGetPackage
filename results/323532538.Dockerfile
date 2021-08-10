[app/sources/323532538.Dockerfile]
digraph {
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" [label="docker-image://docker.io/library/python:3.5" shape="ellipse"];
  "sha256:96e81c5263a0c795cf058a64aee9089444e4d22bc3b6de99f4102ed31d69eeb6" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:f90a7ee401f39f5b243a2954a5b74a1d7cf2ec97481d29c982db0701021a9d57" [label="/bin/sh -c apt-get -y install nano vim" shape="box"];
  "sha256:8d5c9ccee498e84c5a188cb84c98eef2d86389365811b0b3e669782111905cfd" [label="/bin/sh -c apt-get -y install git" shape="box"];
  "sha256:e14b36d57ecb8a37fd6a169b66336f57073565ecefde61c0c77c46de26e523aa" [label="/bin/sh -c apt-get -y install python3-pydot python-pydot python-pydot-ng graphviz" shape="box"];
  "sha256:429b23be7636637911d7f3c075e18e57d66965416c146c06fd12a7e02c1c4925" [label="/bin/sh -c apt-get -y install python3-tk" shape="box"];
  "sha256:2cb5de217473562242a8b6960a0f479d295953121dccf366244c4cf7696b2742" [label="/bin/sh -c apt-get -y install zip unzip" shape="box"];
  "sha256:494ec8ebbc1238cca31d17b75e5f857064a1a7b14da8753a057eb7cd7fd1cae8" [label="/bin/sh -c wget https://github.com/pm4py/pm4py-source/archive/develop.zip" shape="box"];
  "sha256:f1fb2811a79ecaed505a6bc18f4ded325a20fc56f0ba6c0bb4e803277e7af562" [label="/bin/sh -c unzip develop.zip" shape="box"];
  "sha256:f6cbb388cd18a5bd157cf2b77ebc3daa7b2f266125582321ff402a7d9cf1e4aa" [label="/bin/sh -c cd pm4py-source-develop && pip install -r requirements_stable.txt && cp tests/test_dockers/setups/setup_develop.py setup.py && python setup.py install" shape="box"];
  "sha256:afdd42b543cd7a12d3d731651a56c10b661f7120eb12eadf7178d04bf9b0430a" [label="sha256:afdd42b543cd7a12d3d731651a56c10b661f7120eb12eadf7178d04bf9b0430a" shape="plaintext"];
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" -> "sha256:96e81c5263a0c795cf058a64aee9089444e4d22bc3b6de99f4102ed31d69eeb6" [label=""];
  "sha256:96e81c5263a0c795cf058a64aee9089444e4d22bc3b6de99f4102ed31d69eeb6" -> "sha256:f90a7ee401f39f5b243a2954a5b74a1d7cf2ec97481d29c982db0701021a9d57" [label=""];
  "sha256:f90a7ee401f39f5b243a2954a5b74a1d7cf2ec97481d29c982db0701021a9d57" -> "sha256:8d5c9ccee498e84c5a188cb84c98eef2d86389365811b0b3e669782111905cfd" [label=""];
  "sha256:8d5c9ccee498e84c5a188cb84c98eef2d86389365811b0b3e669782111905cfd" -> "sha256:e14b36d57ecb8a37fd6a169b66336f57073565ecefde61c0c77c46de26e523aa" [label=""];
  "sha256:e14b36d57ecb8a37fd6a169b66336f57073565ecefde61c0c77c46de26e523aa" -> "sha256:429b23be7636637911d7f3c075e18e57d66965416c146c06fd12a7e02c1c4925" [label=""];
  "sha256:429b23be7636637911d7f3c075e18e57d66965416c146c06fd12a7e02c1c4925" -> "sha256:2cb5de217473562242a8b6960a0f479d295953121dccf366244c4cf7696b2742" [label=""];
  "sha256:2cb5de217473562242a8b6960a0f479d295953121dccf366244c4cf7696b2742" -> "sha256:494ec8ebbc1238cca31d17b75e5f857064a1a7b14da8753a057eb7cd7fd1cae8" [label=""];
  "sha256:494ec8ebbc1238cca31d17b75e5f857064a1a7b14da8753a057eb7cd7fd1cae8" -> "sha256:f1fb2811a79ecaed505a6bc18f4ded325a20fc56f0ba6c0bb4e803277e7af562" [label=""];
  "sha256:f1fb2811a79ecaed505a6bc18f4ded325a20fc56f0ba6c0bb4e803277e7af562" -> "sha256:f6cbb388cd18a5bd157cf2b77ebc3daa7b2f266125582321ff402a7d9cf1e4aa" [label=""];
  "sha256:f6cbb388cd18a5bd157cf2b77ebc3daa7b2f266125582321ff402a7d9cf1e4aa" -> "sha256:afdd42b543cd7a12d3d731651a56c10b661f7120eb12eadf7178d04bf9b0430a" [label=""];
}

