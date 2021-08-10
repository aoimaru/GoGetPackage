[app/sources/358673549.Dockerfile]
digraph {
  "sha256:b36c190f3c5880a8141ff8dd8bf23f225f4da1b0d14c32b23494ed3b532ef2b1" [label="docker-image://docker.io/biocontainers/biocontainers:v1.0.0_cv4@sha256:586c2bfecebee37ccef5db40d6c91483178ab04fea775bdbada179d9631e956f" shape="ellipse"];
  "sha256:4429766b66e8ea76fc6a74dbdce0ed142899da19e8696cb75c179f7f047bf4bb" [label="local://context" shape="ellipse"];
  "sha256:d54f082c446daa9a950b0f01b35fa0cc23c7e12e98196a39cbdc88450df38c8a" [label="copy{src=/runpia.sh, dest=/home/biodocker/bin/}" shape="note"];
  "sha256:3d402a7b4231a8a3555ee119841a920dc8c7b29e64ee56c99b610b859f5dcd36" [label="/bin/sh -c chmod +x $USER_HOME/bin/runpia.sh" shape="box"];
  "sha256:2b96700439705fcb29733826d5ffe900c31236290d47a62150fd7ea1da71dca3" [label="/bin/sh -c set -x   && wget $URL/$ZIP_FILE -O $USER_HOME/$ZIP_FILE   && unzip $USER_HOME/$ZIP_FILE -d $PIA_PATH   && rm $USER_HOME/$ZIP_FILE" shape="box"];
  "sha256:cdf7c2aee874a368f3f2f9b5242e9cd33cced162a95f48768220814cf851b2c2" [label="mkdir{path=/data}" shape="note"];
  "sha256:15096748b295cb3119f15697f4e037fcafe60b3a719e20d36e285082e071410d" [label="sha256:15096748b295cb3119f15697f4e037fcafe60b3a719e20d36e285082e071410d" shape="plaintext"];
  "sha256:b36c190f3c5880a8141ff8dd8bf23f225f4da1b0d14c32b23494ed3b532ef2b1" -> "sha256:d54f082c446daa9a950b0f01b35fa0cc23c7e12e98196a39cbdc88450df38c8a" [label=""];
  "sha256:4429766b66e8ea76fc6a74dbdce0ed142899da19e8696cb75c179f7f047bf4bb" -> "sha256:d54f082c446daa9a950b0f01b35fa0cc23c7e12e98196a39cbdc88450df38c8a" [label=""];
  "sha256:d54f082c446daa9a950b0f01b35fa0cc23c7e12e98196a39cbdc88450df38c8a" -> "sha256:3d402a7b4231a8a3555ee119841a920dc8c7b29e64ee56c99b610b859f5dcd36" [label=""];
  "sha256:3d402a7b4231a8a3555ee119841a920dc8c7b29e64ee56c99b610b859f5dcd36" -> "sha256:2b96700439705fcb29733826d5ffe900c31236290d47a62150fd7ea1da71dca3" [label=""];
  "sha256:2b96700439705fcb29733826d5ffe900c31236290d47a62150fd7ea1da71dca3" -> "sha256:cdf7c2aee874a368f3f2f9b5242e9cd33cced162a95f48768220814cf851b2c2" [label=""];
  "sha256:cdf7c2aee874a368f3f2f9b5242e9cd33cced162a95f48768220814cf851b2c2" -> "sha256:15096748b295cb3119f15697f4e037fcafe60b3a719e20d36e285082e071410d" [label=""];
}

