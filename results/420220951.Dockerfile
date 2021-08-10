[app/sources/420220951.Dockerfile]
digraph {
  "sha256:b53c6b5ff1ff1067f1e827277c62b1497e7a88eebaffc000b48684e8d45be2e7" [label="docker-image://docker.io/library/python:3.7.2-slim-stretch" shape="ellipse"];
  "sha256:1d4d6faa57acfea4360f44bd7c0e981ee97a586b28f92f95e21f0ea42a084ff2" [label="/bin/sh -c apt-get update &&     apt-get install --yes curl" shape="box"];
  "sha256:116ba7df492fc4805e98669f29dd71f570111c66f6790e334cb896856fba9c62" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:163ed28bed89b37b1fcb57a3ed75294364c745d8d88e8d1431857ae8ff6afc0d" [label="/bin/sh -c pip3 install virtualenv" shape="box"];
  "sha256:c743ccbdc449cdae29d4bcc53390063cf57c52a215da5abe6f009e4ae68a0b67" [label="/bin/sh -c virtualenv -p python3 /appenv" shape="box"];
  "sha256:05dbe5a2c5f0acacb3a060bf5e2ba0c22b20dad6a38133a4503f7172b8869b82" [label="/bin/sh -c . /appenv/bin/activate; pip install -U pip" shape="box"];
  "sha256:2402d1a709a380aef422ce5f18c592ba76aec16a99c1445db336385e51ad81eb" [label="/bin/sh -c apt-get update &&     apt-get install --yes build-essential autoconf libtool pkg-config     libgflags-dev libgtest-dev clang libc++-dev automake git" shape="box"];
  "sha256:c3a0b301961e76df8df78f9440951dd87015744ee68b06b2d4ae1270d417ddfb" [label="/bin/sh -c . /appenv/bin/activate;     pip install auditwheel" shape="box"];
  "sha256:0183d35cb3907c8875a6d70a73a6dd4e21e50824e757f00e0012bb2fa3f3a386" [label="local://context" shape="ellipse"];
  "sha256:9b2a8c2833c4eba95d7c2c909ff9ff5359217b58d2f194552f8e877a496fe647" [label="copy{src=/, dest=/application}" shape="note"];
  "sha256:5c0e5bb16d0a1b194d5b27da7116ea15c0cd422627ccf928b3cb34afbc25ebb6" [label="/bin/sh -c . /appenv/bin/activate;     cd /application;     pip wheel \".[dev]\"" shape="box"];
  "sha256:f6a6c8d9bbd0b879606509f1ddf00734ad6bf66a47df23fe1dbb974e132b2bd9" [label="copy{src=/application/wheelhouse, dest=/wheelhouse}" shape="note"];
  "sha256:06d103f934c4f0e4aa671141516ecc1c89c1e8dba1df3c71f5491fe4619e0cdf" [label="/bin/sh -c . /appenv/bin/activate &&     pip install --no-index -f /wheelhouse nameko_examples_grpc_products" shape="box"];
  "sha256:4ea6d4f4df49b3d1b36b3bfdd476f365bc1efe00b1ca66cb5854041072dd9108" [label="copy{src=/appenv, dest=/appenv}" shape="note"];
  "sha256:d0d9eac895c23a3f460d645475a524602d39404eefbe8f061ae7b9067d1b0dc5" [label="copy{src=/config.yaml, dest=/var/nameko/config.yaml}" shape="note"];
  "sha256:7eb441755e1e30c8c944aca233a9f7738737f8ac1a79caf04bc4472ff7221f6e" [label="mkdir{path=/var/nameko}" shape="note"];
  "sha256:4405803adf923c2ad2790f18beb9d2979887f928d6f43e23463a09687b03e8c4" [label="/bin/sh -c rm -rf /var/nameko/wheelhouse" shape="box"];
  "sha256:d95cb9b518e1efffe1e9df21b67db92f41b599d07dd95478c222735d3d28a3fd" [label="sha256:d95cb9b518e1efffe1e9df21b67db92f41b599d07dd95478c222735d3d28a3fd" shape="plaintext"];
  "sha256:b53c6b5ff1ff1067f1e827277c62b1497e7a88eebaffc000b48684e8d45be2e7" -> "sha256:1d4d6faa57acfea4360f44bd7c0e981ee97a586b28f92f95e21f0ea42a084ff2" [label=""];
  "sha256:1d4d6faa57acfea4360f44bd7c0e981ee97a586b28f92f95e21f0ea42a084ff2" -> "sha256:116ba7df492fc4805e98669f29dd71f570111c66f6790e334cb896856fba9c62" [label=""];
  "sha256:116ba7df492fc4805e98669f29dd71f570111c66f6790e334cb896856fba9c62" -> "sha256:163ed28bed89b37b1fcb57a3ed75294364c745d8d88e8d1431857ae8ff6afc0d" [label=""];
  "sha256:163ed28bed89b37b1fcb57a3ed75294364c745d8d88e8d1431857ae8ff6afc0d" -> "sha256:c743ccbdc449cdae29d4bcc53390063cf57c52a215da5abe6f009e4ae68a0b67" [label=""];
  "sha256:c743ccbdc449cdae29d4bcc53390063cf57c52a215da5abe6f009e4ae68a0b67" -> "sha256:05dbe5a2c5f0acacb3a060bf5e2ba0c22b20dad6a38133a4503f7172b8869b82" [label=""];
  "sha256:05dbe5a2c5f0acacb3a060bf5e2ba0c22b20dad6a38133a4503f7172b8869b82" -> "sha256:2402d1a709a380aef422ce5f18c592ba76aec16a99c1445db336385e51ad81eb" [label=""];
  "sha256:2402d1a709a380aef422ce5f18c592ba76aec16a99c1445db336385e51ad81eb" -> "sha256:c3a0b301961e76df8df78f9440951dd87015744ee68b06b2d4ae1270d417ddfb" [label=""];
  "sha256:c3a0b301961e76df8df78f9440951dd87015744ee68b06b2d4ae1270d417ddfb" -> "sha256:9b2a8c2833c4eba95d7c2c909ff9ff5359217b58d2f194552f8e877a496fe647" [label=""];
  "sha256:0183d35cb3907c8875a6d70a73a6dd4e21e50824e757f00e0012bb2fa3f3a386" -> "sha256:9b2a8c2833c4eba95d7c2c909ff9ff5359217b58d2f194552f8e877a496fe647" [label=""];
  "sha256:9b2a8c2833c4eba95d7c2c909ff9ff5359217b58d2f194552f8e877a496fe647" -> "sha256:5c0e5bb16d0a1b194d5b27da7116ea15c0cd422627ccf928b3cb34afbc25ebb6" [label=""];
  "sha256:05dbe5a2c5f0acacb3a060bf5e2ba0c22b20dad6a38133a4503f7172b8869b82" -> "sha256:f6a6c8d9bbd0b879606509f1ddf00734ad6bf66a47df23fe1dbb974e132b2bd9" [label=""];
  "sha256:5c0e5bb16d0a1b194d5b27da7116ea15c0cd422627ccf928b3cb34afbc25ebb6" -> "sha256:f6a6c8d9bbd0b879606509f1ddf00734ad6bf66a47df23fe1dbb974e132b2bd9" [label=""];
  "sha256:f6a6c8d9bbd0b879606509f1ddf00734ad6bf66a47df23fe1dbb974e132b2bd9" -> "sha256:06d103f934c4f0e4aa671141516ecc1c89c1e8dba1df3c71f5491fe4619e0cdf" [label=""];
  "sha256:05dbe5a2c5f0acacb3a060bf5e2ba0c22b20dad6a38133a4503f7172b8869b82" -> "sha256:4ea6d4f4df49b3d1b36b3bfdd476f365bc1efe00b1ca66cb5854041072dd9108" [label=""];
  "sha256:06d103f934c4f0e4aa671141516ecc1c89c1e8dba1df3c71f5491fe4619e0cdf" -> "sha256:4ea6d4f4df49b3d1b36b3bfdd476f365bc1efe00b1ca66cb5854041072dd9108" [label=""];
  "sha256:4ea6d4f4df49b3d1b36b3bfdd476f365bc1efe00b1ca66cb5854041072dd9108" -> "sha256:d0d9eac895c23a3f460d645475a524602d39404eefbe8f061ae7b9067d1b0dc5" [label=""];
  "sha256:0183d35cb3907c8875a6d70a73a6dd4e21e50824e757f00e0012bb2fa3f3a386" -> "sha256:d0d9eac895c23a3f460d645475a524602d39404eefbe8f061ae7b9067d1b0dc5" [label=""];
  "sha256:d0d9eac895c23a3f460d645475a524602d39404eefbe8f061ae7b9067d1b0dc5" -> "sha256:7eb441755e1e30c8c944aca233a9f7738737f8ac1a79caf04bc4472ff7221f6e" [label=""];
  "sha256:7eb441755e1e30c8c944aca233a9f7738737f8ac1a79caf04bc4472ff7221f6e" -> "sha256:4405803adf923c2ad2790f18beb9d2979887f928d6f43e23463a09687b03e8c4" [label=""];
  "sha256:4405803adf923c2ad2790f18beb9d2979887f928d6f43e23463a09687b03e8c4" -> "sha256:d95cb9b518e1efffe1e9df21b67db92f41b599d07dd95478c222735d3d28a3fd" [label=""];
}

