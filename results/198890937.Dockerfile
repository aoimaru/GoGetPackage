[app/sources/198890937.Dockerfile]
digraph {
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:0a3cfe79d4e245b6c017ebbac97d655cce29895aa9b8118793d5d0c68535325e" [label="/bin/sh -c go get github.com/rakyll/hey" shape="box"];
  "sha256:0aa0bfd0596d218bd34b334e195c27ed807bf26a2dcd379f7c14438119f35883" [label="local://context" shape="ellipse"];
  "sha256:3d2d0fb659747a3a2c70fa72919b94126ef476ec02dfcc74789fc6aa7b0bf975" [label="copy{src=/images, dest=/images}" shape="note"];
  "sha256:dd01e55750fc0d88ca2d449f2e2f93630c3d2096c40cad34f38538e65fd7fa32" [label="sha256:dd01e55750fc0d88ca2d449f2e2f93630c3d2096c40cad34f38538e65fd7fa32" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:0a3cfe79d4e245b6c017ebbac97d655cce29895aa9b8118793d5d0c68535325e" [label=""];
  "sha256:0a3cfe79d4e245b6c017ebbac97d655cce29895aa9b8118793d5d0c68535325e" -> "sha256:3d2d0fb659747a3a2c70fa72919b94126ef476ec02dfcc74789fc6aa7b0bf975" [label=""];
  "sha256:0aa0bfd0596d218bd34b334e195c27ed807bf26a2dcd379f7c14438119f35883" -> "sha256:3d2d0fb659747a3a2c70fa72919b94126ef476ec02dfcc74789fc6aa7b0bf975" [label=""];
  "sha256:3d2d0fb659747a3a2c70fa72919b94126ef476ec02dfcc74789fc6aa7b0bf975" -> "sha256:dd01e55750fc0d88ca2d449f2e2f93630c3d2096c40cad34f38538e65fd7fa32" [label=""];
}

