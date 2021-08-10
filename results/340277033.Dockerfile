[app/sources/340277033.Dockerfile]
digraph {
  "sha256:8f08f68087cc479f0bb6a684011a5d0a7c7d980c87d29ea6e5a84ffa471008ac" [label="local://context" shape="ellipse"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" [label="/bin/sh -c apt-get update && apt-get install libc6-dev-i386 curl unzip -y" shape="box"];
  "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" [label="/bin/sh -c mkdir -p /steam" shape="box"];
  "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" [label="/bin/sh -c curl http://media.steampowered.com/client/steamcmd_linux.tar.gz | tar vxz -C /steam" shape="box"];
  "sha256:8f14f04f0fd9308d324d028b52a0137968b14f05cd1f7da3225d7e1329abbc63" [label="copy{src=/script, dest=/steam/script}" shape="note"];
  "sha256:cced746cbc83de2111f86f85e1f1b2843d6140ec2af326806dde1dd23622d34b" [label="/bin/sh -c /steam/steamcmd.sh +runscript /steam/script" shape="box"];
  "sha256:f308fca7583471fd5368e5ae888ed829f055525ab5d83c2e935d14f493c7836c" [label="/bin/sh -c curl http://mirror.pointysoftware.net/alliedmodders/mmsource-1.10.0-linux.tar.gz | tar vxz -C /steam/tf2/tf" shape="box"];
  "sha256:529c56a15403d899bf6f5ee5d9f6cfb7688c47a99eea27be4de887d3439e92d2" [label="/bin/sh -c curl http://mirror.pointysoftware.net/alliedmodders/sourcemod-1.5.3-linux.tar.gz | tar vxz -C /steam/tf2/tf" shape="box"];
  "sha256:e52a2976a22daacc2cfb785c2b57f2eea2f4dcab5729307cbd1fe0c09393bda6" [label="copy{src=/server.cfg, dest=/steam/tf2/tf/cfg/server.cfg}" shape="note"];
  "sha256:b540fdbd1884c8b1cba45be785e3916d20abf365c670ef4e53f2f8770c28f12e" [label="copy{src=/ctf_2fort.cfg, dest=/steam/tf2/tf/cfg/ctf_2fort.cfg}" shape="note"];
  "sha256:acf59c1f22b82fda1a6eb0f4fac879e256373ca3c22be4c5af7f0f1858146715" [label="copy{src=/sourcemod.cfg, dest=/steam/tf2/tf/cfg/sourcemod/sourcemod.cfg}" shape="note"];
  "sha256:b488c6c2a069252982edeceaa467a0ebdc18c6f5a043a9aef87a38eaf68e8576" [label="/bin/sh -c rm -r /steam/tf2/tf/addons/sourcemod/configs" shape="box"];
  "sha256:58568c2df862eb2a7df7692bceeee95fa87874533ed3e508d7be123c00a2e874" [label="copy{src=/configs, dest=/steam/tf2/tf/addons/sourcemod/configs}" shape="note"];
  "sha256:6876e49abb717242f0ce14d42abf3a33a314246010395425821001e70857d438" [label="/bin/sh -c mkdir -p /steam/tf2/tf/addons/sourcemod/translations/en" shape="box"];
  "sha256:a1f13df0fef129471587cd913619bf68e815f5b648f593ff38cc2854e37ac541" [label="/bin/sh -c cp /steam/tf2/tf/addons/sourcemod/translations/*.txt /steam/tf2/tf/addons/sourcemod/translations/en" shape="box"];
  "sha256:3ced494cec8ae075c0376f90a3c672f2315b89498a9d128f3d63d6128fd362da" [label="sha256:3ced494cec8ae075c0376f90a3c672f2315b89498a9d128f3d63d6128fd362da" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" [label=""];
  "sha256:d05f7ce7dc6031bb967112e9f2fd04e07b041aabdf0f20ee866391643b5abd38" -> "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" [label=""];
  "sha256:7394f8685f5b45eda281d0f53463d106f00a2569b4e019d1b1ff6474a58099ca" -> "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" [label=""];
  "sha256:2b055cba8fa87f8e56ffda418b3fbe056731d0973e41c37331d3e17781340746" -> "sha256:8f14f04f0fd9308d324d028b52a0137968b14f05cd1f7da3225d7e1329abbc63" [label=""];
  "sha256:8f08f68087cc479f0bb6a684011a5d0a7c7d980c87d29ea6e5a84ffa471008ac" -> "sha256:8f14f04f0fd9308d324d028b52a0137968b14f05cd1f7da3225d7e1329abbc63" [label=""];
  "sha256:8f14f04f0fd9308d324d028b52a0137968b14f05cd1f7da3225d7e1329abbc63" -> "sha256:cced746cbc83de2111f86f85e1f1b2843d6140ec2af326806dde1dd23622d34b" [label=""];
  "sha256:cced746cbc83de2111f86f85e1f1b2843d6140ec2af326806dde1dd23622d34b" -> "sha256:f308fca7583471fd5368e5ae888ed829f055525ab5d83c2e935d14f493c7836c" [label=""];
  "sha256:f308fca7583471fd5368e5ae888ed829f055525ab5d83c2e935d14f493c7836c" -> "sha256:529c56a15403d899bf6f5ee5d9f6cfb7688c47a99eea27be4de887d3439e92d2" [label=""];
  "sha256:529c56a15403d899bf6f5ee5d9f6cfb7688c47a99eea27be4de887d3439e92d2" -> "sha256:e52a2976a22daacc2cfb785c2b57f2eea2f4dcab5729307cbd1fe0c09393bda6" [label=""];
  "sha256:8f08f68087cc479f0bb6a684011a5d0a7c7d980c87d29ea6e5a84ffa471008ac" -> "sha256:e52a2976a22daacc2cfb785c2b57f2eea2f4dcab5729307cbd1fe0c09393bda6" [label=""];
  "sha256:e52a2976a22daacc2cfb785c2b57f2eea2f4dcab5729307cbd1fe0c09393bda6" -> "sha256:b540fdbd1884c8b1cba45be785e3916d20abf365c670ef4e53f2f8770c28f12e" [label=""];
  "sha256:8f08f68087cc479f0bb6a684011a5d0a7c7d980c87d29ea6e5a84ffa471008ac" -> "sha256:b540fdbd1884c8b1cba45be785e3916d20abf365c670ef4e53f2f8770c28f12e" [label=""];
  "sha256:b540fdbd1884c8b1cba45be785e3916d20abf365c670ef4e53f2f8770c28f12e" -> "sha256:acf59c1f22b82fda1a6eb0f4fac879e256373ca3c22be4c5af7f0f1858146715" [label=""];
  "sha256:8f08f68087cc479f0bb6a684011a5d0a7c7d980c87d29ea6e5a84ffa471008ac" -> "sha256:acf59c1f22b82fda1a6eb0f4fac879e256373ca3c22be4c5af7f0f1858146715" [label=""];
  "sha256:acf59c1f22b82fda1a6eb0f4fac879e256373ca3c22be4c5af7f0f1858146715" -> "sha256:b488c6c2a069252982edeceaa467a0ebdc18c6f5a043a9aef87a38eaf68e8576" [label=""];
  "sha256:b488c6c2a069252982edeceaa467a0ebdc18c6f5a043a9aef87a38eaf68e8576" -> "sha256:58568c2df862eb2a7df7692bceeee95fa87874533ed3e508d7be123c00a2e874" [label=""];
  "sha256:8f08f68087cc479f0bb6a684011a5d0a7c7d980c87d29ea6e5a84ffa471008ac" -> "sha256:58568c2df862eb2a7df7692bceeee95fa87874533ed3e508d7be123c00a2e874" [label=""];
  "sha256:58568c2df862eb2a7df7692bceeee95fa87874533ed3e508d7be123c00a2e874" -> "sha256:6876e49abb717242f0ce14d42abf3a33a314246010395425821001e70857d438" [label=""];
  "sha256:6876e49abb717242f0ce14d42abf3a33a314246010395425821001e70857d438" -> "sha256:a1f13df0fef129471587cd913619bf68e815f5b648f593ff38cc2854e37ac541" [label=""];
  "sha256:a1f13df0fef129471587cd913619bf68e815f5b648f593ff38cc2854e37ac541" -> "sha256:3ced494cec8ae075c0376f90a3c672f2315b89498a9d128f3d63d6128fd362da" [label=""];
}

