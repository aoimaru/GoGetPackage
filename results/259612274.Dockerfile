[app/sources/259612274.Dockerfile]
digraph {
  "sha256:12ffb13ebba342e3a239d78b95e027d882385f3ef39366c271307e7aefbd3c3a" [label="docker-image://docker.io/resin/rpi-raspbian:stretch" shape="ellipse"];
  "sha256:3c624e0587df089fe1f3b858be0529fbbcc683643c36be73aa32dcdf048793ec" [label="/bin/sh -c buildDeps=\"curl xz-utils\" \t&& set -x \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& curl -SLO \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv6l.tar.xz\" \t&& tar -xJf \"node-v$NODE_VERSION-linux-armv6l.tar.xz\" -C /usr/local --strip-components=1      && ln -s /usr/local/bin/node /usr/local/bin/nodejs \t&& apt-get purge -y --auto-remove $buildDeps \t&& apt-get clean \t&& rm \"node-v$NODE_VERSION-linux-armv6l.tar.xz\"     && rm -rf /tmp/*     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:618a13f2dbf31311f992634d98705734e97c9943df15efbe62875acec6333102" [label="/bin/sh -c buildDeps=\"build-essential git\" \t&& apt-get update && apt-get install -y $buildDeps python-dev wiringpi dos2unix python-pip python-setuptools --no-install-recommends     && git clone https://github.com/adafruit/Adafruit_Python_DHT /tmp/Adafruit_Python_DHT     && cd /tmp/Adafruit_Python_DHT \t&& git checkout 1.4.0     && python setup.py install --force-pi2 \t&& apt-get purge -y --auto-remove $buildDeps \t&& apt-get clean     && rm -rf /tmp/*     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ef00769efc2bd02976d5bce7e27e88fafea34a3906b68f4e9eeb4232fe6411de" [label="local://context" shape="ellipse"];
  "sha256:c6052580c388d5322b733c2f6fe91c0e95a9cae91b003bebe98f24baabc808a4" [label="copy{src=/, dest=/opt/fruitnanny}" shape="note"];
  "sha256:56f0c3c7fe7fdfd8ada1d0db559f575bbf4612ad23a6388dc48f52e99166cae0" [label="mkdir{path=/opt/fruitnanny}" shape="note"];
  "sha256:01d047214a4ead91752a47fc282f892808cc5ba75a0890c4fc9dd726967a4d11" [label="/bin/sh -c dos2unix /opt/fruitnanny/bin/*" shape="box"];
  "sha256:de7087d390d9ff7883b7f9e90593fe6458a553ccc27b9e542df87bf78fe06272" [label="/bin/sh -c npm install" shape="box"];
  "sha256:ce04fa6a90d3cf96d65476b4d74a0d74cf15d80e22c04447a33e5ebb6b4944dd" [label="sha256:ce04fa6a90d3cf96d65476b4d74a0d74cf15d80e22c04447a33e5ebb6b4944dd" shape="plaintext"];
  "sha256:12ffb13ebba342e3a239d78b95e027d882385f3ef39366c271307e7aefbd3c3a" -> "sha256:3c624e0587df089fe1f3b858be0529fbbcc683643c36be73aa32dcdf048793ec" [label=""];
  "sha256:3c624e0587df089fe1f3b858be0529fbbcc683643c36be73aa32dcdf048793ec" -> "sha256:618a13f2dbf31311f992634d98705734e97c9943df15efbe62875acec6333102" [label=""];
  "sha256:618a13f2dbf31311f992634d98705734e97c9943df15efbe62875acec6333102" -> "sha256:c6052580c388d5322b733c2f6fe91c0e95a9cae91b003bebe98f24baabc808a4" [label=""];
  "sha256:ef00769efc2bd02976d5bce7e27e88fafea34a3906b68f4e9eeb4232fe6411de" -> "sha256:c6052580c388d5322b733c2f6fe91c0e95a9cae91b003bebe98f24baabc808a4" [label=""];
  "sha256:c6052580c388d5322b733c2f6fe91c0e95a9cae91b003bebe98f24baabc808a4" -> "sha256:56f0c3c7fe7fdfd8ada1d0db559f575bbf4612ad23a6388dc48f52e99166cae0" [label=""];
  "sha256:56f0c3c7fe7fdfd8ada1d0db559f575bbf4612ad23a6388dc48f52e99166cae0" -> "sha256:01d047214a4ead91752a47fc282f892808cc5ba75a0890c4fc9dd726967a4d11" [label=""];
  "sha256:01d047214a4ead91752a47fc282f892808cc5ba75a0890c4fc9dd726967a4d11" -> "sha256:de7087d390d9ff7883b7f9e90593fe6458a553ccc27b9e542df87bf78fe06272" [label=""];
  "sha256:de7087d390d9ff7883b7f9e90593fe6458a553ccc27b9e542df87bf78fe06272" -> "sha256:ce04fa6a90d3cf96d65476b4d74a0d74cf15d80e22c04447a33e5ebb6b4944dd" [label=""];
}

