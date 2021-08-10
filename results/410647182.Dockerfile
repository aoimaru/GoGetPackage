[app/sources/410647182.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c60add6dbd467b4858558c82fa4bc5f40a3bc75a1fb0487b3873cbaf5e9d1212" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:f6aaec0342a9c5a81a01263411c9cd9d63068a08988100842da49328cd7dea1d" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update" shape="box"];
  "sha256:0956a2565e9d98145a2e1d7f7ad8681e9618d41265e6e93c889a2ce0b2f5062d" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y python python-pip python-dev     libmemcached-dev     build-essential locales git-core     libpq-dev libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms2-dev" shape="box"];
  "sha256:e9ca87615484d38a76ab425fb8c77ac58d469f8eebbb2fb5c2e402ef32bf67af" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y curl" shape="box"];
  "sha256:a895c4024a885d05dfa13b64d7a593c7b16353a99bf92d62851118c079daaa83" [label="local://context" shape="ellipse"];
  "sha256:1aa72dbcc5c85f2785658ed74272d0ebaf7d8ecac03ede8e8e03e0ce14f90e55" [label="copy{src=/, dest=/srv/botbot-web}" shape="note"];
  "sha256:5120b8990e0a24fbb3f69bbe074e891fdd697d12e3b74823eb53ff03321c6edd" [label="mkdir{path=/srv/botbot-web}" shape="note"];
  "sha256:7064caf2cff228b606c9e89e6a505e0222893eff5d72771d758be966dd9ee655" [label="/bin/sh -c pip install -r requirements.txt -e .     --src /srv/python-src/    --timeout=120" shape="box"];
  "sha256:968f223695a76e315f4887bcce428257a41c0a1d074519af8e098e28094067bc" [label="sha256:968f223695a76e315f4887bcce428257a41c0a1d074519af8e098e28094067bc" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c60add6dbd467b4858558c82fa4bc5f40a3bc75a1fb0487b3873cbaf5e9d1212" [label=""];
  "sha256:c60add6dbd467b4858558c82fa4bc5f40a3bc75a1fb0487b3873cbaf5e9d1212" -> "sha256:f6aaec0342a9c5a81a01263411c9cd9d63068a08988100842da49328cd7dea1d" [label=""];
  "sha256:f6aaec0342a9c5a81a01263411c9cd9d63068a08988100842da49328cd7dea1d" -> "sha256:0956a2565e9d98145a2e1d7f7ad8681e9618d41265e6e93c889a2ce0b2f5062d" [label=""];
  "sha256:0956a2565e9d98145a2e1d7f7ad8681e9618d41265e6e93c889a2ce0b2f5062d" -> "sha256:e9ca87615484d38a76ab425fb8c77ac58d469f8eebbb2fb5c2e402ef32bf67af" [label=""];
  "sha256:e9ca87615484d38a76ab425fb8c77ac58d469f8eebbb2fb5c2e402ef32bf67af" -> "sha256:1aa72dbcc5c85f2785658ed74272d0ebaf7d8ecac03ede8e8e03e0ce14f90e55" [label=""];
  "sha256:a895c4024a885d05dfa13b64d7a593c7b16353a99bf92d62851118c079daaa83" -> "sha256:1aa72dbcc5c85f2785658ed74272d0ebaf7d8ecac03ede8e8e03e0ce14f90e55" [label=""];
  "sha256:1aa72dbcc5c85f2785658ed74272d0ebaf7d8ecac03ede8e8e03e0ce14f90e55" -> "sha256:5120b8990e0a24fbb3f69bbe074e891fdd697d12e3b74823eb53ff03321c6edd" [label=""];
  "sha256:5120b8990e0a24fbb3f69bbe074e891fdd697d12e3b74823eb53ff03321c6edd" -> "sha256:7064caf2cff228b606c9e89e6a505e0222893eff5d72771d758be966dd9ee655" [label=""];
  "sha256:7064caf2cff228b606c9e89e6a505e0222893eff5d72771d758be966dd9ee655" -> "sha256:968f223695a76e315f4887bcce428257a41c0a1d074519af8e098e28094067bc" [label=""];
}

