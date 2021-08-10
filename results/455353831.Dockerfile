[app/sources/455353831.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:4c50e8ac474069288d43df1e422b1f842d703bbc072a736116ba895b29bc54de" [label="local://context" shape="ellipse"];
  "sha256:939da608c3caad81f49bebe0264757b424c48869420d1c397a787d6f8cf9e7ec" [label="copy{src=/apiextensions-apiserver, dest=/}" shape="note"];
  "sha256:4af18e264d21e4a6dca6de8432eb37f3d481db446c9016624e94270863737bd3" [label="sha256:4af18e264d21e4a6dca6de8432eb37f3d481db446c9016624e94270863737bd3" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:939da608c3caad81f49bebe0264757b424c48869420d1c397a787d6f8cf9e7ec" [label=""];
  "sha256:4c50e8ac474069288d43df1e422b1f842d703bbc072a736116ba895b29bc54de" -> "sha256:939da608c3caad81f49bebe0264757b424c48869420d1c397a787d6f8cf9e7ec" [label=""];
  "sha256:939da608c3caad81f49bebe0264757b424c48869420d1c397a787d6f8cf9e7ec" -> "sha256:4af18e264d21e4a6dca6de8432eb37f3d481db446c9016624e94270863737bd3" [label=""];
}

