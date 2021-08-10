[app/sources/213736664.Dockerfile]
digraph {
  "sha256:371b4dee2e1250a87f7307e702dbd451aa649dd0a84e86f17003b2578d12c142" [label="docker-image://docker.io/nodesource/xenial-base:latest" shape="ellipse"];
  "sha256:433754ef2e1b0289f363a26d736c93482f346acfa2ab17f5e4168a1621704659" [label="/bin/sh -c curl https://deb.nodesource.com/node_0.12/pool/main/n/nodejs/nodejs_0.12.14-1nodesource1~xenial1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:289b444e52cbe486987b8d48cf3c6c011f881699d5f6451035d9be0fbca40c77" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:b80a0bc6b7b49760c4c24d86bf715a1ff2cf8e971a3a86e99618b2fe270f856f" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f2603855138428818e3deb96ef7e94ca0ea1c9ec89c8096a3b1ca5ffa710678d" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:12866cfb3d57a5d68d315d66a3eb4fc53f03a3e547a94cb9aadd78add34c2dbe" [label="sha256:12866cfb3d57a5d68d315d66a3eb4fc53f03a3e547a94cb9aadd78add34c2dbe" shape="plaintext"];
  "sha256:371b4dee2e1250a87f7307e702dbd451aa649dd0a84e86f17003b2578d12c142" -> "sha256:433754ef2e1b0289f363a26d736c93482f346acfa2ab17f5e4168a1621704659" [label=""];
  "sha256:433754ef2e1b0289f363a26d736c93482f346acfa2ab17f5e4168a1621704659" -> "sha256:289b444e52cbe486987b8d48cf3c6c011f881699d5f6451035d9be0fbca40c77" [label=""];
  "sha256:289b444e52cbe486987b8d48cf3c6c011f881699d5f6451035d9be0fbca40c77" -> "sha256:b80a0bc6b7b49760c4c24d86bf715a1ff2cf8e971a3a86e99618b2fe270f856f" [label=""];
  "sha256:b80a0bc6b7b49760c4c24d86bf715a1ff2cf8e971a3a86e99618b2fe270f856f" -> "sha256:f2603855138428818e3deb96ef7e94ca0ea1c9ec89c8096a3b1ca5ffa710678d" [label=""];
  "sha256:f2603855138428818e3deb96ef7e94ca0ea1c9ec89c8096a3b1ca5ffa710678d" -> "sha256:12866cfb3d57a5d68d315d66a3eb4fc53f03a3e547a94cb9aadd78add34c2dbe" [label=""];
}

