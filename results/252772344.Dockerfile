[app/sources/252772344.Dockerfile]
digraph {
  "sha256:054bbeb662f4450ba454bd62c5f4fc2276fafab58e35ab7e1b511515bf58d6ba" [label="local://context" shape="ellipse"];
  "sha256:28646eba2fcbe2ebd828fda09951697955fccb99441576ae2f3ac2093f7fb37b" [label="docker-image://docker.io/library/mysql:5.5" shape="ellipse"];
  "sha256:9731973959bbc2772e458674d03ec4a060dd25804dccb78acc652bd928947367" [label="copy{src=/arrdb.mysql, dest=/docker-entrypoint-initdb.d/arrdb.sql}" shape="note"];
  "sha256:198e7fa14e05dddda67dc9e52c23d254e9b293518a9dec99c900809506e529b4" [label="sha256:198e7fa14e05dddda67dc9e52c23d254e9b293518a9dec99c900809506e529b4" shape="plaintext"];
  "sha256:28646eba2fcbe2ebd828fda09951697955fccb99441576ae2f3ac2093f7fb37b" -> "sha256:9731973959bbc2772e458674d03ec4a060dd25804dccb78acc652bd928947367" [label=""];
  "sha256:054bbeb662f4450ba454bd62c5f4fc2276fafab58e35ab7e1b511515bf58d6ba" -> "sha256:9731973959bbc2772e458674d03ec4a060dd25804dccb78acc652bd928947367" [label=""];
  "sha256:9731973959bbc2772e458674d03ec4a060dd25804dccb78acc652bd928947367" -> "sha256:198e7fa14e05dddda67dc9e52c23d254e9b293518a9dec99c900809506e529b4" [label=""];
}

