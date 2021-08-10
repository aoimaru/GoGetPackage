[app/sources/311753029.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" [label="/bin/sh -c apt-get update && apt-get install libc6-dev-i386 curl unzip -y" shape="box"];
  "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" [label="/bin/sh -c mkdir -p /steam" shape="box"];
  "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" [label="/bin/sh -c curl http://media.steampowered.com/client/steamcmd_linux.tar.gz | tar vxz -C /steam" shape="box"];
  "sha256:256f82d01a59298f06122dc3ae5b0884aaa6aab56619cbb91ebc103652553d95" [label="local://context" shape="ellipse"];
  "sha256:aacfe3b393be8a89b7788b2de71c06b15f7b392ce1febd76579028175ddd1295" [label="copy{src=/script, dest=/steam/script}" shape="note"];
  "sha256:8923ca72747a07ac0cfe75f68e897e08b7f8fba9026bbb791e8f6f56f875f20d" [label="/bin/sh -c /steam/steamcmd.sh +runscript /steam/script" shape="box"];
  "sha256:8b8de0c4e1e83b7a1408e4ecfb2c1c130543d87416c00eb928926747c736e755" [label="/bin/sh -c curl http://mirror.pointysoftware.net/alliedmodders/mmsource-1.10.0-linux.tar.gz | tar vxz -C /steam/tf2/tf" shape="box"];
  "sha256:08791e4b290c7ac6212346c601524577d3bde84d5fd4f791dd7685bb3d624d62" [label="/bin/sh -c curl http://mirror.pointysoftware.net/alliedmodders/sourcemod-1.5.3-linux.tar.gz | tar vxz -C /steam/tf2/tf" shape="box"];
  "sha256:6f99bfa983a452f57719c4269a536783a0c1ad8606740e8a305a655f42d04184" [label="copy{src=/server.cfg, dest=/steam/tf2/tf/cfg/server.cfg}" shape="note"];
  "sha256:046d5428f797c3ec17095a609243f3e20280b0a29a57ad821fa281447cac785c" [label="copy{src=/ctf_2fort.cfg, dest=/steam/tf2/tf/cfg/ctf_2fort.cfg}" shape="note"];
  "sha256:f9eb0690f9ba275ae662ab1552162a6d17c8f3b7539b8ff14fccdca8dd2817ab" [label="copy{src=/sourcemod.cfg, dest=/steam/tf2/tf/cfg/sourcemod/sourcemod.cfg}" shape="note"];
  "sha256:a4f8441d2fe9ebd0c971ea637bc06f01fbdcab61492aee3c4657aeb00d7a4153" [label="/bin/sh -c rm -r /steam/tf2/tf/addons/sourcemod/configs" shape="box"];
  "sha256:775a8b2e633cceb2b17d16c758987523e7abd033a06e831a651168e044ce0228" [label="copy{src=/configs, dest=/steam/tf2/tf/addons/sourcemod/configs}" shape="note"];
  "sha256:0074ab4f3e5b4fcd4494bde197686c1010718382697ec73ca4ab85738298bde9" [label="/bin/sh -c mkdir -p /steam/tf2/tf/addons/sourcemod/translations/en" shape="box"];
  "sha256:2866fc9a65b3d85aa0e68a7cb10d4015455e2241bb3a8a946db85b61e71cbf0f" [label="/bin/sh -c cp /steam/tf2/tf/addons/sourcemod/translations/*.txt /steam/tf2/tf/addons/sourcemod/translations/en" shape="box"];
  "sha256:429fe753b1dec0cb75230b51dde57f4255f9639b23bef6d22fce79e50c6ad05c" [label="sha256:429fe753b1dec0cb75230b51dde57f4255f9639b23bef6d22fce79e50c6ad05c" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" [label=""];
  "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" -> "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" [label=""];
  "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" -> "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" [label=""];
  "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" -> "sha256:aacfe3b393be8a89b7788b2de71c06b15f7b392ce1febd76579028175ddd1295" [label=""];
  "sha256:256f82d01a59298f06122dc3ae5b0884aaa6aab56619cbb91ebc103652553d95" -> "sha256:aacfe3b393be8a89b7788b2de71c06b15f7b392ce1febd76579028175ddd1295" [label=""];
  "sha256:aacfe3b393be8a89b7788b2de71c06b15f7b392ce1febd76579028175ddd1295" -> "sha256:8923ca72747a07ac0cfe75f68e897e08b7f8fba9026bbb791e8f6f56f875f20d" [label=""];
  "sha256:8923ca72747a07ac0cfe75f68e897e08b7f8fba9026bbb791e8f6f56f875f20d" -> "sha256:8b8de0c4e1e83b7a1408e4ecfb2c1c130543d87416c00eb928926747c736e755" [label=""];
  "sha256:8b8de0c4e1e83b7a1408e4ecfb2c1c130543d87416c00eb928926747c736e755" -> "sha256:08791e4b290c7ac6212346c601524577d3bde84d5fd4f791dd7685bb3d624d62" [label=""];
  "sha256:08791e4b290c7ac6212346c601524577d3bde84d5fd4f791dd7685bb3d624d62" -> "sha256:6f99bfa983a452f57719c4269a536783a0c1ad8606740e8a305a655f42d04184" [label=""];
  "sha256:256f82d01a59298f06122dc3ae5b0884aaa6aab56619cbb91ebc103652553d95" -> "sha256:6f99bfa983a452f57719c4269a536783a0c1ad8606740e8a305a655f42d04184" [label=""];
  "sha256:6f99bfa983a452f57719c4269a536783a0c1ad8606740e8a305a655f42d04184" -> "sha256:046d5428f797c3ec17095a609243f3e20280b0a29a57ad821fa281447cac785c" [label=""];
  "sha256:256f82d01a59298f06122dc3ae5b0884aaa6aab56619cbb91ebc103652553d95" -> "sha256:046d5428f797c3ec17095a609243f3e20280b0a29a57ad821fa281447cac785c" [label=""];
  "sha256:046d5428f797c3ec17095a609243f3e20280b0a29a57ad821fa281447cac785c" -> "sha256:f9eb0690f9ba275ae662ab1552162a6d17c8f3b7539b8ff14fccdca8dd2817ab" [label=""];
  "sha256:256f82d01a59298f06122dc3ae5b0884aaa6aab56619cbb91ebc103652553d95" -> "sha256:f9eb0690f9ba275ae662ab1552162a6d17c8f3b7539b8ff14fccdca8dd2817ab" [label=""];
  "sha256:f9eb0690f9ba275ae662ab1552162a6d17c8f3b7539b8ff14fccdca8dd2817ab" -> "sha256:a4f8441d2fe9ebd0c971ea637bc06f01fbdcab61492aee3c4657aeb00d7a4153" [label=""];
  "sha256:a4f8441d2fe9ebd0c971ea637bc06f01fbdcab61492aee3c4657aeb00d7a4153" -> "sha256:775a8b2e633cceb2b17d16c758987523e7abd033a06e831a651168e044ce0228" [label=""];
  "sha256:256f82d01a59298f06122dc3ae5b0884aaa6aab56619cbb91ebc103652553d95" -> "sha256:775a8b2e633cceb2b17d16c758987523e7abd033a06e831a651168e044ce0228" [label=""];
  "sha256:775a8b2e633cceb2b17d16c758987523e7abd033a06e831a651168e044ce0228" -> "sha256:0074ab4f3e5b4fcd4494bde197686c1010718382697ec73ca4ab85738298bde9" [label=""];
  "sha256:0074ab4f3e5b4fcd4494bde197686c1010718382697ec73ca4ab85738298bde9" -> "sha256:2866fc9a65b3d85aa0e68a7cb10d4015455e2241bb3a8a946db85b61e71cbf0f" [label=""];
  "sha256:2866fc9a65b3d85aa0e68a7cb10d4015455e2241bb3a8a946db85b61e71cbf0f" -> "sha256:429fe753b1dec0cb75230b51dde57f4255f9639b23bef6d22fce79e50c6ad05c" [label=""];
}

