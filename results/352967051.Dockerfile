[app/sources/352967051.Dockerfile]
digraph {
  "sha256:2fc13d7e69a225d807cbafc296de421069d6710f56ec056bde0d38a399d6fb3e" [label="local://context" shape="ellipse"];
  "sha256:99f93f8866b431af60d89ba2cd92fdc99db2c99ee500ca07d10a096ba5df8c89" [label="docker-image://docker.io/library/aem_6-2_base:latest" shape="ellipse"];
  "sha256:5ae0f6a15bdffbfad0f874b59d9c85c78707684a56b5b467ec5f3d5a285208dd" [label="copy{src=/resources/*.jar, dest=/aem/cq-publish-4503.jar}" shape="note"];
  "sha256:3b23b2f38d667e14faaaaca698975720d4ec9776f1f46e3d6021a1b5ed86add0" [label="copy{src=/resources/license.properties, dest=/aem/license.properties}" shape="note"];
  "sha256:9e50626bc61a4c2192141d988173a4ffe050a0d6e1563a52827a7655fcb409c5" [label="copy{src=/resources/postInstallHook.py, dest=/aem/postInstallHook.py}" shape="note"];
  "sha256:32918ae744f203d702c5fcfebcc129adfcc4d4839849d0f53f3960b2678358ef" [label="copy{src=/resources/packagelist.txt, dest=/aem/packagelist.txt}" shape="note"];
  "sha256:ca5317776a486302a5f26c6d24f77b49041faede4fe1fc02ace5c80aaecdc488" [label="copy{src=/resources/packages/*.zip, dest=/aem/packages/}" shape="note"];
  "sha256:117147e101b51d618c9c3d3188c4c447028e3bf2942585e4d9483913a152829d" [label="mkdir{path=/aem}" shape="note"];
  "sha256:e3c213d0f2999949b36a838b2bbf7bd034867b83277af924a2f21e2bb7ea1fd7" [label="/bin/sh -c java -Djava.awt.headless=true -XX:MaxPermSize=256m -Xmx1280m -jar cq-publish-4503.jar -unpack -r nosamplecontent" shape="box"];
  "sha256:ff729b5aca7668861087cbd02c49c099bbe89cb7c4244a9c21d52dfce01e02d3" [label="copy{src=/resources/org.apache.sling.commons.log.LogManager.config, dest=/aem/crx-quickstart/install/org.apache.sling.commons.log.LogManager.config}" shape="note"];
  "sha256:790ca4879c2737d6ee1d28bcfa222866af412783d0737056ba2d662016e51ff1" [label="copy{src=/resources/org.apache.jackrabbit.oak.plugins.segment.SegmentNodeStoreService.cfg, dest=/aem/crx-quickstart/install/org.apache.jackrabbit.oak.plugins.segment.SegmentNodeStoreService.cfg}" shape="note"];
  "sha256:9ec746c119e12005a42ec865bc43128d9b3e4a6656eccbc57e7dd0542c1632a9" [label="mkdir{path=/aem}" shape="note"];
  "sha256:a0265e3ae5a73042dc3426e055e81d45b2d9827892514fe449ef542ad1d6bfe8" [label="python aemInstaller.py -i cq-publish-4503.jar -r publish -p 4503" shape="box"];
  "sha256:73746db9fea496d7c4acd897961385bcdb6f57d200e25fe6e7f7fc94cb73439a" [label="mkdir{path=/aem/crx-quickstart/bin}" shape="note"];
  "sha256:f32d186ec696e4564bfefd20d2093f921689e3b1e7a9a114e3d4e689248d47c2" [label="/bin/sh -c mv quickstart quickstart.original" shape="box"];
  "sha256:4637f392b7d29b4b6f9d2fc1df1fac09952d900027997e1128be974e8d1115dd" [label="copy{src=/resources/quickstart, dest=/aem/crx-quickstart/bin/quickstart}" shape="note"];
  "sha256:b2b358c082395d5b052df034b948e097a4a0184b7c63938af37c512b03a2360b" [label="/bin/sh -c chmod +x /aem/crx-quickstart/bin/quickstart" shape="box"];
  "sha256:42eebfea0b10eeffc0ba11e754da99c9148d6799f5b49ea93fbf4592c98a45d0" [label="/bin/sh -c chmod +x /aem/compaction.sh" shape="box"];
  "sha256:ff243209f9fece51a1f85777237df3b202f21f5792e61797a7dfcb4390f1b7c5" [label="sha256:ff243209f9fece51a1f85777237df3b202f21f5792e61797a7dfcb4390f1b7c5" shape="plaintext"];
  "sha256:99f93f8866b431af60d89ba2cd92fdc99db2c99ee500ca07d10a096ba5df8c89" -> "sha256:5ae0f6a15bdffbfad0f874b59d9c85c78707684a56b5b467ec5f3d5a285208dd" [label=""];
  "sha256:2fc13d7e69a225d807cbafc296de421069d6710f56ec056bde0d38a399d6fb3e" -> "sha256:5ae0f6a15bdffbfad0f874b59d9c85c78707684a56b5b467ec5f3d5a285208dd" [label=""];
  "sha256:5ae0f6a15bdffbfad0f874b59d9c85c78707684a56b5b467ec5f3d5a285208dd" -> "sha256:3b23b2f38d667e14faaaaca698975720d4ec9776f1f46e3d6021a1b5ed86add0" [label=""];
  "sha256:2fc13d7e69a225d807cbafc296de421069d6710f56ec056bde0d38a399d6fb3e" -> "sha256:3b23b2f38d667e14faaaaca698975720d4ec9776f1f46e3d6021a1b5ed86add0" [label=""];
  "sha256:3b23b2f38d667e14faaaaca698975720d4ec9776f1f46e3d6021a1b5ed86add0" -> "sha256:9e50626bc61a4c2192141d988173a4ffe050a0d6e1563a52827a7655fcb409c5" [label=""];
  "sha256:2fc13d7e69a225d807cbafc296de421069d6710f56ec056bde0d38a399d6fb3e" -> "sha256:9e50626bc61a4c2192141d988173a4ffe050a0d6e1563a52827a7655fcb409c5" [label=""];
  "sha256:9e50626bc61a4c2192141d988173a4ffe050a0d6e1563a52827a7655fcb409c5" -> "sha256:32918ae744f203d702c5fcfebcc129adfcc4d4839849d0f53f3960b2678358ef" [label=""];
  "sha256:2fc13d7e69a225d807cbafc296de421069d6710f56ec056bde0d38a399d6fb3e" -> "sha256:32918ae744f203d702c5fcfebcc129adfcc4d4839849d0f53f3960b2678358ef" [label=""];
  "sha256:32918ae744f203d702c5fcfebcc129adfcc4d4839849d0f53f3960b2678358ef" -> "sha256:ca5317776a486302a5f26c6d24f77b49041faede4fe1fc02ace5c80aaecdc488" [label=""];
  "sha256:2fc13d7e69a225d807cbafc296de421069d6710f56ec056bde0d38a399d6fb3e" -> "sha256:ca5317776a486302a5f26c6d24f77b49041faede4fe1fc02ace5c80aaecdc488" [label=""];
  "sha256:ca5317776a486302a5f26c6d24f77b49041faede4fe1fc02ace5c80aaecdc488" -> "sha256:117147e101b51d618c9c3d3188c4c447028e3bf2942585e4d9483913a152829d" [label=""];
  "sha256:117147e101b51d618c9c3d3188c4c447028e3bf2942585e4d9483913a152829d" -> "sha256:e3c213d0f2999949b36a838b2bbf7bd034867b83277af924a2f21e2bb7ea1fd7" [label=""];
  "sha256:e3c213d0f2999949b36a838b2bbf7bd034867b83277af924a2f21e2bb7ea1fd7" -> "sha256:ff729b5aca7668861087cbd02c49c099bbe89cb7c4244a9c21d52dfce01e02d3" [label=""];
  "sha256:2fc13d7e69a225d807cbafc296de421069d6710f56ec056bde0d38a399d6fb3e" -> "sha256:ff729b5aca7668861087cbd02c49c099bbe89cb7c4244a9c21d52dfce01e02d3" [label=""];
  "sha256:ff729b5aca7668861087cbd02c49c099bbe89cb7c4244a9c21d52dfce01e02d3" -> "sha256:790ca4879c2737d6ee1d28bcfa222866af412783d0737056ba2d662016e51ff1" [label=""];
  "sha256:2fc13d7e69a225d807cbafc296de421069d6710f56ec056bde0d38a399d6fb3e" -> "sha256:790ca4879c2737d6ee1d28bcfa222866af412783d0737056ba2d662016e51ff1" [label=""];
  "sha256:790ca4879c2737d6ee1d28bcfa222866af412783d0737056ba2d662016e51ff1" -> "sha256:9ec746c119e12005a42ec865bc43128d9b3e4a6656eccbc57e7dd0542c1632a9" [label=""];
  "sha256:9ec746c119e12005a42ec865bc43128d9b3e4a6656eccbc57e7dd0542c1632a9" -> "sha256:a0265e3ae5a73042dc3426e055e81d45b2d9827892514fe449ef542ad1d6bfe8" [label=""];
  "sha256:a0265e3ae5a73042dc3426e055e81d45b2d9827892514fe449ef542ad1d6bfe8" -> "sha256:73746db9fea496d7c4acd897961385bcdb6f57d200e25fe6e7f7fc94cb73439a" [label=""];
  "sha256:73746db9fea496d7c4acd897961385bcdb6f57d200e25fe6e7f7fc94cb73439a" -> "sha256:f32d186ec696e4564bfefd20d2093f921689e3b1e7a9a114e3d4e689248d47c2" [label=""];
  "sha256:f32d186ec696e4564bfefd20d2093f921689e3b1e7a9a114e3d4e689248d47c2" -> "sha256:4637f392b7d29b4b6f9d2fc1df1fac09952d900027997e1128be974e8d1115dd" [label=""];
  "sha256:2fc13d7e69a225d807cbafc296de421069d6710f56ec056bde0d38a399d6fb3e" -> "sha256:4637f392b7d29b4b6f9d2fc1df1fac09952d900027997e1128be974e8d1115dd" [label=""];
  "sha256:4637f392b7d29b4b6f9d2fc1df1fac09952d900027997e1128be974e8d1115dd" -> "sha256:b2b358c082395d5b052df034b948e097a4a0184b7c63938af37c512b03a2360b" [label=""];
  "sha256:b2b358c082395d5b052df034b948e097a4a0184b7c63938af37c512b03a2360b" -> "sha256:42eebfea0b10eeffc0ba11e754da99c9148d6799f5b49ea93fbf4592c98a45d0" [label=""];
  "sha256:42eebfea0b10eeffc0ba11e754da99c9148d6799f5b49ea93fbf4592c98a45d0" -> "sha256:ff243209f9fece51a1f85777237df3b202f21f5792e61797a7dfcb4390f1b7c5" [label=""];
}

