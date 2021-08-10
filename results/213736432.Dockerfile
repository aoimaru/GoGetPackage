[app/sources/213736432.Dockerfile]
digraph {
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" [label="docker-image://docker.io/nodesource/trusty-base:latest" shape="ellipse"];
  "sha256:4914ce113570e41a22ba66f907d9398434e1202064d00394142365be7a4bf833" [label="/bin/sh -c curl https://deb.nodesource.com/node_6.x/pool/main/n/nodejs/nodejs_6.2.1-1nodesource1~trusty1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:e2273e01695eff984d574b75f4b6e38d08fb85213752cedc38b6711c6d2a5d6b" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:617daf9d1fdfbddfaa2da7fb51c612ddca939cb927a42d54ddeabe5e20bcf4fa" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:2927b6c79097db3cb0650b4bd9c2480c3506bfe9850ee982ae06abd3d2b95a9c" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:eca61f9a13ca24bdb25bffe4eb5c80f84cf9fd8ff54070bdcefc022e3a73225d" [label="sha256:eca61f9a13ca24bdb25bffe4eb5c80f84cf9fd8ff54070bdcefc022e3a73225d" shape="plaintext"];
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" -> "sha256:4914ce113570e41a22ba66f907d9398434e1202064d00394142365be7a4bf833" [label=""];
  "sha256:4914ce113570e41a22ba66f907d9398434e1202064d00394142365be7a4bf833" -> "sha256:e2273e01695eff984d574b75f4b6e38d08fb85213752cedc38b6711c6d2a5d6b" [label=""];
  "sha256:e2273e01695eff984d574b75f4b6e38d08fb85213752cedc38b6711c6d2a5d6b" -> "sha256:617daf9d1fdfbddfaa2da7fb51c612ddca939cb927a42d54ddeabe5e20bcf4fa" [label=""];
  "sha256:617daf9d1fdfbddfaa2da7fb51c612ddca939cb927a42d54ddeabe5e20bcf4fa" -> "sha256:2927b6c79097db3cb0650b4bd9c2480c3506bfe9850ee982ae06abd3d2b95a9c" [label=""];
  "sha256:2927b6c79097db3cb0650b4bd9c2480c3506bfe9850ee982ae06abd3d2b95a9c" -> "sha256:eca61f9a13ca24bdb25bffe4eb5c80f84cf9fd8ff54070bdcefc022e3a73225d" [label=""];
}

