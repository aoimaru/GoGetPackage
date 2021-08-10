[app/sources/213736070.Dockerfile]
digraph {
  "sha256:52bfaad1c3b17b4bcaad95f6f23921fb2227a78083d34079d0f55e643bee6b59" [label="docker-image://docker.io/nodesource/precise-base:latest" shape="ellipse"];
  "sha256:5b39a4f9638ed9b8ddd88a8e8a462f89891e75dc837c43778c5f6a09841b6eab" [label="/bin/sh -c curl https://deb.nodesource.com/node/pool/main/n/nodejs/nodejs_0.10.41-1nodesource1~precise1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:85f21d0ed39475a311965ed61b2868eb801b619eb52056fb2a6cdca989ffde09" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:f48bd18a440fb10252b44c7d4b14f107a150098cf3bb502549a35745a7d70a25" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f8014f5afe524b9f53ac266198065c057b254078fcb8c4175a911e9cf5ca5489" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:446497acf1bcd04d4663047c4b8eca8763fec3996f5129a28de1bd81d558dd1e" [label="sha256:446497acf1bcd04d4663047c4b8eca8763fec3996f5129a28de1bd81d558dd1e" shape="plaintext"];
  "sha256:52bfaad1c3b17b4bcaad95f6f23921fb2227a78083d34079d0f55e643bee6b59" -> "sha256:5b39a4f9638ed9b8ddd88a8e8a462f89891e75dc837c43778c5f6a09841b6eab" [label=""];
  "sha256:5b39a4f9638ed9b8ddd88a8e8a462f89891e75dc837c43778c5f6a09841b6eab" -> "sha256:85f21d0ed39475a311965ed61b2868eb801b619eb52056fb2a6cdca989ffde09" [label=""];
  "sha256:85f21d0ed39475a311965ed61b2868eb801b619eb52056fb2a6cdca989ffde09" -> "sha256:f48bd18a440fb10252b44c7d4b14f107a150098cf3bb502549a35745a7d70a25" [label=""];
  "sha256:f48bd18a440fb10252b44c7d4b14f107a150098cf3bb502549a35745a7d70a25" -> "sha256:f8014f5afe524b9f53ac266198065c057b254078fcb8c4175a911e9cf5ca5489" [label=""];
  "sha256:f8014f5afe524b9f53ac266198065c057b254078fcb8c4175a911e9cf5ca5489" -> "sha256:446497acf1bcd04d4663047c4b8eca8763fec3996f5129a28de1bd81d558dd1e" [label=""];
}

