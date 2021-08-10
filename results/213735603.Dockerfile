[app/sources/213735603.Dockerfile]
digraph {
  "sha256:578c7e8e52323786d9f14b1a94a34ef3bd060ce1bf9e786f781785de0100e699" [label="docker-image://docker.io/nodesource/fedora20-base:latest" shape="ellipse"];
  "sha256:6de5ac133c9d7e427633291cac225f0dbe40d7e475f3e7672cf3b165f38ad65d" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_0.12/fc/20/x86_64/nodejs-0.12.6-1nodesource.fc20.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:f5388146aa3eb3f30edeb79fa6dd96ff9508b22f61eec76eeb6189416d6877fa" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:613ad21670cd201e7555110b42e94391d5b5f0110221c3e3451a72d6e1c7f02e" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:23ddd4c93404aeb7a1c17318abc4c2a48e7d89b7d825abf225cca32ce384b085" [label="sha256:23ddd4c93404aeb7a1c17318abc4c2a48e7d89b7d825abf225cca32ce384b085" shape="plaintext"];
  "sha256:578c7e8e52323786d9f14b1a94a34ef3bd060ce1bf9e786f781785de0100e699" -> "sha256:6de5ac133c9d7e427633291cac225f0dbe40d7e475f3e7672cf3b165f38ad65d" [label=""];
  "sha256:6de5ac133c9d7e427633291cac225f0dbe40d7e475f3e7672cf3b165f38ad65d" -> "sha256:f5388146aa3eb3f30edeb79fa6dd96ff9508b22f61eec76eeb6189416d6877fa" [label=""];
  "sha256:f5388146aa3eb3f30edeb79fa6dd96ff9508b22f61eec76eeb6189416d6877fa" -> "sha256:613ad21670cd201e7555110b42e94391d5b5f0110221c3e3451a72d6e1c7f02e" [label=""];
  "sha256:613ad21670cd201e7555110b42e94391d5b5f0110221c3e3451a72d6e1c7f02e" -> "sha256:23ddd4c93404aeb7a1c17318abc4c2a48e7d89b7d825abf225cca32ce384b085" [label=""];
}

