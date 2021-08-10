[app/sources/213735661.Dockerfile]
digraph {
  "sha256:b447e9a1a15efaa125645510c4e4d576e83b41d829c01f4f8fabfff43cef3b17" [label="docker-image://docker.io/nodesource/fedora21-base:latest" shape="ellipse"];
  "sha256:aa13d13f86f695d2c7b9519d73c58228011ac73744dc661d0b5cae0cc8eac3de" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_0.12/fc/21/x86_64/nodejs-0.12.8-1nodesource.fc21.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:4ac1556158cde1e8c8bc60d622f381e24c06184701656a2b3caf9a5c06a6d635" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:c9810ca1321953d4b7ba3c443cee98cdc5bc43964d75e54f112cfd9ff3b59082" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:3f4fa86f162e2aeb427c453e50f4e45bde7553fb1ba8211238cd716c7171c9b5" [label="sha256:3f4fa86f162e2aeb427c453e50f4e45bde7553fb1ba8211238cd716c7171c9b5" shape="plaintext"];
  "sha256:b447e9a1a15efaa125645510c4e4d576e83b41d829c01f4f8fabfff43cef3b17" -> "sha256:aa13d13f86f695d2c7b9519d73c58228011ac73744dc661d0b5cae0cc8eac3de" [label=""];
  "sha256:aa13d13f86f695d2c7b9519d73c58228011ac73744dc661d0b5cae0cc8eac3de" -> "sha256:4ac1556158cde1e8c8bc60d622f381e24c06184701656a2b3caf9a5c06a6d635" [label=""];
  "sha256:4ac1556158cde1e8c8bc60d622f381e24c06184701656a2b3caf9a5c06a6d635" -> "sha256:c9810ca1321953d4b7ba3c443cee98cdc5bc43964d75e54f112cfd9ff3b59082" [label=""];
  "sha256:c9810ca1321953d4b7ba3c443cee98cdc5bc43964d75e54f112cfd9ff3b59082" -> "sha256:3f4fa86f162e2aeb427c453e50f4e45bde7553fb1ba8211238cd716c7171c9b5" [label=""];
}

