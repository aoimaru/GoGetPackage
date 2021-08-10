[app/sources/481064097.Dockerfile]
digraph {
  "sha256:b77a5bfd2ddd07cfbfdaf537a8fe852b6e2d1cc03058eee177bd6d4655e165f5" [label="docker-image://snowplow-docker-registry.bintray.io/snowplow/base-alpine:0.2.0" shape="ellipse"];
  "sha256:26066b8026a899039a00d94300ed53035c5b2f898a3fcfbd892e964ebd98cf2c" [label="/bin/sh -c mkdir -p /tmp/build &&     cd /tmp/build &&     wget -q http://dl.bintray.com/snowplow/snowplow-generic/${ARCHIVE} &&     unzip -d ${SNOWPLOW_BIN_PATH} ${ARCHIVE} &&     cd /tmp &&     rm -rf /tmp/build" shape="box"];
  "sha256:5026869eb2a59da2c708313c1b7940e7de1ad1d0df0224ee03dd98dbb1e44474" [label="local://context" shape="ellipse"];
  "sha256:f789d3353c4e9522b7047fff904a574b37bfbf2ee71bf3011b287671c5fd7c1e" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:7eb5af285f4edbd6d80e48201d204e23eac99e77e758c54b4a9605d74ffbacd1" [label="sha256:7eb5af285f4edbd6d80e48201d204e23eac99e77e758c54b4a9605d74ffbacd1" shape="plaintext"];
  "sha256:b77a5bfd2ddd07cfbfdaf537a8fe852b6e2d1cc03058eee177bd6d4655e165f5" -> "sha256:26066b8026a899039a00d94300ed53035c5b2f898a3fcfbd892e964ebd98cf2c" [label=""];
  "sha256:26066b8026a899039a00d94300ed53035c5b2f898a3fcfbd892e964ebd98cf2c" -> "sha256:f789d3353c4e9522b7047fff904a574b37bfbf2ee71bf3011b287671c5fd7c1e" [label=""];
  "sha256:5026869eb2a59da2c708313c1b7940e7de1ad1d0df0224ee03dd98dbb1e44474" -> "sha256:f789d3353c4e9522b7047fff904a574b37bfbf2ee71bf3011b287671c5fd7c1e" [label=""];
  "sha256:f789d3353c4e9522b7047fff904a574b37bfbf2ee71bf3011b287671c5fd7c1e" -> "sha256:7eb5af285f4edbd6d80e48201d204e23eac99e77e758c54b4a9605d74ffbacd1" [label=""];
}

