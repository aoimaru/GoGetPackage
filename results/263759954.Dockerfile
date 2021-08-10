[app/sources/263759954.Dockerfile]
digraph {
  "sha256:9ad7e8ace7b807b00a1f321a1b2e8d252e2e2ccd275caa866896daedcfaae671" [label="local://context" shape="ellipse"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" [label="/bin/sh -c apt-get update && apt-get install libc6-dev-i386 curl unzip -y" shape="box"];
  "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" [label="/bin/sh -c mkdir -p /steam" shape="box"];
  "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" [label="/bin/sh -c curl http://media.steampowered.com/client/steamcmd_linux.tar.gz | tar vxz -C /steam" shape="box"];
  "sha256:5e391e34ab74319c454fa18a612250fd3e7368740027312d160fffad371cbbed" [label="copy{src=/script, dest=/steam/script}" shape="note"];
  "sha256:70fcc22ab009d381012c453b43eaee04912ad0c753ec82737e71ed32cf8f5847" [label="/bin/sh -c /steam/steamcmd.sh +runscript /steam/script" shape="box"];
  "sha256:c61786e0f54cb1937fdde2e2f9951bafae5df1336119ea8fdf6971c7e69f6c45" [label="/bin/sh -c curl http://mirror.pointysoftware.net/alliedmodders/mmsource-1.10.0-linux.tar.gz | tar vxz -C /steam/tf2/tf" shape="box"];
  "sha256:6efe2d8106c2f39cafc8a0b4b5e14b50ea7cdecceb96a41aa3e0b4d7d05e6824" [label="/bin/sh -c curl http://mirror.pointysoftware.net/alliedmodders/sourcemod-1.5.3-linux.tar.gz | tar vxz -C /steam/tf2/tf" shape="box"];
  "sha256:d13d08463d6ec5a81cb5bac68be7f937d5433ca9647531ab5c79bed9e6f709f6" [label="copy{src=/server.cfg, dest=/steam/tf2/tf/cfg/server.cfg}" shape="note"];
  "sha256:2390a9ea50ca669fc53ef0992ac09e9f633ea6e74bec5766c825c5b81a622571" [label="copy{src=/ctf_2fort.cfg, dest=/steam/tf2/tf/cfg/ctf_2fort.cfg}" shape="note"];
  "sha256:c182876fbe81be46b0889879ab2bade21dfa4a4f36faf8ad844491ed53c1e398" [label="copy{src=/sourcemod.cfg, dest=/steam/tf2/tf/cfg/sourcemod/sourcemod.cfg}" shape="note"];
  "sha256:a741fee5aa086129ccb540e0cf64163a8626665c217aa7b718f3ceb12fcd63ab" [label="/bin/sh -c rm -r /steam/tf2/tf/addons/sourcemod/configs" shape="box"];
  "sha256:ee621e0c2e2b7ff3f3bc34e7ba588ced06efb4fcb6c623f3bffe1bca721a9f07" [label="copy{src=/configs, dest=/steam/tf2/tf/addons/sourcemod/configs}" shape="note"];
  "sha256:fa1b3e716c558aff07503b6d8f9636dfb7f4971b6111477968c1ac6a335d757d" [label="/bin/sh -c mkdir -p /steam/tf2/tf/addons/sourcemod/translations/en" shape="box"];
  "sha256:8aade11d1c1a3d3121a99167d5be61b631d91c33409d70914c664dcf44cc010e" [label="/bin/sh -c cp /steam/tf2/tf/addons/sourcemod/translations/*.txt /steam/tf2/tf/addons/sourcemod/translations/en" shape="box"];
  "sha256:1b4c1de4c7a47261b63d6a3f2dd4c8a1426e30eca2ccd95641bc097d49917e49" [label="sha256:1b4c1de4c7a47261b63d6a3f2dd4c8a1426e30eca2ccd95641bc097d49917e49" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" [label=""];
  "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" -> "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" [label=""];
  "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" -> "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" [label=""];
  "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" -> "sha256:5e391e34ab74319c454fa18a612250fd3e7368740027312d160fffad371cbbed" [label=""];
  "sha256:9ad7e8ace7b807b00a1f321a1b2e8d252e2e2ccd275caa866896daedcfaae671" -> "sha256:5e391e34ab74319c454fa18a612250fd3e7368740027312d160fffad371cbbed" [label=""];
  "sha256:5e391e34ab74319c454fa18a612250fd3e7368740027312d160fffad371cbbed" -> "sha256:70fcc22ab009d381012c453b43eaee04912ad0c753ec82737e71ed32cf8f5847" [label=""];
  "sha256:70fcc22ab009d381012c453b43eaee04912ad0c753ec82737e71ed32cf8f5847" -> "sha256:c61786e0f54cb1937fdde2e2f9951bafae5df1336119ea8fdf6971c7e69f6c45" [label=""];
  "sha256:c61786e0f54cb1937fdde2e2f9951bafae5df1336119ea8fdf6971c7e69f6c45" -> "sha256:6efe2d8106c2f39cafc8a0b4b5e14b50ea7cdecceb96a41aa3e0b4d7d05e6824" [label=""];
  "sha256:6efe2d8106c2f39cafc8a0b4b5e14b50ea7cdecceb96a41aa3e0b4d7d05e6824" -> "sha256:d13d08463d6ec5a81cb5bac68be7f937d5433ca9647531ab5c79bed9e6f709f6" [label=""];
  "sha256:9ad7e8ace7b807b00a1f321a1b2e8d252e2e2ccd275caa866896daedcfaae671" -> "sha256:d13d08463d6ec5a81cb5bac68be7f937d5433ca9647531ab5c79bed9e6f709f6" [label=""];
  "sha256:d13d08463d6ec5a81cb5bac68be7f937d5433ca9647531ab5c79bed9e6f709f6" -> "sha256:2390a9ea50ca669fc53ef0992ac09e9f633ea6e74bec5766c825c5b81a622571" [label=""];
  "sha256:9ad7e8ace7b807b00a1f321a1b2e8d252e2e2ccd275caa866896daedcfaae671" -> "sha256:2390a9ea50ca669fc53ef0992ac09e9f633ea6e74bec5766c825c5b81a622571" [label=""];
  "sha256:2390a9ea50ca669fc53ef0992ac09e9f633ea6e74bec5766c825c5b81a622571" -> "sha256:c182876fbe81be46b0889879ab2bade21dfa4a4f36faf8ad844491ed53c1e398" [label=""];
  "sha256:9ad7e8ace7b807b00a1f321a1b2e8d252e2e2ccd275caa866896daedcfaae671" -> "sha256:c182876fbe81be46b0889879ab2bade21dfa4a4f36faf8ad844491ed53c1e398" [label=""];
  "sha256:c182876fbe81be46b0889879ab2bade21dfa4a4f36faf8ad844491ed53c1e398" -> "sha256:a741fee5aa086129ccb540e0cf64163a8626665c217aa7b718f3ceb12fcd63ab" [label=""];
  "sha256:a741fee5aa086129ccb540e0cf64163a8626665c217aa7b718f3ceb12fcd63ab" -> "sha256:ee621e0c2e2b7ff3f3bc34e7ba588ced06efb4fcb6c623f3bffe1bca721a9f07" [label=""];
  "sha256:9ad7e8ace7b807b00a1f321a1b2e8d252e2e2ccd275caa866896daedcfaae671" -> "sha256:ee621e0c2e2b7ff3f3bc34e7ba588ced06efb4fcb6c623f3bffe1bca721a9f07" [label=""];
  "sha256:ee621e0c2e2b7ff3f3bc34e7ba588ced06efb4fcb6c623f3bffe1bca721a9f07" -> "sha256:fa1b3e716c558aff07503b6d8f9636dfb7f4971b6111477968c1ac6a335d757d" [label=""];
  "sha256:fa1b3e716c558aff07503b6d8f9636dfb7f4971b6111477968c1ac6a335d757d" -> "sha256:8aade11d1c1a3d3121a99167d5be61b631d91c33409d70914c664dcf44cc010e" [label=""];
  "sha256:8aade11d1c1a3d3121a99167d5be61b631d91c33409d70914c664dcf44cc010e" -> "sha256:1b4c1de4c7a47261b63d6a3f2dd4c8a1426e30eca2ccd95641bc097d49917e49" [label=""];
}

