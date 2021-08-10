[app/sources/247631998.Dockerfile]
digraph {
  "sha256:998e7ab5f9fa19cb57575e73bf5746fa2624d45d180ae4c258f9f9714eb7d4b1" [label="docker-image://docker.io/nginxinc/nginx-unprivileged:1.14.2-alpine" shape="ellipse"];
  "sha256:facb4b9e30c96aad1fcb771d84cb14a5ce24b940489d04cf5bdf464c0e62f8a3" [label="docker-image://docker.io/library/node:11.15.0-alpine" shape="ellipse"];
  "sha256:f5ecae9235220956cc9aea6c14aad3c132d941c9446601a9703d1da490bf2eba" [label="/bin/sh -c echo ${BASE_HREF} | grep -Eq '^\\/(.*\\/)?$' || (>&2 echo \"BASE_HREF must start and end with a forward slash\" && exit 1)" shape="box"];
  "sha256:493a6abba155f13a787cc4b56472814d1ba15fac4c19ceecab95a3a287aeec55" [label="mkdir{path=/src}" shape="note"];
  "sha256:3570f22ee1bd6872de1b2e0c808f690406eb99a8715d00449777ce60b9054420" [label="local://context" shape="ellipse"];
  "sha256:096ed61b04c77ef02e6b064e5bb9399bf1cd3d1eee435868f67c4d8d0ef50990" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:8d0d6ca6b17ca0b328ac7bdde8db6f37f71c44c8033e1d258891e90e63029612" [label="/bin/sh -c apk --no-cache add tar curl gettext python-dev make g++" shape="box"];
  "sha256:0bc2ea74047c1a3d75ad9b47362cc03f4b27819a50768df66113d3dedbeeed3e" [label="/bin/sh -c npm install -g @angular/cli   && npm install   && ng build --prod --base-href ${BASE_HREF}" shape="box"];
  "sha256:0f578fc394997c9b218e58e4b33d594fcfd7cc585e7d33256e2efd5203d0cb13" [label="/bin/sh -c envsubst '${BASE_HREF}'     < docker/files/etc/nginx/nginx.conf.template     > docker/files/etc/nginx/nginx.conf.template.sub   && mv -f     docker/files/etc/nginx/nginx.conf.template.sub     docker/files/etc/nginx/nginx.conf.template" shape="box"];
  "sha256:cbad493a2f0301dc8d326aab67ae031bab52f17c2d3016579a1865cc16e1fa4e" [label="/bin/sh -c chmod +x   docker/files/app/run.sh   docker/files/app/healthcheck.sh" shape="box"];
  "sha256:4904d146d7163fa423be52b2d519f90a08ab39515bdf6520e0fe911d0db4f23d" [label="/bin/sh -c curl     -Lo dockerize-alpine-linux-amd64-v${DOCKERIZE_VERSION}.tar.gz     https://github.com/jwilder/dockerize/releases/download/v${DOCKERIZE_VERSION}/dockerize-alpine-linux-amd64-v${DOCKERIZE_VERSION}.tar.gz   && tar xzvf dockerize-alpine-linux-amd64-v${DOCKERIZE_VERSION}.tar.gz -C /usr/local/bin" shape="box"];
  "sha256:76a9f908f30ebd8795eb46cb52ee6bbde1ac69743bed814c9ad8f6e4d5e8bdac" [label="copy{src=/usr/local/bin/dockerize, dest=/usr/local/bin/dockerize}" shape="note"];
  "sha256:4a7ca80a454a276b5defc61e20126184a47d62426d373cd9cbcdc705eea2821d" [label="copy{src=/src/docker/files, dest=/}" shape="note"];
  "sha256:f41ff734b0b8a6bf17104233054104cd797e8bb3429e5512325de0cae88ea063" [label="copy{src=/src/dist, dest=/app/public}" shape="note"];
  "sha256:c995e83b4261b115b02aca2a1c642aaf24e337e523ba4fb7ac513a9986a7c584" [label="mkdir{path=/app}" shape="note"];
  "sha256:2168fabe8d5845839eeb697b5dddf106f58b9507739da3ba069e81f572096622" [label="/bin/sh -c apk --no-cache add curl" shape="box"];
  "sha256:606902c460d0f6db996b643128496e80e98d2a1741fc807bd2d930961aadf7d2" [label="/bin/sh -c chown -R 1001   /app/public   /etc/nginx/nginx.conf" shape="box"];
  "sha256:cef692a8030389e6e817eb50cdff579f5c79da70d2a91a67b43a0e9477cde481" [label="sha256:cef692a8030389e6e817eb50cdff579f5c79da70d2a91a67b43a0e9477cde481" shape="plaintext"];
  "sha256:facb4b9e30c96aad1fcb771d84cb14a5ce24b940489d04cf5bdf464c0e62f8a3" -> "sha256:f5ecae9235220956cc9aea6c14aad3c132d941c9446601a9703d1da490bf2eba" [label=""];
  "sha256:f5ecae9235220956cc9aea6c14aad3c132d941c9446601a9703d1da490bf2eba" -> "sha256:493a6abba155f13a787cc4b56472814d1ba15fac4c19ceecab95a3a287aeec55" [label=""];
  "sha256:493a6abba155f13a787cc4b56472814d1ba15fac4c19ceecab95a3a287aeec55" -> "sha256:096ed61b04c77ef02e6b064e5bb9399bf1cd3d1eee435868f67c4d8d0ef50990" [label=""];
  "sha256:3570f22ee1bd6872de1b2e0c808f690406eb99a8715d00449777ce60b9054420" -> "sha256:096ed61b04c77ef02e6b064e5bb9399bf1cd3d1eee435868f67c4d8d0ef50990" [label=""];
  "sha256:096ed61b04c77ef02e6b064e5bb9399bf1cd3d1eee435868f67c4d8d0ef50990" -> "sha256:8d0d6ca6b17ca0b328ac7bdde8db6f37f71c44c8033e1d258891e90e63029612" [label=""];
  "sha256:8d0d6ca6b17ca0b328ac7bdde8db6f37f71c44c8033e1d258891e90e63029612" -> "sha256:0bc2ea74047c1a3d75ad9b47362cc03f4b27819a50768df66113d3dedbeeed3e" [label=""];
  "sha256:0bc2ea74047c1a3d75ad9b47362cc03f4b27819a50768df66113d3dedbeeed3e" -> "sha256:0f578fc394997c9b218e58e4b33d594fcfd7cc585e7d33256e2efd5203d0cb13" [label=""];
  "sha256:0f578fc394997c9b218e58e4b33d594fcfd7cc585e7d33256e2efd5203d0cb13" -> "sha256:cbad493a2f0301dc8d326aab67ae031bab52f17c2d3016579a1865cc16e1fa4e" [label=""];
  "sha256:cbad493a2f0301dc8d326aab67ae031bab52f17c2d3016579a1865cc16e1fa4e" -> "sha256:4904d146d7163fa423be52b2d519f90a08ab39515bdf6520e0fe911d0db4f23d" [label=""];
  "sha256:998e7ab5f9fa19cb57575e73bf5746fa2624d45d180ae4c258f9f9714eb7d4b1" -> "sha256:76a9f908f30ebd8795eb46cb52ee6bbde1ac69743bed814c9ad8f6e4d5e8bdac" [label=""];
  "sha256:4904d146d7163fa423be52b2d519f90a08ab39515bdf6520e0fe911d0db4f23d" -> "sha256:76a9f908f30ebd8795eb46cb52ee6bbde1ac69743bed814c9ad8f6e4d5e8bdac" [label=""];
  "sha256:76a9f908f30ebd8795eb46cb52ee6bbde1ac69743bed814c9ad8f6e4d5e8bdac" -> "sha256:4a7ca80a454a276b5defc61e20126184a47d62426d373cd9cbcdc705eea2821d" [label=""];
  "sha256:4904d146d7163fa423be52b2d519f90a08ab39515bdf6520e0fe911d0db4f23d" -> "sha256:4a7ca80a454a276b5defc61e20126184a47d62426d373cd9cbcdc705eea2821d" [label=""];
  "sha256:4a7ca80a454a276b5defc61e20126184a47d62426d373cd9cbcdc705eea2821d" -> "sha256:f41ff734b0b8a6bf17104233054104cd797e8bb3429e5512325de0cae88ea063" [label=""];
  "sha256:4904d146d7163fa423be52b2d519f90a08ab39515bdf6520e0fe911d0db4f23d" -> "sha256:f41ff734b0b8a6bf17104233054104cd797e8bb3429e5512325de0cae88ea063" [label=""];
  "sha256:f41ff734b0b8a6bf17104233054104cd797e8bb3429e5512325de0cae88ea063" -> "sha256:c995e83b4261b115b02aca2a1c642aaf24e337e523ba4fb7ac513a9986a7c584" [label=""];
  "sha256:c995e83b4261b115b02aca2a1c642aaf24e337e523ba4fb7ac513a9986a7c584" -> "sha256:2168fabe8d5845839eeb697b5dddf106f58b9507739da3ba069e81f572096622" [label=""];
  "sha256:2168fabe8d5845839eeb697b5dddf106f58b9507739da3ba069e81f572096622" -> "sha256:606902c460d0f6db996b643128496e80e98d2a1741fc807bd2d930961aadf7d2" [label=""];
  "sha256:606902c460d0f6db996b643128496e80e98d2a1741fc807bd2d930961aadf7d2" -> "sha256:cef692a8030389e6e817eb50cdff579f5c79da70d2a91a67b43a0e9477cde481" [label=""];
}

