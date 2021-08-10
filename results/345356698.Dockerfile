[app/sources/345356698.Dockerfile]
digraph {
  "sha256:8037a60aa9a81177e699ea450515b8938c6878f7b2289780775d92d6995d8ffd" [label="docker-image://docker.io/balenalib/aarch64-alpine:edge-run" shape="ellipse"];
  "sha256:4fff3340eb5c4b2b1d6436b4b1ca608c3a85158824ca5ae99c1410d97cfad9c5" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:ff848e974741afc36d16a5f645da181e90339176e4da5c6325da68cf5ef56589" [label="sha256:ff848e974741afc36d16a5f645da181e90339176e4da5c6325da68cf5ef56589" shape="plaintext"];
  "sha256:8037a60aa9a81177e699ea450515b8938c6878f7b2289780775d92d6995d8ffd" -> "sha256:4fff3340eb5c4b2b1d6436b4b1ca608c3a85158824ca5ae99c1410d97cfad9c5" [label=""];
  "sha256:4fff3340eb5c4b2b1d6436b4b1ca608c3a85158824ca5ae99c1410d97cfad9c5" -> "sha256:ff848e974741afc36d16a5f645da181e90339176e4da5c6325da68cf5ef56589" [label=""];
}

