[app/sources/208748898.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c3820789ddb50fc78954b3883a7142ce91e7f6a05b7a4de6d7ce4c0c50d5b294" [label="/bin/sh -c apt-get install nginx curl -y" shape="box"];
  "sha256:9f8bbfba845c32a133c78427b586e0ab065f040190b25967a5c10c5fc395862c" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:f17d1e22f5ea5357c39979ddc5b1d3c23d4d0dcde114879a0240ce23e0d87916" [label="/bin/sh -c set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\";   done" shape="box"];
  "sha256:4bcb4ee26c50e0e131b07d5b9daaf8f5fc90df15e76eb619a494da0b006daf52" [label="/bin/sh -c curl -SLO \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz\"   && curl -SLO \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --verify SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-x64.tar.gz\\$\" SHASUMS256.txt.asc | sha256sum -c -   && tar -xzf \"node-v$NODE_VERSION-linux-x64.tar.gz\" -C /usr/local --strip-components=1   && rm \"node-v$NODE_VERSION-linux-x64.tar.gz\" SHASUMS256.txt.asc" shape="box"];
  "sha256:96b40940a1a9d25eff4863cfc27e99224ff1190ca75794756ce23b172b0d5d50" [label="mkdir{path=/app}" shape="note"];
  "sha256:5a2c9960d86893374ee0d7e3308d8d73665196c2e6e1ef143a7f6a5f0a5d0d78" [label="local://context" shape="ellipse"];
  "sha256:9e892e36a3a52c29c0bacf871def9a04449d90f5920ab8795e3df4929dcf4178" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:d9d3e0dd9cde924c9514cd022db7fdcdf1955b75492ae65f8a378ea70bc5a48a" [label="/bin/sh -c npm install" shape="box"];
  "sha256:36c305fb7314190786f2174f0242fbf3662ae8bb5752af368b0a8b627059d02a" [label="copy{src=/.babelrc, dest=/app/.babelrc}" shape="note"];
  "sha256:5d07f59b7a9c292ca66bdc503720104a18b7f69ee4d3587ce9d17f0ef5b7b7ab" [label="copy{src=/docker-cloud-watch.js, dest=/app/docker-cloud-watch.js}" shape="note"];
  "sha256:6ecb697e74e5f9a954f7c2971cb1a9b80e60f346145511ecc7ab47fe52f94222" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:bdca7f8332fc80694e9e4b31eecd183793989884db12ca949a6e3e53bcd9847b" [label="copy{src=/docker-cloud-watch, dest=/usr/local/bin/docker-cloud-watch}" shape="note"];
  "sha256:79d961200b23533feaf7e1726dbe9e57cdeccffcae1157311d7e35a45e754b58" [label="/bin/sh -c chmod +x /usr/local/bin/docker-cloud-watch" shape="box"];
  "sha256:b4a758e166616ca025f1b35bc0fffb83c4485b2cf3682b085db8ace09b9a5975" [label="copy{src=/lib, dest=/app/lib}" shape="note"];
  "sha256:539e9c3f13b4fbeb57b2c709e8d1717fc708e06077fef862b566ac3c36479538" [label="copy{src=/test, dest=/app/test}" shape="note"];
  "sha256:3fe29144e5a3231d0e773074690f434143bcb37c6544f044cd1553a035f1febd" [label="copy{src=/default.crt, dest=/certs/default.crt}" shape="note"];
  "sha256:af73a23802243e92a7f715ae196e3626961565da013c0b7f838121519877023f" [label="sha256:af73a23802243e92a7f715ae196e3626961565da013c0b7f838121519877023f" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:c3820789ddb50fc78954b3883a7142ce91e7f6a05b7a4de6d7ce4c0c50d5b294" [label=""];
  "sha256:c3820789ddb50fc78954b3883a7142ce91e7f6a05b7a4de6d7ce4c0c50d5b294" -> "sha256:9f8bbfba845c32a133c78427b586e0ab065f040190b25967a5c10c5fc395862c" [label=""];
  "sha256:9f8bbfba845c32a133c78427b586e0ab065f040190b25967a5c10c5fc395862c" -> "sha256:f17d1e22f5ea5357c39979ddc5b1d3c23d4d0dcde114879a0240ce23e0d87916" [label=""];
  "sha256:f17d1e22f5ea5357c39979ddc5b1d3c23d4d0dcde114879a0240ce23e0d87916" -> "sha256:4bcb4ee26c50e0e131b07d5b9daaf8f5fc90df15e76eb619a494da0b006daf52" [label=""];
  "sha256:4bcb4ee26c50e0e131b07d5b9daaf8f5fc90df15e76eb619a494da0b006daf52" -> "sha256:96b40940a1a9d25eff4863cfc27e99224ff1190ca75794756ce23b172b0d5d50" [label=""];
  "sha256:96b40940a1a9d25eff4863cfc27e99224ff1190ca75794756ce23b172b0d5d50" -> "sha256:9e892e36a3a52c29c0bacf871def9a04449d90f5920ab8795e3df4929dcf4178" [label=""];
  "sha256:5a2c9960d86893374ee0d7e3308d8d73665196c2e6e1ef143a7f6a5f0a5d0d78" -> "sha256:9e892e36a3a52c29c0bacf871def9a04449d90f5920ab8795e3df4929dcf4178" [label=""];
  "sha256:9e892e36a3a52c29c0bacf871def9a04449d90f5920ab8795e3df4929dcf4178" -> "sha256:d9d3e0dd9cde924c9514cd022db7fdcdf1955b75492ae65f8a378ea70bc5a48a" [label=""];
  "sha256:d9d3e0dd9cde924c9514cd022db7fdcdf1955b75492ae65f8a378ea70bc5a48a" -> "sha256:36c305fb7314190786f2174f0242fbf3662ae8bb5752af368b0a8b627059d02a" [label=""];
  "sha256:5a2c9960d86893374ee0d7e3308d8d73665196c2e6e1ef143a7f6a5f0a5d0d78" -> "sha256:36c305fb7314190786f2174f0242fbf3662ae8bb5752af368b0a8b627059d02a" [label=""];
  "sha256:36c305fb7314190786f2174f0242fbf3662ae8bb5752af368b0a8b627059d02a" -> "sha256:5d07f59b7a9c292ca66bdc503720104a18b7f69ee4d3587ce9d17f0ef5b7b7ab" [label=""];
  "sha256:5a2c9960d86893374ee0d7e3308d8d73665196c2e6e1ef143a7f6a5f0a5d0d78" -> "sha256:5d07f59b7a9c292ca66bdc503720104a18b7f69ee4d3587ce9d17f0ef5b7b7ab" [label=""];
  "sha256:5d07f59b7a9c292ca66bdc503720104a18b7f69ee4d3587ce9d17f0ef5b7b7ab" -> "sha256:6ecb697e74e5f9a954f7c2971cb1a9b80e60f346145511ecc7ab47fe52f94222" [label=""];
  "sha256:5a2c9960d86893374ee0d7e3308d8d73665196c2e6e1ef143a7f6a5f0a5d0d78" -> "sha256:6ecb697e74e5f9a954f7c2971cb1a9b80e60f346145511ecc7ab47fe52f94222" [label=""];
  "sha256:6ecb697e74e5f9a954f7c2971cb1a9b80e60f346145511ecc7ab47fe52f94222" -> "sha256:bdca7f8332fc80694e9e4b31eecd183793989884db12ca949a6e3e53bcd9847b" [label=""];
  "sha256:5a2c9960d86893374ee0d7e3308d8d73665196c2e6e1ef143a7f6a5f0a5d0d78" -> "sha256:bdca7f8332fc80694e9e4b31eecd183793989884db12ca949a6e3e53bcd9847b" [label=""];
  "sha256:bdca7f8332fc80694e9e4b31eecd183793989884db12ca949a6e3e53bcd9847b" -> "sha256:79d961200b23533feaf7e1726dbe9e57cdeccffcae1157311d7e35a45e754b58" [label=""];
  "sha256:79d961200b23533feaf7e1726dbe9e57cdeccffcae1157311d7e35a45e754b58" -> "sha256:b4a758e166616ca025f1b35bc0fffb83c4485b2cf3682b085db8ace09b9a5975" [label=""];
  "sha256:5a2c9960d86893374ee0d7e3308d8d73665196c2e6e1ef143a7f6a5f0a5d0d78" -> "sha256:b4a758e166616ca025f1b35bc0fffb83c4485b2cf3682b085db8ace09b9a5975" [label=""];
  "sha256:b4a758e166616ca025f1b35bc0fffb83c4485b2cf3682b085db8ace09b9a5975" -> "sha256:539e9c3f13b4fbeb57b2c709e8d1717fc708e06077fef862b566ac3c36479538" [label=""];
  "sha256:5a2c9960d86893374ee0d7e3308d8d73665196c2e6e1ef143a7f6a5f0a5d0d78" -> "sha256:539e9c3f13b4fbeb57b2c709e8d1717fc708e06077fef862b566ac3c36479538" [label=""];
  "sha256:539e9c3f13b4fbeb57b2c709e8d1717fc708e06077fef862b566ac3c36479538" -> "sha256:3fe29144e5a3231d0e773074690f434143bcb37c6544f044cd1553a035f1febd" [label=""];
  "sha256:5a2c9960d86893374ee0d7e3308d8d73665196c2e6e1ef143a7f6a5f0a5d0d78" -> "sha256:3fe29144e5a3231d0e773074690f434143bcb37c6544f044cd1553a035f1febd" [label=""];
  "sha256:3fe29144e5a3231d0e773074690f434143bcb37c6544f044cd1553a035f1febd" -> "sha256:af73a23802243e92a7f715ae196e3626961565da013c0b7f838121519877023f" [label=""];
}

