[app/sources/252786349.Dockerfile]
digraph {
  "sha256:44b066127f4c79b11c7825a2016324aed171d903d15712ee97046882a4c55d56" [label="docker-image://docker.io/dock0/foreman:latest" shape="ellipse"];
  "sha256:2cc07e6e02d26abf5c656fd22f69492f8ddeef66e8e365a82eed0f7ed12ecdd8" [label="local://context" shape="ellipse"];
  "sha256:646e28ffb3f81ad4f881c0f84d838d0dcf91a94937eb8876bc515af920a014e5" [label="copy{src=/source, dest=/srv/app}" shape="note"];
  "sha256:e12371b04e2b2e7d0ff064b81a165839ad5a0a6679a15db0f853bbfc6c9c63d2" [label="/bin/sh -c bundle install --gemfile /srv/app/Gemfile" shape="box"];
  "sha256:956f071dc80c34f53e8db9c5b182b865a9e171d5fbacdff6ee8dec593d62d23f" [label="sha256:956f071dc80c34f53e8db9c5b182b865a9e171d5fbacdff6ee8dec593d62d23f" shape="plaintext"];
  "sha256:44b066127f4c79b11c7825a2016324aed171d903d15712ee97046882a4c55d56" -> "sha256:646e28ffb3f81ad4f881c0f84d838d0dcf91a94937eb8876bc515af920a014e5" [label=""];
  "sha256:2cc07e6e02d26abf5c656fd22f69492f8ddeef66e8e365a82eed0f7ed12ecdd8" -> "sha256:646e28ffb3f81ad4f881c0f84d838d0dcf91a94937eb8876bc515af920a014e5" [label=""];
  "sha256:646e28ffb3f81ad4f881c0f84d838d0dcf91a94937eb8876bc515af920a014e5" -> "sha256:e12371b04e2b2e7d0ff064b81a165839ad5a0a6679a15db0f853bbfc6c9c63d2" [label=""];
  "sha256:e12371b04e2b2e7d0ff064b81a165839ad5a0a6679a15db0f853bbfc6c9c63d2" -> "sha256:956f071dc80c34f53e8db9c5b182b865a9e171d5fbacdff6ee8dec593d62d23f" [label=""];
}

