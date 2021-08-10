[app/sources/154176090.Dockerfile]
digraph {
  "sha256:8e1964301501cc40e0247e7ed65357fd61a425d70b2364693c940ee4cd8766e4" [label="docker-image://docker.io/library/opensuse:tumbleweed" shape="ellipse"];
  "sha256:a599a7912fa9be39959ff4fc2fe976de480f1e2d833d6bb082c275694e96c408" [label="mkdir{path=/pybombs}" shape="note"];
  "sha256:8388719c795da4b260f8d74e474a238cb71008290a5aed0492f983cf6da10a4c" [label="/bin/sh -c zypper refresh" shape="box"];
  "sha256:2ae10aa9e079339ebd842a895779798f1e2c4b270482d319675e011720af8235" [label="/bin/sh -c zypper -q install -y --no-recommends tar" shape="box"];
  "sha256:b5bad9b72a88b444a455c7d9193956004298e01a0850b599516ecf82b7a4441b" [label="/bin/sh -c zypper -q install -y --no-recommends python2-pip python2-ruamel.yaml" shape="box"];
  "sha256:3340b416050afc72541be6581d67769b3de337d878ed944f76d21fd7acc75f22" [label="local://context" shape="ellipse"];
  "sha256:a2d23a675d7dc25f66f69444cfc0e2d42bd3cb3c67ef383dc4cdfaf993f78736" [label="copy{src=/PyBOMBS*.tar.gz, dest=/pybombs}" shape="note"];
  "sha256:7c1c1e6e7ff9fbda07c8c3dd4717499650af304951f3fe89cac29e6ee160e8d3" [label="/bin/sh -c tar zxf *.tar.gz" shape="box"];
  "sha256:16c5ed245e07a369d27b454827f2705f308edfb3ed031f02ceb680d1f520720b" [label="/bin/sh -c cd `ls --hide=*.gz` && python setup.py -q install" shape="box"];
  "sha256:fd3303044144a0a644f1553df92ebd00900ce17f471260e8d6699d733db28193" [label="/bin/sh -c mkdir /prefix" shape="box"];
  "sha256:d37e66ad092a4c25e797240f7886e3d4dcfcfd743163024a369be5703a9838a8" [label="/bin/sh -c cd /prefix" shape="box"];
  "sha256:15fcb1dbfcdfc363d9d020be6ef22a70d122faa3cf9645cbb1b9faa69b4c69e0" [label="/bin/sh -c pybombs -v auto-config" shape="box"];
  "sha256:77038138bdca966e8490abbc6cb752d42ef5bc3e709746f6a7615cb4651dec7f" [label="/bin/sh -c pybombs config" shape="box"];
  "sha256:2a5c5b4bc6974ee0d6a2bb25f56b3b4a15eef0547da45817292bf9e3c73db4e1" [label="/bin/sh -c pybombs -v recipes add-defaults" shape="box"];
  "sha256:41273513263c1f4d89fea7c97bf60db37e1f4e21272ac201539eb7bfbf4b68ca" [label="/bin/sh -c pybombs -v prefix init -a default -R gnuradio-default default" shape="box"];
  "sha256:56ac372696d06e96150ee63d0b3d728b662fd87546a76c8298eb88a734b03949" [label="sha256:56ac372696d06e96150ee63d0b3d728b662fd87546a76c8298eb88a734b03949" shape="plaintext"];
  "sha256:8e1964301501cc40e0247e7ed65357fd61a425d70b2364693c940ee4cd8766e4" -> "sha256:a599a7912fa9be39959ff4fc2fe976de480f1e2d833d6bb082c275694e96c408" [label=""];
  "sha256:a599a7912fa9be39959ff4fc2fe976de480f1e2d833d6bb082c275694e96c408" -> "sha256:8388719c795da4b260f8d74e474a238cb71008290a5aed0492f983cf6da10a4c" [label=""];
  "sha256:8388719c795da4b260f8d74e474a238cb71008290a5aed0492f983cf6da10a4c" -> "sha256:2ae10aa9e079339ebd842a895779798f1e2c4b270482d319675e011720af8235" [label=""];
  "sha256:2ae10aa9e079339ebd842a895779798f1e2c4b270482d319675e011720af8235" -> "sha256:b5bad9b72a88b444a455c7d9193956004298e01a0850b599516ecf82b7a4441b" [label=""];
  "sha256:b5bad9b72a88b444a455c7d9193956004298e01a0850b599516ecf82b7a4441b" -> "sha256:a2d23a675d7dc25f66f69444cfc0e2d42bd3cb3c67ef383dc4cdfaf993f78736" [label=""];
  "sha256:3340b416050afc72541be6581d67769b3de337d878ed944f76d21fd7acc75f22" -> "sha256:a2d23a675d7dc25f66f69444cfc0e2d42bd3cb3c67ef383dc4cdfaf993f78736" [label=""];
  "sha256:a2d23a675d7dc25f66f69444cfc0e2d42bd3cb3c67ef383dc4cdfaf993f78736" -> "sha256:7c1c1e6e7ff9fbda07c8c3dd4717499650af304951f3fe89cac29e6ee160e8d3" [label=""];
  "sha256:7c1c1e6e7ff9fbda07c8c3dd4717499650af304951f3fe89cac29e6ee160e8d3" -> "sha256:16c5ed245e07a369d27b454827f2705f308edfb3ed031f02ceb680d1f520720b" [label=""];
  "sha256:16c5ed245e07a369d27b454827f2705f308edfb3ed031f02ceb680d1f520720b" -> "sha256:fd3303044144a0a644f1553df92ebd00900ce17f471260e8d6699d733db28193" [label=""];
  "sha256:fd3303044144a0a644f1553df92ebd00900ce17f471260e8d6699d733db28193" -> "sha256:d37e66ad092a4c25e797240f7886e3d4dcfcfd743163024a369be5703a9838a8" [label=""];
  "sha256:d37e66ad092a4c25e797240f7886e3d4dcfcfd743163024a369be5703a9838a8" -> "sha256:15fcb1dbfcdfc363d9d020be6ef22a70d122faa3cf9645cbb1b9faa69b4c69e0" [label=""];
  "sha256:15fcb1dbfcdfc363d9d020be6ef22a70d122faa3cf9645cbb1b9faa69b4c69e0" -> "sha256:77038138bdca966e8490abbc6cb752d42ef5bc3e709746f6a7615cb4651dec7f" [label=""];
  "sha256:77038138bdca966e8490abbc6cb752d42ef5bc3e709746f6a7615cb4651dec7f" -> "sha256:2a5c5b4bc6974ee0d6a2bb25f56b3b4a15eef0547da45817292bf9e3c73db4e1" [label=""];
  "sha256:2a5c5b4bc6974ee0d6a2bb25f56b3b4a15eef0547da45817292bf9e3c73db4e1" -> "sha256:41273513263c1f4d89fea7c97bf60db37e1f4e21272ac201539eb7bfbf4b68ca" [label=""];
  "sha256:41273513263c1f4d89fea7c97bf60db37e1f4e21272ac201539eb7bfbf4b68ca" -> "sha256:56ac372696d06e96150ee63d0b3d728b662fd87546a76c8298eb88a734b03949" [label=""];
}

