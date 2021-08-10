[app/sources/455325457.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:45d2598483b099cdbf619ece9b7c173e766757f611d7f4268a8a95de3f0a3565" [label="local://context" shape="ellipse"];
  "sha256:ede3b564637a8edbf8e6f5e1e00e0e772522dc25cdd2c577c2d629eb56b8adab" [label="copy{src=/kube-aggregator, dest=/}" shape="note"];
  "sha256:53730781acf61439698dd1b618f53748a08b19cbc96a378a02af3c3cca3a741e" [label="sha256:53730781acf61439698dd1b618f53748a08b19cbc96a378a02af3c3cca3a741e" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:ede3b564637a8edbf8e6f5e1e00e0e772522dc25cdd2c577c2d629eb56b8adab" [label=""];
  "sha256:45d2598483b099cdbf619ece9b7c173e766757f611d7f4268a8a95de3f0a3565" -> "sha256:ede3b564637a8edbf8e6f5e1e00e0e772522dc25cdd2c577c2d629eb56b8adab" [label=""];
  "sha256:ede3b564637a8edbf8e6f5e1e00e0e772522dc25cdd2c577c2d629eb56b8adab" -> "sha256:53730781acf61439698dd1b618f53748a08b19cbc96a378a02af3c3cca3a741e" [label=""];
}

