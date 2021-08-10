[app/sources/213735907.Dockerfile]
digraph {
  "sha256:12d18ad11e459fa9904efda355a2f2a0e309a5f4423add9145b4b1fc159fd8e0" [label="docker-image://docker.io/nodesource/fedora23-base:latest" shape="ellipse"];
  "sha256:7700d992402325d4be1fdf40fadd82aa65663b939d42f2d3c9da3b0e6569198f" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_5.x/fc/23/x86_64/nodejs-5.4.0-1nodesource.fc23.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:af9e79f7a3783484830a040a2abcb4f56fd7ff0b27735bbfadd8ea130d5aec34" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:463558458a52a7b1b33cf4d60bb601ea1d16cc7c6580a3ab40fbf3ae669f9ed4" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:87d7e18dc8349935be95b41c72708460a5d440d65796325c90e58a7782b1124d" [label="sha256:87d7e18dc8349935be95b41c72708460a5d440d65796325c90e58a7782b1124d" shape="plaintext"];
  "sha256:12d18ad11e459fa9904efda355a2f2a0e309a5f4423add9145b4b1fc159fd8e0" -> "sha256:7700d992402325d4be1fdf40fadd82aa65663b939d42f2d3c9da3b0e6569198f" [label=""];
  "sha256:7700d992402325d4be1fdf40fadd82aa65663b939d42f2d3c9da3b0e6569198f" -> "sha256:af9e79f7a3783484830a040a2abcb4f56fd7ff0b27735bbfadd8ea130d5aec34" [label=""];
  "sha256:af9e79f7a3783484830a040a2abcb4f56fd7ff0b27735bbfadd8ea130d5aec34" -> "sha256:463558458a52a7b1b33cf4d60bb601ea1d16cc7c6580a3ab40fbf3ae669f9ed4" [label=""];
  "sha256:463558458a52a7b1b33cf4d60bb601ea1d16cc7c6580a3ab40fbf3ae669f9ed4" -> "sha256:87d7e18dc8349935be95b41c72708460a5d440d65796325c90e58a7782b1124d" [label=""];
}

