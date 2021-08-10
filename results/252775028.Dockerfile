[app/sources/252775028.Dockerfile]
digraph {
  "sha256:d05a2459f37bf2144550aaea724be8dc108071a6e5afa70282d3638018d088fd" [label="local://context" shape="ellipse"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:df3e2eb5dba5f462e5506e427fea5fec6eb3e23530a1a0ee8faf94c20d942de3" [label="/bin/sh -c apk update && apk add bash git nodejs nodejs-npm nginx python py-pip" shape="box"];
  "sha256:e34370331437cc7d2213ed8178725070fb4dca9a9be4d32431657bf0cfef22f5" [label="/bin/sh -c pip install speedtest-cli" shape="box"];
  "sha256:98b4ff23df79d65e7cfbf6ac7d26a021335d7fe7597eb9b3e2e783c118f22483" [label="/bin/sh -c rm -R /var/www/*" shape="box"];
  "sha256:341e152599893cef149e52afaed4eefb46dee5b640d64f7292c48994315b0e3f" [label="/bin/sh -c mkdir -p /etc/nginx" shape="box"];
  "sha256:2320b8b97a19462e2588ce207362169b3fa0b44b3c75ebe75873ce2a0d668ac9" [label="/bin/sh -c mkdir -p /run/nginx" shape="box"];
  "sha256:97c5263eabb3b1097522b67d6ab669d63f92cfc6a761ff6f3db6e5fb40c8c21f" [label="/bin/sh -c mkdir -p /etc/nginx/global" shape="box"];
  "sha256:472e0c857b0a89fb596375010a34846ffb8d39d8d06c9a517500e7d90835268f" [label="/bin/sh -c mkdir -p /var/www/html" shape="box"];
  "sha256:995390a00999cf7df30f1a93fa72fc8d08a0751eca4284d7e52097b5a9800d5a" [label="/bin/sh -c touch /var/log/nginx/access.log && touch /var/log/nginx/error.log" shape="box"];
  "sha256:664b639a1aed908a7c5ed1b28666b164617996301b625575d2a96f56ea620ffd" [label="copy{src=/config/vhost.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:0d2f7e7435e3dcb9e1024dd6412347d2999ff56734a206f299cb497743b9ac95" [label="copy{src=/, dest=/var/www/html/}" shape="note"];
  "sha256:012cf5f2505d7ed608dfbc78e5dc7e9c9e4a0b8707c726a7e2fc49e1b83188db" [label="/bin/sh -c npm install -g yarn && cd /var/www/html/ && yarn install" shape="box"];
  "sha256:6d18880f843e846c07496d10aef99969d08315147459c2707fb5d6f8c973c31f" [label="/bin/sh -c cd /var/www/html/scripts && ./speedtest.py" shape="box"];
  "sha256:ab3d9e033f9b111f1831e7785d88d7283ae38b128f12c0f918632f4a9218627d" [label="/bin/sh -c chmod +x /var/www/html/config/run.sh" shape="box"];
  "sha256:3f8f1d20e3a8c8783535dc03d7a124ff7269a287e1e2b6cbdabaa1d069f722e2" [label="sha256:3f8f1d20e3a8c8783535dc03d7a124ff7269a287e1e2b6cbdabaa1d069f722e2" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:df3e2eb5dba5f462e5506e427fea5fec6eb3e23530a1a0ee8faf94c20d942de3" [label=""];
  "sha256:df3e2eb5dba5f462e5506e427fea5fec6eb3e23530a1a0ee8faf94c20d942de3" -> "sha256:e34370331437cc7d2213ed8178725070fb4dca9a9be4d32431657bf0cfef22f5" [label=""];
  "sha256:e34370331437cc7d2213ed8178725070fb4dca9a9be4d32431657bf0cfef22f5" -> "sha256:98b4ff23df79d65e7cfbf6ac7d26a021335d7fe7597eb9b3e2e783c118f22483" [label=""];
  "sha256:98b4ff23df79d65e7cfbf6ac7d26a021335d7fe7597eb9b3e2e783c118f22483" -> "sha256:341e152599893cef149e52afaed4eefb46dee5b640d64f7292c48994315b0e3f" [label=""];
  "sha256:341e152599893cef149e52afaed4eefb46dee5b640d64f7292c48994315b0e3f" -> "sha256:2320b8b97a19462e2588ce207362169b3fa0b44b3c75ebe75873ce2a0d668ac9" [label=""];
  "sha256:2320b8b97a19462e2588ce207362169b3fa0b44b3c75ebe75873ce2a0d668ac9" -> "sha256:97c5263eabb3b1097522b67d6ab669d63f92cfc6a761ff6f3db6e5fb40c8c21f" [label=""];
  "sha256:97c5263eabb3b1097522b67d6ab669d63f92cfc6a761ff6f3db6e5fb40c8c21f" -> "sha256:472e0c857b0a89fb596375010a34846ffb8d39d8d06c9a517500e7d90835268f" [label=""];
  "sha256:472e0c857b0a89fb596375010a34846ffb8d39d8d06c9a517500e7d90835268f" -> "sha256:995390a00999cf7df30f1a93fa72fc8d08a0751eca4284d7e52097b5a9800d5a" [label=""];
  "sha256:995390a00999cf7df30f1a93fa72fc8d08a0751eca4284d7e52097b5a9800d5a" -> "sha256:664b639a1aed908a7c5ed1b28666b164617996301b625575d2a96f56ea620ffd" [label=""];
  "sha256:d05a2459f37bf2144550aaea724be8dc108071a6e5afa70282d3638018d088fd" -> "sha256:664b639a1aed908a7c5ed1b28666b164617996301b625575d2a96f56ea620ffd" [label=""];
  "sha256:664b639a1aed908a7c5ed1b28666b164617996301b625575d2a96f56ea620ffd" -> "sha256:0d2f7e7435e3dcb9e1024dd6412347d2999ff56734a206f299cb497743b9ac95" [label=""];
  "sha256:d05a2459f37bf2144550aaea724be8dc108071a6e5afa70282d3638018d088fd" -> "sha256:0d2f7e7435e3dcb9e1024dd6412347d2999ff56734a206f299cb497743b9ac95" [label=""];
  "sha256:0d2f7e7435e3dcb9e1024dd6412347d2999ff56734a206f299cb497743b9ac95" -> "sha256:012cf5f2505d7ed608dfbc78e5dc7e9c9e4a0b8707c726a7e2fc49e1b83188db" [label=""];
  "sha256:012cf5f2505d7ed608dfbc78e5dc7e9c9e4a0b8707c726a7e2fc49e1b83188db" -> "sha256:6d18880f843e846c07496d10aef99969d08315147459c2707fb5d6f8c973c31f" [label=""];
  "sha256:6d18880f843e846c07496d10aef99969d08315147459c2707fb5d6f8c973c31f" -> "sha256:ab3d9e033f9b111f1831e7785d88d7283ae38b128f12c0f918632f4a9218627d" [label=""];
  "sha256:ab3d9e033f9b111f1831e7785d88d7283ae38b128f12c0f918632f4a9218627d" -> "sha256:3f8f1d20e3a8c8783535dc03d7a124ff7269a287e1e2b6cbdabaa1d069f722e2" [label=""];
}

