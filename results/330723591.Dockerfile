[app/sources/330723591.Dockerfile]
digraph {
  "sha256:d9356dcdb8ab49cd372d15870c98252ad5b8cbdc1b4f69d459f711f258ae10a1" [label="local://context" shape="ellipse"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" [label="/bin/sh -c apt-get update && apt-get install libc6-dev-i386 curl unzip -y" shape="box"];
  "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" [label="/bin/sh -c mkdir -p /steam" shape="box"];
  "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" [label="/bin/sh -c curl http://media.steampowered.com/client/steamcmd_linux.tar.gz | tar vxz -C /steam" shape="box"];
  "sha256:1318250fa13d1a4f8d1fab6fa39055fa91708ec0328f9acd9c5dad23b3b39521" [label="copy{src=/script, dest=/steam/script}" shape="note"];
  "sha256:c630a2d30faa5975a8aff1ec495db81559b646f2c665dbe856d17b2d4f440953" [label="/bin/sh -c /steam/steamcmd.sh +runscript /steam/script" shape="box"];
  "sha256:b966e207627834c5163b9ed09f620d90544ecad2dde2c87806b515a73ff85e0e" [label="/bin/sh -c curl http://mirror.pointysoftware.net/alliedmodders/mmsource-1.10.0-linux.tar.gz | tar vxz -C /steam/tf2/tf" shape="box"];
  "sha256:3c5121c27952a92ac0ef3024de3720c380aae22976c2ad8f12b83077084a2ddb" [label="/bin/sh -c curl http://mirror.pointysoftware.net/alliedmodders/sourcemod-1.5.3-linux.tar.gz | tar vxz -C /steam/tf2/tf" shape="box"];
  "sha256:9b9d5eae3d11e4e9a3d0f1fc93054ac658c9002f9cffa12455782010a5c0b719" [label="copy{src=/server.cfg, dest=/steam/tf2/tf/cfg/server.cfg}" shape="note"];
  "sha256:2f2963ff16475da20a9b71300815ac6c968423f3ce1f2ebf4005691087a6fd62" [label="copy{src=/ctf_2fort.cfg, dest=/steam/tf2/tf/cfg/ctf_2fort.cfg}" shape="note"];
  "sha256:13a5b97cc979bc27ba141a5d1de7c5c2bf0dbfd7b4b7a975136fb43ed5e9ca3c" [label="copy{src=/sourcemod.cfg, dest=/steam/tf2/tf/cfg/sourcemod/sourcemod.cfg}" shape="note"];
  "sha256:ebc5020883a58e479a8c50e7434e8a64a42fb039315c5d1224cf1737495ca233" [label="/bin/sh -c rm -r /steam/tf2/tf/addons/sourcemod/configs" shape="box"];
  "sha256:fa0a560666012b650243a4b3309f240142d29771bfcbc7e195076692e91c2178" [label="copy{src=/configs, dest=/steam/tf2/tf/addons/sourcemod/configs}" shape="note"];
  "sha256:6b1820e6c2152c0e578e030f1432c817ecb8f1897134ff4343bb9784f9743dd4" [label="/bin/sh -c mkdir -p /steam/tf2/tf/addons/sourcemod/translations/en" shape="box"];
  "sha256:691c86027ee283b8dcc1a50724dc4a0ae8cdd5a4160540d517f2bb76aa8037fb" [label="/bin/sh -c cp /steam/tf2/tf/addons/sourcemod/translations/*.txt /steam/tf2/tf/addons/sourcemod/translations/en" shape="box"];
  "sha256:2f6ae702a4b0aa56ac1b1a8449164afc9b37b9437ce8a6b2e4b8a80e220f9529" [label="sha256:2f6ae702a4b0aa56ac1b1a8449164afc9b37b9437ce8a6b2e4b8a80e220f9529" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" [label=""];
  "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" -> "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" [label=""];
  "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" -> "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" [label=""];
  "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" -> "sha256:1318250fa13d1a4f8d1fab6fa39055fa91708ec0328f9acd9c5dad23b3b39521" [label=""];
  "sha256:d9356dcdb8ab49cd372d15870c98252ad5b8cbdc1b4f69d459f711f258ae10a1" -> "sha256:1318250fa13d1a4f8d1fab6fa39055fa91708ec0328f9acd9c5dad23b3b39521" [label=""];
  "sha256:1318250fa13d1a4f8d1fab6fa39055fa91708ec0328f9acd9c5dad23b3b39521" -> "sha256:c630a2d30faa5975a8aff1ec495db81559b646f2c665dbe856d17b2d4f440953" [label=""];
  "sha256:c630a2d30faa5975a8aff1ec495db81559b646f2c665dbe856d17b2d4f440953" -> "sha256:b966e207627834c5163b9ed09f620d90544ecad2dde2c87806b515a73ff85e0e" [label=""];
  "sha256:b966e207627834c5163b9ed09f620d90544ecad2dde2c87806b515a73ff85e0e" -> "sha256:3c5121c27952a92ac0ef3024de3720c380aae22976c2ad8f12b83077084a2ddb" [label=""];
  "sha256:3c5121c27952a92ac0ef3024de3720c380aae22976c2ad8f12b83077084a2ddb" -> "sha256:9b9d5eae3d11e4e9a3d0f1fc93054ac658c9002f9cffa12455782010a5c0b719" [label=""];
  "sha256:d9356dcdb8ab49cd372d15870c98252ad5b8cbdc1b4f69d459f711f258ae10a1" -> "sha256:9b9d5eae3d11e4e9a3d0f1fc93054ac658c9002f9cffa12455782010a5c0b719" [label=""];
  "sha256:9b9d5eae3d11e4e9a3d0f1fc93054ac658c9002f9cffa12455782010a5c0b719" -> "sha256:2f2963ff16475da20a9b71300815ac6c968423f3ce1f2ebf4005691087a6fd62" [label=""];
  "sha256:d9356dcdb8ab49cd372d15870c98252ad5b8cbdc1b4f69d459f711f258ae10a1" -> "sha256:2f2963ff16475da20a9b71300815ac6c968423f3ce1f2ebf4005691087a6fd62" [label=""];
  "sha256:2f2963ff16475da20a9b71300815ac6c968423f3ce1f2ebf4005691087a6fd62" -> "sha256:13a5b97cc979bc27ba141a5d1de7c5c2bf0dbfd7b4b7a975136fb43ed5e9ca3c" [label=""];
  "sha256:d9356dcdb8ab49cd372d15870c98252ad5b8cbdc1b4f69d459f711f258ae10a1" -> "sha256:13a5b97cc979bc27ba141a5d1de7c5c2bf0dbfd7b4b7a975136fb43ed5e9ca3c" [label=""];
  "sha256:13a5b97cc979bc27ba141a5d1de7c5c2bf0dbfd7b4b7a975136fb43ed5e9ca3c" -> "sha256:ebc5020883a58e479a8c50e7434e8a64a42fb039315c5d1224cf1737495ca233" [label=""];
  "sha256:ebc5020883a58e479a8c50e7434e8a64a42fb039315c5d1224cf1737495ca233" -> "sha256:fa0a560666012b650243a4b3309f240142d29771bfcbc7e195076692e91c2178" [label=""];
  "sha256:d9356dcdb8ab49cd372d15870c98252ad5b8cbdc1b4f69d459f711f258ae10a1" -> "sha256:fa0a560666012b650243a4b3309f240142d29771bfcbc7e195076692e91c2178" [label=""];
  "sha256:fa0a560666012b650243a4b3309f240142d29771bfcbc7e195076692e91c2178" -> "sha256:6b1820e6c2152c0e578e030f1432c817ecb8f1897134ff4343bb9784f9743dd4" [label=""];
  "sha256:6b1820e6c2152c0e578e030f1432c817ecb8f1897134ff4343bb9784f9743dd4" -> "sha256:691c86027ee283b8dcc1a50724dc4a0ae8cdd5a4160540d517f2bb76aa8037fb" [label=""];
  "sha256:691c86027ee283b8dcc1a50724dc4a0ae8cdd5a4160540d517f2bb76aa8037fb" -> "sha256:2f6ae702a4b0aa56ac1b1a8449164afc9b37b9437ce8a6b2e4b8a80e220f9529" [label=""];
}

