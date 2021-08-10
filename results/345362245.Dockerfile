[app/sources/345362245.Dockerfile]
digraph {
  "sha256:310485607d2e615006ff2f35bd2d2462124919a950daa892a901f8d5f6402ed8" [label="docker-image://docker.io/balenalib/aarch64-alpine:3.8-run" shape="ellipse"];
  "sha256:47be7c1b0f51fe8957b1f2b54c6d77467c2d89d2f0eac6c101f3577878b1da80" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:e409f10f8dfd3ce4c6011f2a90b50ddcd1a1b5f929980e3202530ed8545564e6" [label="sha256:e409f10f8dfd3ce4c6011f2a90b50ddcd1a1b5f929980e3202530ed8545564e6" shape="plaintext"];
  "sha256:310485607d2e615006ff2f35bd2d2462124919a950daa892a901f8d5f6402ed8" -> "sha256:47be7c1b0f51fe8957b1f2b54c6d77467c2d89d2f0eac6c101f3577878b1da80" [label=""];
  "sha256:47be7c1b0f51fe8957b1f2b54c6d77467c2d89d2f0eac6c101f3577878b1da80" -> "sha256:e409f10f8dfd3ce4c6011f2a90b50ddcd1a1b5f929980e3202530ed8545564e6" [label=""];
}

