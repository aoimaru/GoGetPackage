[app/sources/213735182.Dockerfile]
digraph {
  "sha256:c06f95b99e67ed07af28914a13e136ca35d706abf7a0b55b9d7b510029d9e623" [label="docker-image://docker.io/nodesource/sid-base:latest" shape="ellipse"];
  "sha256:093104a4c438b298ce58057fe3c8f6f1d1d318cfc0b098d8f80f13833d91d41a" [label="/bin/sh -c curl https://deb.nodesource.com/iojs_2.x/pool/main/i/iojs/iojs_2.0.1-1nodesource1~sid1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:f8e97750eb2dcb461296d689d75b295a639fcb422cc9549502b96d1ee88c23e5" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:fd423b5e65d59c07f700531423580e01041a61e3ab391bbc0360947b3c2207d0" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:8a43264c123a26341cdb67862e3c59b42c63e8275fcfa613f8c2eeba46e459c7" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:18f12c317e757aee50be7ed1e648645992e743479a5414d8ac4460427752d6ba" [label="sha256:18f12c317e757aee50be7ed1e648645992e743479a5414d8ac4460427752d6ba" shape="plaintext"];
  "sha256:c06f95b99e67ed07af28914a13e136ca35d706abf7a0b55b9d7b510029d9e623" -> "sha256:093104a4c438b298ce58057fe3c8f6f1d1d318cfc0b098d8f80f13833d91d41a" [label=""];
  "sha256:093104a4c438b298ce58057fe3c8f6f1d1d318cfc0b098d8f80f13833d91d41a" -> "sha256:f8e97750eb2dcb461296d689d75b295a639fcb422cc9549502b96d1ee88c23e5" [label=""];
  "sha256:f8e97750eb2dcb461296d689d75b295a639fcb422cc9549502b96d1ee88c23e5" -> "sha256:fd423b5e65d59c07f700531423580e01041a61e3ab391bbc0360947b3c2207d0" [label=""];
  "sha256:fd423b5e65d59c07f700531423580e01041a61e3ab391bbc0360947b3c2207d0" -> "sha256:8a43264c123a26341cdb67862e3c59b42c63e8275fcfa613f8c2eeba46e459c7" [label=""];
  "sha256:8a43264c123a26341cdb67862e3c59b42c63e8275fcfa613f8c2eeba46e459c7" -> "sha256:18f12c317e757aee50be7ed1e648645992e743479a5414d8ac4460427752d6ba" [label=""];
}

