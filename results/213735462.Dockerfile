[app/sources/213735462.Dockerfile]
digraph {
  "sha256:dfaa689fcf2ebc7f0b4349cee21e021c9f56f3735bbe27b4780e3939deebf223" [label="docker-image://docker.io/nodesource/wheezy-base:latest" shape="ellipse"];
  "sha256:bb10dd61e6402c8954200ccb37244479f0d7412c828c042384a595e8975688fa" [label="/bin/sh -c curl https://deb.nodesource.com/node_4.x/pool/main/n/nodejs/nodejs_4.2.4-1nodesource1~wheezy1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:d97c9fc4edfea4b541001b7b54f4d25cdffe0a6972290349d44e5815311731a9" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:3971851613f7fe9cff45ecf5723c03bf1788fe964ccaa97c2d9d45d3f7f91625" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:3a3b8372fde03710d73a98868b1d440dfc615347f113a883f347558323a0d80a" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:13f39c2a50cde69fe269c5159dee8eb73d311ad7e932f59e8a47290463c4751f" [label="sha256:13f39c2a50cde69fe269c5159dee8eb73d311ad7e932f59e8a47290463c4751f" shape="plaintext"];
  "sha256:dfaa689fcf2ebc7f0b4349cee21e021c9f56f3735bbe27b4780e3939deebf223" -> "sha256:bb10dd61e6402c8954200ccb37244479f0d7412c828c042384a595e8975688fa" [label=""];
  "sha256:bb10dd61e6402c8954200ccb37244479f0d7412c828c042384a595e8975688fa" -> "sha256:d97c9fc4edfea4b541001b7b54f4d25cdffe0a6972290349d44e5815311731a9" [label=""];
  "sha256:d97c9fc4edfea4b541001b7b54f4d25cdffe0a6972290349d44e5815311731a9" -> "sha256:3971851613f7fe9cff45ecf5723c03bf1788fe964ccaa97c2d9d45d3f7f91625" [label=""];
  "sha256:3971851613f7fe9cff45ecf5723c03bf1788fe964ccaa97c2d9d45d3f7f91625" -> "sha256:3a3b8372fde03710d73a98868b1d440dfc615347f113a883f347558323a0d80a" [label=""];
  "sha256:3a3b8372fde03710d73a98868b1d440dfc615347f113a883f347558323a0d80a" -> "sha256:13f39c2a50cde69fe269c5159dee8eb73d311ad7e932f59e8a47290463c4751f" [label=""];
}

