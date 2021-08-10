[app/sources/252792868.Dockerfile]
digraph {
  "sha256:86886b2cbb73903dac5c27c668c9a341898c2a5025d3080be4d3ab4a2c9ace10" [label="docker-image://gcr.io/google_containers/ubuntu-slim:0.6@sha256:6fce5203ddcbe38d86b396efddd388bd28e1b36ec44deb98af6303397d4c2174" shape="ellipse"];
  "sha256:7ed4e4b001e2c0524e564a39b5dc08f82242a70edcfd1517af8c4434769f9a0f" [label="/bin/sh -c ulimit -n 65536" shape="box"];
  "sha256:4bc2c483070c42b96a0ec4ae366a5777d88f9aeed63e8895a6f41a2ea9a3963e" [label="local://context" shape="ellipse"];
  "sha256:f6a997015b82d0b3791d11dc371320fe41dedfa845490d260097afd7e2774dd1" [label="copy{src=/td-agent.conf, dest=/etc/td-agent/td-agent.conf}" shape="note"];
  "sha256:4d3d14da1965736ff97c3cb21751334a4f8b9511e3c83acd3df0e56cdbd55f23" [label="copy{src=/build.sh, dest=/tmp/build.sh}" shape="note"];
  "sha256:bc383b3170eb7fdfea8b3e6b4c919e7f022fffa99a0ec1ee43b6ce5cecc02afd" [label="/bin/sh -c /tmp/build.sh" shape="box"];
  "sha256:50adc38243fa9ff255542c2c397b967ed11c023921a2f475eab54c1fcaa3b909" [label="sha256:50adc38243fa9ff255542c2c397b967ed11c023921a2f475eab54c1fcaa3b909" shape="plaintext"];
  "sha256:86886b2cbb73903dac5c27c668c9a341898c2a5025d3080be4d3ab4a2c9ace10" -> "sha256:7ed4e4b001e2c0524e564a39b5dc08f82242a70edcfd1517af8c4434769f9a0f" [label=""];
  "sha256:7ed4e4b001e2c0524e564a39b5dc08f82242a70edcfd1517af8c4434769f9a0f" -> "sha256:f6a997015b82d0b3791d11dc371320fe41dedfa845490d260097afd7e2774dd1" [label=""];
  "sha256:4bc2c483070c42b96a0ec4ae366a5777d88f9aeed63e8895a6f41a2ea9a3963e" -> "sha256:f6a997015b82d0b3791d11dc371320fe41dedfa845490d260097afd7e2774dd1" [label=""];
  "sha256:f6a997015b82d0b3791d11dc371320fe41dedfa845490d260097afd7e2774dd1" -> "sha256:4d3d14da1965736ff97c3cb21751334a4f8b9511e3c83acd3df0e56cdbd55f23" [label=""];
  "sha256:4bc2c483070c42b96a0ec4ae366a5777d88f9aeed63e8895a6f41a2ea9a3963e" -> "sha256:4d3d14da1965736ff97c3cb21751334a4f8b9511e3c83acd3df0e56cdbd55f23" [label=""];
  "sha256:4d3d14da1965736ff97c3cb21751334a4f8b9511e3c83acd3df0e56cdbd55f23" -> "sha256:bc383b3170eb7fdfea8b3e6b4c919e7f022fffa99a0ec1ee43b6ce5cecc02afd" [label=""];
  "sha256:bc383b3170eb7fdfea8b3e6b4c919e7f022fffa99a0ec1ee43b6ce5cecc02afd" -> "sha256:50adc38243fa9ff255542c2c397b967ed11c023921a2f475eab54c1fcaa3b909" [label=""];
}

