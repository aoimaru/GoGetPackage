[app/sources/358673169.Dockerfile]
digraph {
  "sha256:b36c190f3c5880a8141ff8dd8bf23f225f4da1b0d14c32b23494ed3b532ef2b1" [label="docker-image://docker.io/biocontainers/biocontainers:v1.0.0_cv4@sha256:586c2bfecebee37ccef5db40d6c91483178ab04fea775bdbada179d9631e956f" shape="ellipse"];
  "sha256:5797b83c4b93dd9ae9b3d3938ba838a27f18d4062259b2b51ca76cbbd731253e" [label="/bin/sh -c ZIP=comet_binaries_2015020.zip &&   wget https://github.com/BioDocker/software-archive/releases/download/Comet/$ZIP -O /tmp/$ZIP &&   unzip /tmp/$ZIP -d /home/biodocker/bin/Comet/ &&   chmod -R 755 /home/biodocker/bin/Comet/* &&   rm /tmp/$ZIP" shape="box"];
  "sha256:ace965d98810569ec83d853e410ea86630e9435f95a41f6505e5212c55f58ac8" [label="/bin/sh -c mv /home/biodocker/bin/Comet/comet.2015020.linux.exe /home/biodocker/bin/Comet/comet" shape="box"];
  "sha256:bd81d54ea1f73957078fb528cd575939469d1ac4aa38f52f9bc0da1802cdb732" [label="mkdir{path=/data}" shape="note"];
  "sha256:137f8df7962809f0124866618ceb753493d373d3355ad069d493f1b264c2cd11" [label="sha256:137f8df7962809f0124866618ceb753493d373d3355ad069d493f1b264c2cd11" shape="plaintext"];
  "sha256:b36c190f3c5880a8141ff8dd8bf23f225f4da1b0d14c32b23494ed3b532ef2b1" -> "sha256:5797b83c4b93dd9ae9b3d3938ba838a27f18d4062259b2b51ca76cbbd731253e" [label=""];
  "sha256:5797b83c4b93dd9ae9b3d3938ba838a27f18d4062259b2b51ca76cbbd731253e" -> "sha256:ace965d98810569ec83d853e410ea86630e9435f95a41f6505e5212c55f58ac8" [label=""];
  "sha256:ace965d98810569ec83d853e410ea86630e9435f95a41f6505e5212c55f58ac8" -> "sha256:bd81d54ea1f73957078fb528cd575939469d1ac4aa38f52f9bc0da1802cdb732" [label=""];
  "sha256:bd81d54ea1f73957078fb528cd575939469d1ac4aa38f52f9bc0da1802cdb732" -> "sha256:137f8df7962809f0124866618ceb753493d373d3355ad069d493f1b264c2cd11" [label=""];
}

