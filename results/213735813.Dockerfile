[app/sources/213735813.Dockerfile]
digraph {
  "sha256:045706877e8c84990c2a94526a06ad485ea4c820f5f7d838346e25014bf4a505" [label="docker-image://docker.io/nodesource/fedora22-base:latest" shape="ellipse"];
  "sha256:0eefb78f1271bd3e84d87b0cd8e621a51b14e1fa10a8e034edeab4ed5c66db01" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_5.x/fc/22/x86_64/nodejs-5.9.0-1nodesource.fc22.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:a2178060851dffd1b7df737d14c268ed3fc2e25342d6cdb5ecadc0e6f0ca0504" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:b34733a345ad0fa82093abe52347ec0751473f808f91c91f898f795f6c473fce" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:e0a42951031362a576211c2c844cf8d2c6917262395e9ca6bce2becd5db28ec3" [label="sha256:e0a42951031362a576211c2c844cf8d2c6917262395e9ca6bce2becd5db28ec3" shape="plaintext"];
  "sha256:045706877e8c84990c2a94526a06ad485ea4c820f5f7d838346e25014bf4a505" -> "sha256:0eefb78f1271bd3e84d87b0cd8e621a51b14e1fa10a8e034edeab4ed5c66db01" [label=""];
  "sha256:0eefb78f1271bd3e84d87b0cd8e621a51b14e1fa10a8e034edeab4ed5c66db01" -> "sha256:a2178060851dffd1b7df737d14c268ed3fc2e25342d6cdb5ecadc0e6f0ca0504" [label=""];
  "sha256:a2178060851dffd1b7df737d14c268ed3fc2e25342d6cdb5ecadc0e6f0ca0504" -> "sha256:b34733a345ad0fa82093abe52347ec0751473f808f91c91f898f795f6c473fce" [label=""];
  "sha256:b34733a345ad0fa82093abe52347ec0751473f808f91c91f898f795f6c473fce" -> "sha256:e0a42951031362a576211c2c844cf8d2c6917262395e9ca6bce2becd5db28ec3" [label=""];
}

