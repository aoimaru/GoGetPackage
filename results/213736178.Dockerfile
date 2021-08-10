[app/sources/213736178.Dockerfile]
digraph {
  "sha256:52bfaad1c3b17b4bcaad95f6f23921fb2227a78083d34079d0f55e643bee6b59" [label="docker-image://docker.io/nodesource/precise-base:latest" shape="ellipse"];
  "sha256:eb49143a7a79fc20a84779ef3e43ebdd14fd396bae7e86983b04e14f6ec53ded" [label="/bin/sh -c curl https://deb.nodesource.com/node_5.x/pool/main/n/nodejs/nodejs_5.4.0-1nodesource1~precise1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:90e36161a99824d592cb1199d1607bf09a8e1e3beab86ecc4799901b7f441610" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:496a905019354bf84af8272918b152af86dd0d7548adab9975226acbe5b67156" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:8c7997067e2b65fabd6218c77914b7f0dc65e1b32b9ef80fe2f1f9ecb9ce2d54" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:6956a0f38156b922cf87739a3950172f40efba94f107fe6d00e334382255ea54" [label="sha256:6956a0f38156b922cf87739a3950172f40efba94f107fe6d00e334382255ea54" shape="plaintext"];
  "sha256:52bfaad1c3b17b4bcaad95f6f23921fb2227a78083d34079d0f55e643bee6b59" -> "sha256:eb49143a7a79fc20a84779ef3e43ebdd14fd396bae7e86983b04e14f6ec53ded" [label=""];
  "sha256:eb49143a7a79fc20a84779ef3e43ebdd14fd396bae7e86983b04e14f6ec53ded" -> "sha256:90e36161a99824d592cb1199d1607bf09a8e1e3beab86ecc4799901b7f441610" [label=""];
  "sha256:90e36161a99824d592cb1199d1607bf09a8e1e3beab86ecc4799901b7f441610" -> "sha256:496a905019354bf84af8272918b152af86dd0d7548adab9975226acbe5b67156" [label=""];
  "sha256:496a905019354bf84af8272918b152af86dd0d7548adab9975226acbe5b67156" -> "sha256:8c7997067e2b65fabd6218c77914b7f0dc65e1b32b9ef80fe2f1f9ecb9ce2d54" [label=""];
  "sha256:8c7997067e2b65fabd6218c77914b7f0dc65e1b32b9ef80fe2f1f9ecb9ce2d54" -> "sha256:6956a0f38156b922cf87739a3950172f40efba94f107fe6d00e334382255ea54" [label=""];
}

