[app/sources/213736678.Dockerfile]
digraph {
  "sha256:371b4dee2e1250a87f7307e702dbd451aa649dd0a84e86f17003b2578d12c142" [label="docker-image://docker.io/nodesource/xenial-base:latest" shape="ellipse"];
  "sha256:a7828b97440d371cac047a37e517ec32bfd553d7e390274ab9bcbf9ac3b3cf21" [label="/bin/sh -c curl https://deb.nodesource.com/node_4.x/pool/main/n/nodejs/nodejs_4.4.6-1nodesource1~xenial1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:c888f08d3145d60655da39bb19e6146130e17dafa1bb57479e5e38f5e15789b3" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:bb34e20031913c09e43e27d45bbaa30a7f301799a3667d79845fd347b3dc570a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:5c42d9c863cb040aa0750a932cb56f5d83a6bc0e8d913edfa82c6ad10b4c8f7c" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:35fd3821b7e7b46e7a86ed8eb6682688568a2cd97bbc5a10279ddc87b3755f2a" [label="sha256:35fd3821b7e7b46e7a86ed8eb6682688568a2cd97bbc5a10279ddc87b3755f2a" shape="plaintext"];
  "sha256:371b4dee2e1250a87f7307e702dbd451aa649dd0a84e86f17003b2578d12c142" -> "sha256:a7828b97440d371cac047a37e517ec32bfd553d7e390274ab9bcbf9ac3b3cf21" [label=""];
  "sha256:a7828b97440d371cac047a37e517ec32bfd553d7e390274ab9bcbf9ac3b3cf21" -> "sha256:c888f08d3145d60655da39bb19e6146130e17dafa1bb57479e5e38f5e15789b3" [label=""];
  "sha256:c888f08d3145d60655da39bb19e6146130e17dafa1bb57479e5e38f5e15789b3" -> "sha256:bb34e20031913c09e43e27d45bbaa30a7f301799a3667d79845fd347b3dc570a" [label=""];
  "sha256:bb34e20031913c09e43e27d45bbaa30a7f301799a3667d79845fd347b3dc570a" -> "sha256:5c42d9c863cb040aa0750a932cb56f5d83a6bc0e8d913edfa82c6ad10b4c8f7c" [label=""];
  "sha256:5c42d9c863cb040aa0750a932cb56f5d83a6bc0e8d913edfa82c6ad10b4c8f7c" -> "sha256:35fd3821b7e7b46e7a86ed8eb6682688568a2cd97bbc5a10279ddc87b3755f2a" [label=""];
}

