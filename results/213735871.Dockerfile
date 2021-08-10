[app/sources/213735871.Dockerfile]
digraph {
  "sha256:12d18ad11e459fa9904efda355a2f2a0e309a5f4423add9145b4b1fc159fd8e0" [label="docker-image://docker.io/nodesource/fedora23-base:latest" shape="ellipse"];
  "sha256:ce70e48eb15ea9d8d49c0cff198b3590b427d5cc1290069ceae203c1ea99c52e" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_4.x/fc/23/x86_64/nodejs-4.4.2-1nodesource.fc23.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:d1599d828f0412d7d93830b9022f6883385eac5516cef73c68eb6283b4939331" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:c245dd05462a0f2c095e6227352052d8d51d74155c2436d11e05b281c199215b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:302ea0788d5d8a0019abfe044a8068d60f27bc9288b50c37fc8725290847d473" [label="sha256:302ea0788d5d8a0019abfe044a8068d60f27bc9288b50c37fc8725290847d473" shape="plaintext"];
  "sha256:12d18ad11e459fa9904efda355a2f2a0e309a5f4423add9145b4b1fc159fd8e0" -> "sha256:ce70e48eb15ea9d8d49c0cff198b3590b427d5cc1290069ceae203c1ea99c52e" [label=""];
  "sha256:ce70e48eb15ea9d8d49c0cff198b3590b427d5cc1290069ceae203c1ea99c52e" -> "sha256:d1599d828f0412d7d93830b9022f6883385eac5516cef73c68eb6283b4939331" [label=""];
  "sha256:d1599d828f0412d7d93830b9022f6883385eac5516cef73c68eb6283b4939331" -> "sha256:c245dd05462a0f2c095e6227352052d8d51d74155c2436d11e05b281c199215b" [label=""];
  "sha256:c245dd05462a0f2c095e6227352052d8d51d74155c2436d11e05b281c199215b" -> "sha256:302ea0788d5d8a0019abfe044a8068d60f27bc9288b50c37fc8725290847d473" [label=""];
}

