[app/sources/213735595.Dockerfile]
digraph {
  "sha256:578c7e8e52323786d9f14b1a94a34ef3bd060ce1bf9e786f781785de0100e699" [label="docker-image://docker.io/nodesource/fedora20-base:latest" shape="ellipse"];
  "sha256:f37b84fcde5087d740d83d956d6ed57154f9792116d3f8efba991d175da376ba" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_0.12/fc/20/x86_64/nodejs-0.12.1-1nodesource.fc20.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:b47d6782bcda0ff2caf650213171f853252ce83665d6e3e5bb730722e5fbb237" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:535c18262ca6dc5c59f974e6bd078e416958e123eca25cdbc0a9eed0ac736d04" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:c3f08fe55c8817219e093890ad91444f257883ae26ecfec57cbe0cb915584bea" [label="sha256:c3f08fe55c8817219e093890ad91444f257883ae26ecfec57cbe0cb915584bea" shape="plaintext"];
  "sha256:578c7e8e52323786d9f14b1a94a34ef3bd060ce1bf9e786f781785de0100e699" -> "sha256:f37b84fcde5087d740d83d956d6ed57154f9792116d3f8efba991d175da376ba" [label=""];
  "sha256:f37b84fcde5087d740d83d956d6ed57154f9792116d3f8efba991d175da376ba" -> "sha256:b47d6782bcda0ff2caf650213171f853252ce83665d6e3e5bb730722e5fbb237" [label=""];
  "sha256:b47d6782bcda0ff2caf650213171f853252ce83665d6e3e5bb730722e5fbb237" -> "sha256:535c18262ca6dc5c59f974e6bd078e416958e123eca25cdbc0a9eed0ac736d04" [label=""];
  "sha256:535c18262ca6dc5c59f974e6bd078e416958e123eca25cdbc0a9eed0ac736d04" -> "sha256:c3f08fe55c8817219e093890ad91444f257883ae26ecfec57cbe0cb915584bea" [label=""];
}

