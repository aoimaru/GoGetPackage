[app/sources/162306442.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" [label="/bin/sh -c apt-get update && apt-get install libc6-dev-i386 curl unzip -y" shape="box"];
  "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" [label="/bin/sh -c mkdir -p /steam" shape="box"];
  "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" [label="/bin/sh -c curl http://media.steampowered.com/client/steamcmd_linux.tar.gz | tar vxz -C /steam" shape="box"];
  "sha256:f479c264231642dc83a58d4493ba74500511a59cbca12bcaeaa8be2224ec6bf3" [label="local://context" shape="ellipse"];
  "sha256:3ce1c54d058e67285590a87b27e30c3165a54b1fe327c5aed7b3a23ccdfc63dd" [label="copy{src=/script, dest=/steam/script}" shape="note"];
  "sha256:86c611415cda40845078f05fa4c879bb3b2e5aa48b0400e60276cedbc0406e56" [label="/bin/sh -c /steam/steamcmd.sh +runscript /steam/script" shape="box"];
  "sha256:81725d253198e685da841608d03cd70829da85b962b88ad8d7b5e69ed24ea673" [label="/bin/sh -c curl http://mirror.pointysoftware.net/alliedmodders/mmsource-1.10.0-linux.tar.gz | tar vxz -C /steam/tf2/tf" shape="box"];
  "sha256:e525d3907c5912149f907cbab45ff849f24107ebbab2fbe0bfaf0b5bf2adfb63" [label="/bin/sh -c curl http://mirror.pointysoftware.net/alliedmodders/sourcemod-1.5.3-linux.tar.gz | tar vxz -C /steam/tf2/tf" shape="box"];
  "sha256:1c7a21d04408be9a0fc37316f5bf187c4979373e992e9f069bbb212e867029d4" [label="copy{src=/server.cfg, dest=/steam/tf2/tf/cfg/server.cfg}" shape="note"];
  "sha256:30eadfb2dba47fd3108e5f540b7d652551e095b44f7cbc7548e1c1c31217658d" [label="copy{src=/ctf_2fort.cfg, dest=/steam/tf2/tf/cfg/ctf_2fort.cfg}" shape="note"];
  "sha256:7544edc4b1254cfddc3bda65ed9522d84d1f94bae38229440b440667349c65d4" [label="copy{src=/sourcemod.cfg, dest=/steam/tf2/tf/cfg/sourcemod/sourcemod.cfg}" shape="note"];
  "sha256:07b8da4eb8154c454ed40cacbcb8409a25d4d4143970f666a5fa7922d23980a3" [label="/bin/sh -c rm -r /steam/tf2/tf/addons/sourcemod/configs" shape="box"];
  "sha256:e8fffefa9af50111134219d37a0e3bdd581c8088f9a9f89ddac0b7a2b090a42f" [label="copy{src=/configs, dest=/steam/tf2/tf/addons/sourcemod/configs}" shape="note"];
  "sha256:52bc6c857a597157ea6dd0205991e1808a53d0ed2bb5ca5641c2da76d63044de" [label="/bin/sh -c mkdir -p /steam/tf2/tf/addons/sourcemod/translations/en" shape="box"];
  "sha256:0d252cf8e5b4be61f39e08581a31b359e555319f12061fc273fce89c2560eab3" [label="/bin/sh -c cp /steam/tf2/tf/addons/sourcemod/translations/*.txt /steam/tf2/tf/addons/sourcemod/translations/en" shape="box"];
  "sha256:3ca20ecd5c65f66ae378e03e2458c62953956bead88c1d2c995b76588c8bcc3b" [label="sha256:3ca20ecd5c65f66ae378e03e2458c62953956bead88c1d2c995b76588c8bcc3b" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" [label=""];
  "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" -> "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" [label=""];
  "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" -> "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" [label=""];
  "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" -> "sha256:3ce1c54d058e67285590a87b27e30c3165a54b1fe327c5aed7b3a23ccdfc63dd" [label=""];
  "sha256:f479c264231642dc83a58d4493ba74500511a59cbca12bcaeaa8be2224ec6bf3" -> "sha256:3ce1c54d058e67285590a87b27e30c3165a54b1fe327c5aed7b3a23ccdfc63dd" [label=""];
  "sha256:3ce1c54d058e67285590a87b27e30c3165a54b1fe327c5aed7b3a23ccdfc63dd" -> "sha256:86c611415cda40845078f05fa4c879bb3b2e5aa48b0400e60276cedbc0406e56" [label=""];
  "sha256:86c611415cda40845078f05fa4c879bb3b2e5aa48b0400e60276cedbc0406e56" -> "sha256:81725d253198e685da841608d03cd70829da85b962b88ad8d7b5e69ed24ea673" [label=""];
  "sha256:81725d253198e685da841608d03cd70829da85b962b88ad8d7b5e69ed24ea673" -> "sha256:e525d3907c5912149f907cbab45ff849f24107ebbab2fbe0bfaf0b5bf2adfb63" [label=""];
  "sha256:e525d3907c5912149f907cbab45ff849f24107ebbab2fbe0bfaf0b5bf2adfb63" -> "sha256:1c7a21d04408be9a0fc37316f5bf187c4979373e992e9f069bbb212e867029d4" [label=""];
  "sha256:f479c264231642dc83a58d4493ba74500511a59cbca12bcaeaa8be2224ec6bf3" -> "sha256:1c7a21d04408be9a0fc37316f5bf187c4979373e992e9f069bbb212e867029d4" [label=""];
  "sha256:1c7a21d04408be9a0fc37316f5bf187c4979373e992e9f069bbb212e867029d4" -> "sha256:30eadfb2dba47fd3108e5f540b7d652551e095b44f7cbc7548e1c1c31217658d" [label=""];
  "sha256:f479c264231642dc83a58d4493ba74500511a59cbca12bcaeaa8be2224ec6bf3" -> "sha256:30eadfb2dba47fd3108e5f540b7d652551e095b44f7cbc7548e1c1c31217658d" [label=""];
  "sha256:30eadfb2dba47fd3108e5f540b7d652551e095b44f7cbc7548e1c1c31217658d" -> "sha256:7544edc4b1254cfddc3bda65ed9522d84d1f94bae38229440b440667349c65d4" [label=""];
  "sha256:f479c264231642dc83a58d4493ba74500511a59cbca12bcaeaa8be2224ec6bf3" -> "sha256:7544edc4b1254cfddc3bda65ed9522d84d1f94bae38229440b440667349c65d4" [label=""];
  "sha256:7544edc4b1254cfddc3bda65ed9522d84d1f94bae38229440b440667349c65d4" -> "sha256:07b8da4eb8154c454ed40cacbcb8409a25d4d4143970f666a5fa7922d23980a3" [label=""];
  "sha256:07b8da4eb8154c454ed40cacbcb8409a25d4d4143970f666a5fa7922d23980a3" -> "sha256:e8fffefa9af50111134219d37a0e3bdd581c8088f9a9f89ddac0b7a2b090a42f" [label=""];
  "sha256:f479c264231642dc83a58d4493ba74500511a59cbca12bcaeaa8be2224ec6bf3" -> "sha256:e8fffefa9af50111134219d37a0e3bdd581c8088f9a9f89ddac0b7a2b090a42f" [label=""];
  "sha256:e8fffefa9af50111134219d37a0e3bdd581c8088f9a9f89ddac0b7a2b090a42f" -> "sha256:52bc6c857a597157ea6dd0205991e1808a53d0ed2bb5ca5641c2da76d63044de" [label=""];
  "sha256:52bc6c857a597157ea6dd0205991e1808a53d0ed2bb5ca5641c2da76d63044de" -> "sha256:0d252cf8e5b4be61f39e08581a31b359e555319f12061fc273fce89c2560eab3" [label=""];
  "sha256:0d252cf8e5b4be61f39e08581a31b359e555319f12061fc273fce89c2560eab3" -> "sha256:3ca20ecd5c65f66ae378e03e2458c62953956bead88c1d2c995b76588c8bcc3b" [label=""];
}

