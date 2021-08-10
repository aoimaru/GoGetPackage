[app/sources/266467484.Dockerfile]
digraph {
  "sha256:3edbee802097fb27b53d92aff9527468bd8aa87b6b3cad220a4088734aa7eb99" [label="docker-image://docker.io/library/php:alpine" shape="ellipse"];
  "sha256:4b41995cdc127a496f40950324df7cb7a3bcf7ba54e4908551b0dbc40f305e77" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:80319c71760b906de4a6082b6ec3fd8ccdb00555e10fabfcdc9436cc059df829" [label="/bin/sh -c addgroup -g $PGID -S laradock &&     adduser -u $PUID -S laradock -G laradock" shape="box"];
  "sha256:9e4612360d5a168425c2d801cf3579404d4fe151c1833159a212d3535339a441" [label="/bin/sh -c cd /home/laradock && git clone https://github.com/mattpass/ICEcoder.git" shape="box"];
  "sha256:ab27d38076a0978260e5033dd89edc2898fbc71525f2b21d27f68bc33cb024d8" [label="mkdir{path=/home/laradock/ICEcoder}" shape="note"];
  "sha256:03b5a7a5781910fe38214ecc549a8c1b5ef1e39c038f849b42ab6e1c4dd2cc67" [label="sha256:03b5a7a5781910fe38214ecc549a8c1b5ef1e39c038f849b42ab6e1c4dd2cc67" shape="plaintext"];
  "sha256:3edbee802097fb27b53d92aff9527468bd8aa87b6b3cad220a4088734aa7eb99" -> "sha256:4b41995cdc127a496f40950324df7cb7a3bcf7ba54e4908551b0dbc40f305e77" [label=""];
  "sha256:4b41995cdc127a496f40950324df7cb7a3bcf7ba54e4908551b0dbc40f305e77" -> "sha256:80319c71760b906de4a6082b6ec3fd8ccdb00555e10fabfcdc9436cc059df829" [label=""];
  "sha256:80319c71760b906de4a6082b6ec3fd8ccdb00555e10fabfcdc9436cc059df829" -> "sha256:9e4612360d5a168425c2d801cf3579404d4fe151c1833159a212d3535339a441" [label=""];
  "sha256:9e4612360d5a168425c2d801cf3579404d4fe151c1833159a212d3535339a441" -> "sha256:ab27d38076a0978260e5033dd89edc2898fbc71525f2b21d27f68bc33cb024d8" [label=""];
  "sha256:ab27d38076a0978260e5033dd89edc2898fbc71525f2b21d27f68bc33cb024d8" -> "sha256:03b5a7a5781910fe38214ecc549a8c1b5ef1e39c038f849b42ab6e1c4dd2cc67" [label=""];
}

