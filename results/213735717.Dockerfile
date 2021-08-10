[app/sources/213735717.Dockerfile]
digraph {
  "sha256:045706877e8c84990c2a94526a06ad485ea4c820f5f7d838346e25014bf4a505" [label="docker-image://docker.io/nodesource/fedora22-base:latest" shape="ellipse"];
  "sha256:e6bb2400f8ea0e4e0f786b2cac61c2bdebc9c352f43c9485755539edc9013f45" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_0.12/fc/22/x86_64/nodejs-0.12.10-1nodesource.fc22.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:736081f90c13605b5d546951a1a5dc6f6bed0f441d437a43cbc09184ac9f6290" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:4271e8684263d384da03f93fa221a45559b70b1a1d56e4eaf67681ab21b4a69e" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:8bb885436186ff8efb6e8fa099d169d86d45316b50d53a5702f35d09734a2475" [label="sha256:8bb885436186ff8efb6e8fa099d169d86d45316b50d53a5702f35d09734a2475" shape="plaintext"];
  "sha256:045706877e8c84990c2a94526a06ad485ea4c820f5f7d838346e25014bf4a505" -> "sha256:e6bb2400f8ea0e4e0f786b2cac61c2bdebc9c352f43c9485755539edc9013f45" [label=""];
  "sha256:e6bb2400f8ea0e4e0f786b2cac61c2bdebc9c352f43c9485755539edc9013f45" -> "sha256:736081f90c13605b5d546951a1a5dc6f6bed0f441d437a43cbc09184ac9f6290" [label=""];
  "sha256:736081f90c13605b5d546951a1a5dc6f6bed0f441d437a43cbc09184ac9f6290" -> "sha256:4271e8684263d384da03f93fa221a45559b70b1a1d56e4eaf67681ab21b4a69e" [label=""];
  "sha256:4271e8684263d384da03f93fa221a45559b70b1a1d56e4eaf67681ab21b4a69e" -> "sha256:8bb885436186ff8efb6e8fa099d169d86d45316b50d53a5702f35d09734a2475" [label=""];
}

