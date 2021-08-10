[app/sources/275215751.Dockerfile]
digraph {
  "sha256:367cdbdf6fcab5abf53f25348a67438d5ae8334b3a72b20a9768cc90d4ca053a" [label="local://context" shape="ellipse"];
  "sha256:a936dad32d3944ec0fd961ce0c2cada339acd5a97c6c9e3cd9370014dcf30763" [label="docker-image://docker.io/kriansa/cs-16:2018-12-24" shape="ellipse"];
  "sha256:054483cdb00e9f37c23f58b8592ca6090ff92a22659ed6899af0ce1706a5dc0c" [label="copy{src=/cstrike/maps, dest=/cstrike_downloads/maps}" shape="note"];
  "sha256:e9d4e20ea4483e2100def5a5358b404ebeb5c12c929adb83770cdfa07c0a52ac" [label="copy{src=/cstrike/addons, dest=/cstrike/addons}" shape="note"];
  "sha256:a26aae41aebdc58dde55a0f28afe2a99f8ca6019be200a617855d40dec4a6218" [label="copy{src=/cstrike/cfgs, dest=/cstrike/cfgs}" shape="note"];
  "sha256:3ff90c584889de7cebd87606e28bb5492a7d994f57b04769c362ad8c9d7d471e" [label="copy{src=/cstrike/liblist.gam, dest=/cstrike/},copy{src=/cstrike/mapcycle.txt, dest=/cstrike/},copy{src=/cstrike/server.cfg, dest=/cstrike/},copy{src=/cstrike/motd.html, dest=/cstrike/}" shape="note"];
  "sha256:f1d73d8f70397c2fdcee38211f67046cab17404b06b8431d650b5827d080ed1b" [label="sha256:f1d73d8f70397c2fdcee38211f67046cab17404b06b8431d650b5827d080ed1b" shape="plaintext"];
  "sha256:a936dad32d3944ec0fd961ce0c2cada339acd5a97c6c9e3cd9370014dcf30763" -> "sha256:054483cdb00e9f37c23f58b8592ca6090ff92a22659ed6899af0ce1706a5dc0c" [label=""];
  "sha256:367cdbdf6fcab5abf53f25348a67438d5ae8334b3a72b20a9768cc90d4ca053a" -> "sha256:054483cdb00e9f37c23f58b8592ca6090ff92a22659ed6899af0ce1706a5dc0c" [label=""];
  "sha256:054483cdb00e9f37c23f58b8592ca6090ff92a22659ed6899af0ce1706a5dc0c" -> "sha256:e9d4e20ea4483e2100def5a5358b404ebeb5c12c929adb83770cdfa07c0a52ac" [label=""];
  "sha256:367cdbdf6fcab5abf53f25348a67438d5ae8334b3a72b20a9768cc90d4ca053a" -> "sha256:e9d4e20ea4483e2100def5a5358b404ebeb5c12c929adb83770cdfa07c0a52ac" [label=""];
  "sha256:e9d4e20ea4483e2100def5a5358b404ebeb5c12c929adb83770cdfa07c0a52ac" -> "sha256:a26aae41aebdc58dde55a0f28afe2a99f8ca6019be200a617855d40dec4a6218" [label=""];
  "sha256:367cdbdf6fcab5abf53f25348a67438d5ae8334b3a72b20a9768cc90d4ca053a" -> "sha256:a26aae41aebdc58dde55a0f28afe2a99f8ca6019be200a617855d40dec4a6218" [label=""];
  "sha256:a26aae41aebdc58dde55a0f28afe2a99f8ca6019be200a617855d40dec4a6218" -> "sha256:3ff90c584889de7cebd87606e28bb5492a7d994f57b04769c362ad8c9d7d471e" [label=""];
  "sha256:367cdbdf6fcab5abf53f25348a67438d5ae8334b3a72b20a9768cc90d4ca053a" -> "sha256:3ff90c584889de7cebd87606e28bb5492a7d994f57b04769c362ad8c9d7d471e" [label=""];
  "sha256:3ff90c584889de7cebd87606e28bb5492a7d994f57b04769c362ad8c9d7d471e" -> "sha256:f1d73d8f70397c2fdcee38211f67046cab17404b06b8431d650b5827d080ed1b" [label=""];
}

