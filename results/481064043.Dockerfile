[app/sources/481064043.Dockerfile]
digraph {
  "sha256:2b3f641497761d7c51ef30f4099f58f314cc9a0eaa94410a461e82065061f253" [label="docker-image://snowplow-docker-registry.bintray.io/snowplow/base:0.1.0" shape="ellipse"];
  "sha256:5dbdd9d37ab6b999b7c9f86981cec6ce40ba4d7d9ebb42c6fc0950aaca23e57b" [label="/bin/sh -c mkdir -p /tmp/build &&     cd /tmp/build &&     wget -q http://dl.bintray.com/snowplow/snowplow-generic/${ARCHIVE} &&     unzip -d ${SNOWPLOW_BIN_PATH} ${ARCHIVE} &&     cd /tmp &&     rm -rf /tmp/build" shape="box"];
  "sha256:e51e8401b70731431fee1d50d8e6499319fa9ad5720b9960275fb5c158162744" [label="local://context" shape="ellipse"];
  "sha256:ab3fa910c94002dc52cf1c24a361420ae4adf0e8e4e5ad3d0c075d9a3c769d27" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:151b863f7d13a24eabfda9ec6c60cf8303a2e42a84ea5539770509ffb56f651a" [label="sha256:151b863f7d13a24eabfda9ec6c60cf8303a2e42a84ea5539770509ffb56f651a" shape="plaintext"];
  "sha256:2b3f641497761d7c51ef30f4099f58f314cc9a0eaa94410a461e82065061f253" -> "sha256:5dbdd9d37ab6b999b7c9f86981cec6ce40ba4d7d9ebb42c6fc0950aaca23e57b" [label=""];
  "sha256:5dbdd9d37ab6b999b7c9f86981cec6ce40ba4d7d9ebb42c6fc0950aaca23e57b" -> "sha256:ab3fa910c94002dc52cf1c24a361420ae4adf0e8e4e5ad3d0c075d9a3c769d27" [label=""];
  "sha256:e51e8401b70731431fee1d50d8e6499319fa9ad5720b9960275fb5c158162744" -> "sha256:ab3fa910c94002dc52cf1c24a361420ae4adf0e8e4e5ad3d0c075d9a3c769d27" [label=""];
  "sha256:ab3fa910c94002dc52cf1c24a361420ae4adf0e8e4e5ad3d0c075d9a3c769d27" -> "sha256:151b863f7d13a24eabfda9ec6c60cf8303a2e42a84ea5539770509ffb56f651a" [label=""];
}

