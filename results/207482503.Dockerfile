[app/sources/207482503.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" [label="/bin/sh -c apt-get update && apt-get install libc6-dev-i386 curl unzip -y" shape="box"];
  "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" [label="/bin/sh -c mkdir -p /steam" shape="box"];
  "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" [label="/bin/sh -c curl http://media.steampowered.com/client/steamcmd_linux.tar.gz | tar vxz -C /steam" shape="box"];
  "sha256:896613e6978dd5b8a62ac3b5a8e29e07c2e9bc55395c616344794da81ae3e932" [label="local://context" shape="ellipse"];
  "sha256:02a969a65a9a990ae96042e7cc387f049b1b73d3c86cb75b7df9f6600269c7e4" [label="copy{src=/script, dest=/steam/script}" shape="note"];
  "sha256:e08416cf8d80ef034a40ec0866594c6217a95549991eaa299506e66a75fe0b55" [label="/bin/sh -c /steam/steamcmd.sh +runscript /steam/script" shape="box"];
  "sha256:a57f8c70ce0bd9bf085d2a03b55455f9ba40029fed05cd777ff1021b03f8b584" [label="/bin/sh -c curl http://mirror.pointysoftware.net/alliedmodders/mmsource-1.10.0-linux.tar.gz | tar vxz -C /steam/tf2/tf" shape="box"];
  "sha256:39778f89ac3d4103294755f89652a7617a6e4a20372afc215a7e786fbc0dfcd8" [label="/bin/sh -c curl http://mirror.pointysoftware.net/alliedmodders/sourcemod-1.5.3-linux.tar.gz | tar vxz -C /steam/tf2/tf" shape="box"];
  "sha256:298f5a7b086e08e084a4239a9392bf28ed43ba9605ad737d00fe6a2581ef0cc9" [label="copy{src=/server.cfg, dest=/steam/tf2/tf/cfg/server.cfg}" shape="note"];
  "sha256:388880ff4de85cc32cdff8212cd7acc9af35bd0444d28a2d308f96bafaa6addc" [label="copy{src=/ctf_2fort.cfg, dest=/steam/tf2/tf/cfg/ctf_2fort.cfg}" shape="note"];
  "sha256:51f6dae26b771e36fa7365bb8636fdb1a0f2f622c2ad414e3ab92a246960e49b" [label="copy{src=/sourcemod.cfg, dest=/steam/tf2/tf/cfg/sourcemod/sourcemod.cfg}" shape="note"];
  "sha256:35624a2d67006fed2a539f137b0e8f6fe3295bc705ab8d3d5dddf96d70b74543" [label="/bin/sh -c rm -r /steam/tf2/tf/addons/sourcemod/configs" shape="box"];
  "sha256:5fb452fbd03a660c138a699f06b830cd9e1c6a4dc27025146c85c279d7c67f59" [label="copy{src=/configs, dest=/steam/tf2/tf/addons/sourcemod/configs}" shape="note"];
  "sha256:17264a8915fb81a9fc08bf0b454c79f788891db61fef0de15df2954178e351e0" [label="/bin/sh -c mkdir -p /steam/tf2/tf/addons/sourcemod/translations/en" shape="box"];
  "sha256:6041b9ee38d5673101a3854046907282fefdc06d16e4098a4b298dfa492a39c1" [label="/bin/sh -c cp /steam/tf2/tf/addons/sourcemod/translations/*.txt /steam/tf2/tf/addons/sourcemod/translations/en" shape="box"];
  "sha256:9f5c89e1a258041a14e5cd58dc0615ea90567456ef0bdb8fc0ae00685f163d6d" [label="sha256:9f5c89e1a258041a14e5cd58dc0615ea90567456ef0bdb8fc0ae00685f163d6d" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" [label=""];
  "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" -> "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" [label=""];
  "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" -> "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" [label=""];
  "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" -> "sha256:02a969a65a9a990ae96042e7cc387f049b1b73d3c86cb75b7df9f6600269c7e4" [label=""];
  "sha256:896613e6978dd5b8a62ac3b5a8e29e07c2e9bc55395c616344794da81ae3e932" -> "sha256:02a969a65a9a990ae96042e7cc387f049b1b73d3c86cb75b7df9f6600269c7e4" [label=""];
  "sha256:02a969a65a9a990ae96042e7cc387f049b1b73d3c86cb75b7df9f6600269c7e4" -> "sha256:e08416cf8d80ef034a40ec0866594c6217a95549991eaa299506e66a75fe0b55" [label=""];
  "sha256:e08416cf8d80ef034a40ec0866594c6217a95549991eaa299506e66a75fe0b55" -> "sha256:a57f8c70ce0bd9bf085d2a03b55455f9ba40029fed05cd777ff1021b03f8b584" [label=""];
  "sha256:a57f8c70ce0bd9bf085d2a03b55455f9ba40029fed05cd777ff1021b03f8b584" -> "sha256:39778f89ac3d4103294755f89652a7617a6e4a20372afc215a7e786fbc0dfcd8" [label=""];
  "sha256:39778f89ac3d4103294755f89652a7617a6e4a20372afc215a7e786fbc0dfcd8" -> "sha256:298f5a7b086e08e084a4239a9392bf28ed43ba9605ad737d00fe6a2581ef0cc9" [label=""];
  "sha256:896613e6978dd5b8a62ac3b5a8e29e07c2e9bc55395c616344794da81ae3e932" -> "sha256:298f5a7b086e08e084a4239a9392bf28ed43ba9605ad737d00fe6a2581ef0cc9" [label=""];
  "sha256:298f5a7b086e08e084a4239a9392bf28ed43ba9605ad737d00fe6a2581ef0cc9" -> "sha256:388880ff4de85cc32cdff8212cd7acc9af35bd0444d28a2d308f96bafaa6addc" [label=""];
  "sha256:896613e6978dd5b8a62ac3b5a8e29e07c2e9bc55395c616344794da81ae3e932" -> "sha256:388880ff4de85cc32cdff8212cd7acc9af35bd0444d28a2d308f96bafaa6addc" [label=""];
  "sha256:388880ff4de85cc32cdff8212cd7acc9af35bd0444d28a2d308f96bafaa6addc" -> "sha256:51f6dae26b771e36fa7365bb8636fdb1a0f2f622c2ad414e3ab92a246960e49b" [label=""];
  "sha256:896613e6978dd5b8a62ac3b5a8e29e07c2e9bc55395c616344794da81ae3e932" -> "sha256:51f6dae26b771e36fa7365bb8636fdb1a0f2f622c2ad414e3ab92a246960e49b" [label=""];
  "sha256:51f6dae26b771e36fa7365bb8636fdb1a0f2f622c2ad414e3ab92a246960e49b" -> "sha256:35624a2d67006fed2a539f137b0e8f6fe3295bc705ab8d3d5dddf96d70b74543" [label=""];
  "sha256:35624a2d67006fed2a539f137b0e8f6fe3295bc705ab8d3d5dddf96d70b74543" -> "sha256:5fb452fbd03a660c138a699f06b830cd9e1c6a4dc27025146c85c279d7c67f59" [label=""];
  "sha256:896613e6978dd5b8a62ac3b5a8e29e07c2e9bc55395c616344794da81ae3e932" -> "sha256:5fb452fbd03a660c138a699f06b830cd9e1c6a4dc27025146c85c279d7c67f59" [label=""];
  "sha256:5fb452fbd03a660c138a699f06b830cd9e1c6a4dc27025146c85c279d7c67f59" -> "sha256:17264a8915fb81a9fc08bf0b454c79f788891db61fef0de15df2954178e351e0" [label=""];
  "sha256:17264a8915fb81a9fc08bf0b454c79f788891db61fef0de15df2954178e351e0" -> "sha256:6041b9ee38d5673101a3854046907282fefdc06d16e4098a4b298dfa492a39c1" [label=""];
  "sha256:6041b9ee38d5673101a3854046907282fefdc06d16e4098a4b298dfa492a39c1" -> "sha256:9f5c89e1a258041a14e5cd58dc0615ea90567456ef0bdb8fc0ae00685f163d6d" [label=""];
}

