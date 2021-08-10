[app/sources/320096728.Dockerfile]
digraph {
  "sha256:82d8a358ea2b181a6d264d7a69686c135f3c1ee2dfb4987be34706602f22993a" [label="docker-image://docker.io/dockette/stretch:latest" shape="ellipse"];
  "sha256:65e3f9c2901f860ed6e6f50b4ee981d7d4a890aaede19654a9b79f6382a047dc" [label="/bin/sh -c apt-get update && apt-get update -y &&     apt-get install -y wget curl git bash-completion &&     curl -sL https://deb.nodesource.com/setup_8.x | bash - &&     apt-get install -y nodejs &&     npm completion >> /etc/bash_completion.d/npm &&     npm install -g gulp bower grunt &&     apt-get remove -y curl &&     apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y &&     rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:3340bb4e3d0d43ef1d40b06b22e268135c53fc49b9005f925b5b5d117748480b" [label="mkdir{path=/srv}" shape="note"];
  "sha256:f71a4459fc3a148d2419ea12231962f37a2d05cdbd73e219979e21c21fd21df4" [label="sha256:f71a4459fc3a148d2419ea12231962f37a2d05cdbd73e219979e21c21fd21df4" shape="plaintext"];
  "sha256:82d8a358ea2b181a6d264d7a69686c135f3c1ee2dfb4987be34706602f22993a" -> "sha256:65e3f9c2901f860ed6e6f50b4ee981d7d4a890aaede19654a9b79f6382a047dc" [label=""];
  "sha256:65e3f9c2901f860ed6e6f50b4ee981d7d4a890aaede19654a9b79f6382a047dc" -> "sha256:3340bb4e3d0d43ef1d40b06b22e268135c53fc49b9005f925b5b5d117748480b" [label=""];
  "sha256:3340bb4e3d0d43ef1d40b06b22e268135c53fc49b9005f925b5b5d117748480b" -> "sha256:f71a4459fc3a148d2419ea12231962f37a2d05cdbd73e219979e21c21fd21df4" [label=""];
}

