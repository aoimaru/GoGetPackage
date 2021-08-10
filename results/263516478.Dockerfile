[app/sources/263516478.Dockerfile]
digraph {
  "sha256:15fcf2f74917407084f0694554f955c94aca256ac64854a6ba334acc9d7cb335" [label="docker-image://docker.io/tensorflow/tensorflow:1.1.0" shape="ellipse"];
  "sha256:1655663ffe32399e14c2c0e7c3acf176e96f7d96474840a455c26aa994bb9d76" [label="/bin/sh -c pip install keras==1.2" shape="box"];
  "sha256:45bb6d994122a1302f9bf0cff348586a16d817be5d4a036b900a7a1098bed2b5" [label="/bin/sh -c pip install coremltools" shape="box"];
  "sha256:ee8148cd8d2f85e9b62a0d6a1e23c53d266bac366d6a7bc03409c838555a97bf" [label="/bin/sh -c rm -rf /notebooks/*" shape="box"];
  "sha256:5ccc968cf16f0058f32a25ec1e06f3ae411e1a6a376338f6396b2857f941508e" [label="local://context" shape="ellipse"];
  "sha256:5f822ea14608dcb1b630d3cc7987568cb6eb5e29fa1eb047159a9f077263d940" [label="copy{src=/notebooks/*.ipynb, dest=/notebooks/}" shape="note"];
  "sha256:df05ec39165ad0abeee147bf8ea86d4e8499f2bc7ea08a09766a8c9fa2ace90a" [label="sha256:df05ec39165ad0abeee147bf8ea86d4e8499f2bc7ea08a09766a8c9fa2ace90a" shape="plaintext"];
  "sha256:15fcf2f74917407084f0694554f955c94aca256ac64854a6ba334acc9d7cb335" -> "sha256:1655663ffe32399e14c2c0e7c3acf176e96f7d96474840a455c26aa994bb9d76" [label=""];
  "sha256:1655663ffe32399e14c2c0e7c3acf176e96f7d96474840a455c26aa994bb9d76" -> "sha256:45bb6d994122a1302f9bf0cff348586a16d817be5d4a036b900a7a1098bed2b5" [label=""];
  "sha256:45bb6d994122a1302f9bf0cff348586a16d817be5d4a036b900a7a1098bed2b5" -> "sha256:ee8148cd8d2f85e9b62a0d6a1e23c53d266bac366d6a7bc03409c838555a97bf" [label=""];
  "sha256:ee8148cd8d2f85e9b62a0d6a1e23c53d266bac366d6a7bc03409c838555a97bf" -> "sha256:5f822ea14608dcb1b630d3cc7987568cb6eb5e29fa1eb047159a9f077263d940" [label=""];
  "sha256:5ccc968cf16f0058f32a25ec1e06f3ae411e1a6a376338f6396b2857f941508e" -> "sha256:5f822ea14608dcb1b630d3cc7987568cb6eb5e29fa1eb047159a9f077263d940" [label=""];
  "sha256:5f822ea14608dcb1b630d3cc7987568cb6eb5e29fa1eb047159a9f077263d940" -> "sha256:df05ec39165ad0abeee147bf8ea86d4e8499f2bc7ea08a09766a8c9fa2ace90a" [label=""];
}

