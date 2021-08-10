[app/sources/213734662.Dockerfile]
digraph {
  "sha256:cf8f35b6f8cdc041349d2ee1d142f0d9b972ff277c32373a40b345e66156e07c" [label="docker-image://docker.io/nodesource/centos6-base:latest" shape="ellipse"];
  "sha256:e36a605976f6c62a2514dd97b98d7f7b194f34fa07d788a96f3160663f56b132" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_0.12/el/6/x86_64/nodejs-0.12.7-1nodesource.el6.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:54bb02a3678a6c4988dc99da286590384697ec4e6443ef39c75527a171f05b58" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:73aa4b13b5c4a1df6ff625b24ee7d3132ec30b20fcd4dda487b4676d63b86712" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:043596083d65826523147d9df3630bc0ae367432ec424a278fb0e6c4f4b14d40" [label="sha256:043596083d65826523147d9df3630bc0ae367432ec424a278fb0e6c4f4b14d40" shape="plaintext"];
  "sha256:cf8f35b6f8cdc041349d2ee1d142f0d9b972ff277c32373a40b345e66156e07c" -> "sha256:e36a605976f6c62a2514dd97b98d7f7b194f34fa07d788a96f3160663f56b132" [label=""];
  "sha256:e36a605976f6c62a2514dd97b98d7f7b194f34fa07d788a96f3160663f56b132" -> "sha256:54bb02a3678a6c4988dc99da286590384697ec4e6443ef39c75527a171f05b58" [label=""];
  "sha256:54bb02a3678a6c4988dc99da286590384697ec4e6443ef39c75527a171f05b58" -> "sha256:73aa4b13b5c4a1df6ff625b24ee7d3132ec30b20fcd4dda487b4676d63b86712" [label=""];
  "sha256:73aa4b13b5c4a1df6ff625b24ee7d3132ec30b20fcd4dda487b4676d63b86712" -> "sha256:043596083d65826523147d9df3630bc0ae367432ec424a278fb0e6c4f4b14d40" [label=""];
}

