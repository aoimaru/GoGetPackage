[app/sources/395127830.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:cb391c9dafaa74427d9826808cdcf69fef6acffdf46fefb58d5637d5e4589540" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:2c9fe1a96e297dc5683e7c31b9faffc76e71bf84b5c991c5fdd9f203db936d7d" [label="/bin/sh -c apt-get install --yes  build-essential  gcc-multilib  apt-utils  zlib1g-dev  vim-common" shape="box"];
  "sha256:4a224fa7aadb0286790f4ef40e877cfc5a9cc8b133f9bd0d64192073d30979d8" [label="/bin/sh -c apt-get install -y git" shape="box"];
  "sha256:41fbc2d4852125a0f39e0cbf1fb2f4246297690326a8a2974955f6b8009167d5" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:fb074f236e50421c68c59eb0cf5b2d0f5cff8e27e51e6c29ee570ec0fb986fb9" [label="/bin/sh -c pwd" shape="box"];
  "sha256:e7c488d747764655015505fe27fa872f787b9c88b7761ed7bd0b8c953731d5bd" [label="/bin/sh -c git clone https://github.com/alexdobin/STAR.git" shape="box"];
  "sha256:5f3044eef419f5c55e739a374e94d7fce88f81b804483d2353b396839f80a9ff" [label="mkdir{path=/usr/local/STAR}" shape="note"];
  "sha256:0ac0e5e3a4117e85dda2c38ce30180746a40081c578572ad4533c4f9d05b2612" [label="/bin/sh -c pwd" shape="box"];
  "sha256:7c980f101a87d3ba080e68130782c82a496398521fe338956f85aa41d9eb151e" [label="/bin/sh -c git checkout STAR_2.4.0i" shape="box"];
  "sha256:99834728f6456cdf49d542320cdc73637c3208432f16c5f98191d61f507330ec" [label="mkdir{path=/usr/local/STAR/source}" shape="note"];
  "sha256:cb743da1c754ab6c33cd740a2d8e539536265a39021ab410d9868fe2edd7e2a4" [label="/bin/sh -c pwd" shape="box"];
  "sha256:a69242adcc7243bef83f313b689d8a2a07d4d61a734bb1c02f78614b36cb7735" [label="/bin/sh -c make STAR" shape="box"];
  "sha256:bcd4d7020b91968ecebf20596e226bb3ca9b85895bfbf8ca0164087883f99cf1" [label="sha256:bcd4d7020b91968ecebf20596e226bb3ca9b85895bfbf8ca0164087883f99cf1" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:cb391c9dafaa74427d9826808cdcf69fef6acffdf46fefb58d5637d5e4589540" [label=""];
  "sha256:cb391c9dafaa74427d9826808cdcf69fef6acffdf46fefb58d5637d5e4589540" -> "sha256:2c9fe1a96e297dc5683e7c31b9faffc76e71bf84b5c991c5fdd9f203db936d7d" [label=""];
  "sha256:2c9fe1a96e297dc5683e7c31b9faffc76e71bf84b5c991c5fdd9f203db936d7d" -> "sha256:4a224fa7aadb0286790f4ef40e877cfc5a9cc8b133f9bd0d64192073d30979d8" [label=""];
  "sha256:4a224fa7aadb0286790f4ef40e877cfc5a9cc8b133f9bd0d64192073d30979d8" -> "sha256:41fbc2d4852125a0f39e0cbf1fb2f4246297690326a8a2974955f6b8009167d5" [label=""];
  "sha256:41fbc2d4852125a0f39e0cbf1fb2f4246297690326a8a2974955f6b8009167d5" -> "sha256:fb074f236e50421c68c59eb0cf5b2d0f5cff8e27e51e6c29ee570ec0fb986fb9" [label=""];
  "sha256:fb074f236e50421c68c59eb0cf5b2d0f5cff8e27e51e6c29ee570ec0fb986fb9" -> "sha256:e7c488d747764655015505fe27fa872f787b9c88b7761ed7bd0b8c953731d5bd" [label=""];
  "sha256:e7c488d747764655015505fe27fa872f787b9c88b7761ed7bd0b8c953731d5bd" -> "sha256:5f3044eef419f5c55e739a374e94d7fce88f81b804483d2353b396839f80a9ff" [label=""];
  "sha256:5f3044eef419f5c55e739a374e94d7fce88f81b804483d2353b396839f80a9ff" -> "sha256:0ac0e5e3a4117e85dda2c38ce30180746a40081c578572ad4533c4f9d05b2612" [label=""];
  "sha256:0ac0e5e3a4117e85dda2c38ce30180746a40081c578572ad4533c4f9d05b2612" -> "sha256:7c980f101a87d3ba080e68130782c82a496398521fe338956f85aa41d9eb151e" [label=""];
  "sha256:7c980f101a87d3ba080e68130782c82a496398521fe338956f85aa41d9eb151e" -> "sha256:99834728f6456cdf49d542320cdc73637c3208432f16c5f98191d61f507330ec" [label=""];
  "sha256:99834728f6456cdf49d542320cdc73637c3208432f16c5f98191d61f507330ec" -> "sha256:cb743da1c754ab6c33cd740a2d8e539536265a39021ab410d9868fe2edd7e2a4" [label=""];
  "sha256:cb743da1c754ab6c33cd740a2d8e539536265a39021ab410d9868fe2edd7e2a4" -> "sha256:a69242adcc7243bef83f313b689d8a2a07d4d61a734bb1c02f78614b36cb7735" [label=""];
  "sha256:a69242adcc7243bef83f313b689d8a2a07d4d61a734bb1c02f78614b36cb7735" -> "sha256:bcd4d7020b91968ecebf20596e226bb3ca9b85895bfbf8ca0164087883f99cf1" [label=""];
}

