[app/sources/174987360.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:e63de566d8b911116077b1e603ce3ee4eeddb0aa1313658f134050832b0f1aa4" [label="mkdir{path=/opt/shoutcast}" shape="note"];
  "sha256:4dfe9a06b7115b7ff18e1c57f3c554f64d3cc62e5b03b118d044d900230f8f4c" [label="/bin/sh -c set -xe     && apt-get update     && apt-get install -y curl     && curl http://download.nullsoft.com/shoutcast/tools/sc_serv2_linux_x64-latest.tar.gz | tar xz     && mkdir -p control logs     && apt-get purge --auto-remove -y curl     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c255157ce80dd1805e3cc1b6484623101a735ce5db25d4192dedd648856378b8" [label="local://context" shape="ellipse"];
  "sha256:5727800067528c4ceadf9365905576d495f109b013c9115157b8a650b3058c25" [label="copy{src=/sc_serv.conf, dest=/opt/shoutcast/}" shape="note"];
  "sha256:c7b895dd1f4f7a5b9fde6d56920d4b77b64c712f2f7bc48b54782271ee60ddc9" [label="sha256:c7b895dd1f4f7a5b9fde6d56920d4b77b64c712f2f7bc48b54782271ee60ddc9" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:e63de566d8b911116077b1e603ce3ee4eeddb0aa1313658f134050832b0f1aa4" [label=""];
  "sha256:e63de566d8b911116077b1e603ce3ee4eeddb0aa1313658f134050832b0f1aa4" -> "sha256:4dfe9a06b7115b7ff18e1c57f3c554f64d3cc62e5b03b118d044d900230f8f4c" [label=""];
  "sha256:4dfe9a06b7115b7ff18e1c57f3c554f64d3cc62e5b03b118d044d900230f8f4c" -> "sha256:5727800067528c4ceadf9365905576d495f109b013c9115157b8a650b3058c25" [label=""];
  "sha256:c255157ce80dd1805e3cc1b6484623101a735ce5db25d4192dedd648856378b8" -> "sha256:5727800067528c4ceadf9365905576d495f109b013c9115157b8a650b3058c25" [label=""];
  "sha256:5727800067528c4ceadf9365905576d495f109b013c9115157b8a650b3058c25" -> "sha256:c7b895dd1f4f7a5b9fde6d56920d4b77b64c712f2f7bc48b54782271ee60ddc9" [label=""];
}

