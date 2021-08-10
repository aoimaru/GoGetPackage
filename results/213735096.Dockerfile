[app/sources/213735096.Dockerfile]
digraph {
  "sha256:d7dba969bdb2c702d1f22fb5a861f0297602c774933d428980064c8b07ef7dc7" [label="docker-image://docker.io/nodesource/jessie-base:latest" shape="ellipse"];
  "sha256:3da0d2dee137f109801147169852a197789d419bcfb120bb1647aa037a951571" [label="/bin/sh -c curl https://deb.nodesource.com/node_5.x/pool/main/n/nodejs/nodejs_5.1.0-2nodesource1~jessie1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:e2697b6726b928f03cfeb90d8cbd2ff22d4c84746eebe55caa65ef2bcdb3c434" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:decc42b861df1015bd99ee4713df8916706da7285363a98281623bb44493871f" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:c0f3443d87eb7571a1906da6b8155821f843912e30724212ee3c706200e64e6e" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:f449e5813e673675a73b8434a3f391ee6dd88df80965db159f357c0b472d52d4" [label="sha256:f449e5813e673675a73b8434a3f391ee6dd88df80965db159f357c0b472d52d4" shape="plaintext"];
  "sha256:d7dba969bdb2c702d1f22fb5a861f0297602c774933d428980064c8b07ef7dc7" -> "sha256:3da0d2dee137f109801147169852a197789d419bcfb120bb1647aa037a951571" [label=""];
  "sha256:3da0d2dee137f109801147169852a197789d419bcfb120bb1647aa037a951571" -> "sha256:e2697b6726b928f03cfeb90d8cbd2ff22d4c84746eebe55caa65ef2bcdb3c434" [label=""];
  "sha256:e2697b6726b928f03cfeb90d8cbd2ff22d4c84746eebe55caa65ef2bcdb3c434" -> "sha256:decc42b861df1015bd99ee4713df8916706da7285363a98281623bb44493871f" [label=""];
  "sha256:decc42b861df1015bd99ee4713df8916706da7285363a98281623bb44493871f" -> "sha256:c0f3443d87eb7571a1906da6b8155821f843912e30724212ee3c706200e64e6e" [label=""];
  "sha256:c0f3443d87eb7571a1906da6b8155821f843912e30724212ee3c706200e64e6e" -> "sha256:f449e5813e673675a73b8434a3f391ee6dd88df80965db159f357c0b472d52d4" [label=""];
}

