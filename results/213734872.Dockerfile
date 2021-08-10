[app/sources/213734872.Dockerfile]
digraph {
  "sha256:b7d8a283156aa3bf933dd4c0a80c6fc12d201d1e77086157e3c74cc137068f68" [label="docker-image://docker.io/nodesource/centos7-base:latest" shape="ellipse"];
  "sha256:52437b998f86c0fed499b4d51a8c310fb0bd8675d3b79a2c686d63583e0eccde" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_5.x/el/7/x86_64/nodejs-5.10.1-1nodesource.el7.centos.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:1e8478d6b0f7726ac3ecf7de91140e7dafa3b12557fb3aa5139b03dacaabfc63" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:265681dc1ab1c06ea9233710050016503214ffd94c26c72bccfa5b51ae414000" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:0d72c9465320463d830f0640d5188c27885084f5bdb322c24547bf50f937f390" [label="sha256:0d72c9465320463d830f0640d5188c27885084f5bdb322c24547bf50f937f390" shape="plaintext"];
  "sha256:b7d8a283156aa3bf933dd4c0a80c6fc12d201d1e77086157e3c74cc137068f68" -> "sha256:52437b998f86c0fed499b4d51a8c310fb0bd8675d3b79a2c686d63583e0eccde" [label=""];
  "sha256:52437b998f86c0fed499b4d51a8c310fb0bd8675d3b79a2c686d63583e0eccde" -> "sha256:1e8478d6b0f7726ac3ecf7de91140e7dafa3b12557fb3aa5139b03dacaabfc63" [label=""];
  "sha256:1e8478d6b0f7726ac3ecf7de91140e7dafa3b12557fb3aa5139b03dacaabfc63" -> "sha256:265681dc1ab1c06ea9233710050016503214ffd94c26c72bccfa5b51ae414000" [label=""];
  "sha256:265681dc1ab1c06ea9233710050016503214ffd94c26c72bccfa5b51ae414000" -> "sha256:0d72c9465320463d830f0640d5188c27885084f5bdb322c24547bf50f937f390" [label=""];
}

