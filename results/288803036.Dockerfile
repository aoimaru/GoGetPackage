[app/sources/288803036.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:f044b6aee95795351277dd15f9e5934d66a35e7a6eb3c11bd49912d03af2f029" [label="/bin/sh -c apk update;     apk add bash;     apk add file;     apk add grep;     apk add make;     apk add zip;     apk add tar;     apk add musl-dev;     apk add gcc;     apk add g++;     apk add libx11-dev;     apk add libxext-dev;     apk add libxrender-dev;     apk add libxtst-dev;     apk add libxt-dev;     apk add cups-dev;     apk add fontconfig-dev;     apk add alsa-lib-dev;     apk add linux-headers;     apk add git;     apk add mercurial;     apk add ttf-dejavu;     apk add sed;     apk add --update openssl;     apk add patch;     mkdir /opt;     cd /opt;     wget 'https://github.com/SAP/SapMachine/releases/download/sapmachine-10+39/sapmachine-jdk-10-ea.39_linux-x64-musl_bin.tar.gz';     tar -xzf 'sapmachine-jdk-10-ea.39_linux-x64-musl_bin.tar.gz';     rm 'sapmachine-jdk-10-ea.39_linux-x64-musl_bin.tar.gz'" shape="box"];
  "sha256:0b8b554fa546039ebbdd79aec5fafe98f7ba4f94885345eba551fb7abdcdf0ef" [label="/bin/sh -c addgroup -g 1002 jenkins &&     adduser -D -u 1002 -G jenkins jenkins" shape="box"];
  "sha256:89568170d6ce107b73db119d96e300fb835d8dd393865785096cb421063c71e7" [label="/bin/sh -c mkdir -p /opt/scimark2" shape="box"];
  "sha256:364e94da5dbb2bba6d2e1f4d4196aa3ecd7230082827a3c94193b764ef382158" [label="/bin/sh -c wget https://math.nist.gov/scimark2/scimark2lib.jar -O /opt/scimark2/scimark2lib.jar" shape="box"];
  "sha256:b49d579af0e6eeadc8a69c2f672d338d3f9bab6482058c5458cff57de6d182b4" [label="sha256:b49d579af0e6eeadc8a69c2f672d338d3f9bab6482058c5458cff57de6d182b4" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:f044b6aee95795351277dd15f9e5934d66a35e7a6eb3c11bd49912d03af2f029" [label=""];
  "sha256:f044b6aee95795351277dd15f9e5934d66a35e7a6eb3c11bd49912d03af2f029" -> "sha256:0b8b554fa546039ebbdd79aec5fafe98f7ba4f94885345eba551fb7abdcdf0ef" [label=""];
  "sha256:0b8b554fa546039ebbdd79aec5fafe98f7ba4f94885345eba551fb7abdcdf0ef" -> "sha256:89568170d6ce107b73db119d96e300fb835d8dd393865785096cb421063c71e7" [label=""];
  "sha256:89568170d6ce107b73db119d96e300fb835d8dd393865785096cb421063c71e7" -> "sha256:364e94da5dbb2bba6d2e1f4d4196aa3ecd7230082827a3c94193b764ef382158" [label=""];
  "sha256:364e94da5dbb2bba6d2e1f4d4196aa3ecd7230082827a3c94193b764ef382158" -> "sha256:b49d579af0e6eeadc8a69c2f672d338d3f9bab6482058c5458cff57de6d182b4" [label=""];
}

