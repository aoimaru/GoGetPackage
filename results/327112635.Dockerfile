[app/sources/327112635.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" [label="mkdir{path=/app}" shape="note"];
  "sha256:38781df82ba8c44702d0d824be8ceb68e79f26f6933afd381e6b960c1220f9c2" [label="local://context" shape="ellipse"];
  "sha256:8201941d71c13c9c118d694960bf0bebe9cde7344c1f5ffb9e01ff81c399da8d" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:3504ca2883d18d9d9845b41847092f496aa86b8962a7019b2e091e776ffce958" [label="/bin/sh -c npm install" shape="box"];
  "sha256:6ea6fa9f971e6ad514c22eeca470d94c70bbcf9303f8722394b0a35fd212384e" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:d572b0126de69695e8a601523c962b47c960ce1901972fa837a30cd58b08e9ee" [label="sha256:d572b0126de69695e8a601523c962b47c960ce1901972fa837a30cd58b08e9ee" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" [label=""];
  "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" -> "sha256:8201941d71c13c9c118d694960bf0bebe9cde7344c1f5ffb9e01ff81c399da8d" [label=""];
  "sha256:38781df82ba8c44702d0d824be8ceb68e79f26f6933afd381e6b960c1220f9c2" -> "sha256:8201941d71c13c9c118d694960bf0bebe9cde7344c1f5ffb9e01ff81c399da8d" [label=""];
  "sha256:8201941d71c13c9c118d694960bf0bebe9cde7344c1f5ffb9e01ff81c399da8d" -> "sha256:3504ca2883d18d9d9845b41847092f496aa86b8962a7019b2e091e776ffce958" [label=""];
  "sha256:3504ca2883d18d9d9845b41847092f496aa86b8962a7019b2e091e776ffce958" -> "sha256:6ea6fa9f971e6ad514c22eeca470d94c70bbcf9303f8722394b0a35fd212384e" [label=""];
  "sha256:38781df82ba8c44702d0d824be8ceb68e79f26f6933afd381e6b960c1220f9c2" -> "sha256:6ea6fa9f971e6ad514c22eeca470d94c70bbcf9303f8722394b0a35fd212384e" [label=""];
  "sha256:6ea6fa9f971e6ad514c22eeca470d94c70bbcf9303f8722394b0a35fd212384e" -> "sha256:d572b0126de69695e8a601523c962b47c960ce1901972fa837a30cd58b08e9ee" [label=""];
}

