[app/sources/213735508.Dockerfile]
digraph {
  "sha256:dfaa689fcf2ebc7f0b4349cee21e021c9f56f3735bbe27b4780e3939deebf223" [label="docker-image://docker.io/nodesource/wheezy-base:latest" shape="ellipse"];
  "sha256:7844b3eb7a5077bbc11a89f8b0a631acbe1673b562447d74ceea2d1f410dedfe" [label="/bin/sh -c curl https://deb.nodesource.com/node_5.x/pool/main/n/nodejs/nodejs_5.12.0-1nodesource1~wheezy1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:c59a68f16d5295648a479c7f06bb78b9a0fb0ceef7d5853dfd293feca52090ed" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:0876713ad514268deb2d3fffe06462167ebd7ad14a87672ee95dfec667f70bcd" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ad4fdf4883c208009fac69556f60894f1524c5380f0918bbb52da4ff38a168ed" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:4507d16fd6a739fccd94a06085ca618db39978d68f3b841e3fba17f0fd591b2a" [label="sha256:4507d16fd6a739fccd94a06085ca618db39978d68f3b841e3fba17f0fd591b2a" shape="plaintext"];
  "sha256:dfaa689fcf2ebc7f0b4349cee21e021c9f56f3735bbe27b4780e3939deebf223" -> "sha256:7844b3eb7a5077bbc11a89f8b0a631acbe1673b562447d74ceea2d1f410dedfe" [label=""];
  "sha256:7844b3eb7a5077bbc11a89f8b0a631acbe1673b562447d74ceea2d1f410dedfe" -> "sha256:c59a68f16d5295648a479c7f06bb78b9a0fb0ceef7d5853dfd293feca52090ed" [label=""];
  "sha256:c59a68f16d5295648a479c7f06bb78b9a0fb0ceef7d5853dfd293feca52090ed" -> "sha256:0876713ad514268deb2d3fffe06462167ebd7ad14a87672ee95dfec667f70bcd" [label=""];
  "sha256:0876713ad514268deb2d3fffe06462167ebd7ad14a87672ee95dfec667f70bcd" -> "sha256:ad4fdf4883c208009fac69556f60894f1524c5380f0918bbb52da4ff38a168ed" [label=""];
  "sha256:ad4fdf4883c208009fac69556f60894f1524c5380f0918bbb52da4ff38a168ed" -> "sha256:4507d16fd6a739fccd94a06085ca618db39978d68f3b841e3fba17f0fd591b2a" [label=""];
}

