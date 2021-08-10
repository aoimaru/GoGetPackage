[app/sources/251520310.Dockerfile]
digraph {
  "sha256:951c2712c041636321e64eb8f8adecec9155cf8f397ddf9237b9127147dfc7a6" [label="https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64" shape="ellipse"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk" shape="ellipse"];
  "sha256:bb31fc034ff19e76ef9f8c6f0561a40477f926b9ec5918dc0e8bc1dadf541b74" [label="/bin/sh -c apt-get update  && apt-get install -y --no-install-recommends ca-certificates bzip2 libfontconfig  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:91ea53c21ac174f8cfe8ebac6ef815b665269b1cc6fdeb36ca977ad7c146d655" [label="/bin/sh -c set -x   && apt-get update  && apt-get install -y --no-install-recommends  && mkdir /srv/var  && mkdir /tmp/phantomjs  && curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 | tar -xj --strip-components=1 -C /tmp/phantomjs  && mv /tmp/phantomjs/bin/phantomjs /usr/local/bin  && apt-get autoremove -y  && apt-get clean all  && rm -rf /tmp/* /var/lib/apt/lists/*" shape="box"];
  "sha256:3749cfed80901f5ae28e1439b5c7b59926506f27681568fbca81ae8b171e818d" [label="/bin/sh -c phantomjs --version" shape="box"];
  "sha256:646b2cb2a8dea876fb1b05a72e152d3bf44d393c2bf9ed452f06f5dca430bf0a" [label="/bin/sh -c curl -SL \"https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz\" --output nodejs.tar.gz  && echo \"$NODE_DOWNLOAD_SHA nodejs.tar.gz\" | sha256sum -c -  && tar -xzf \"nodejs.tar.gz\" -C /usr/local --strip-components=1  && rm nodejs.tar.gz  && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:4bce6c18629051e9ffaad1230aa52749e67e768d173a906fea911f99bba26c09" [label="/bin/sh -c apt-get update && apt-get install -yq libgconf-2-4" shape="box"];
  "sha256:c2b7e3bfda2bf7715c7d2ddeccb6e993835f9fa46f8b3bfadb5760e095b31d59" [label="/bin/sh -c apt-get update && apt-get install -y wget --no-install-recommends  && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -  && sh -c 'echo \"deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main\" >> /etc/apt/sources.list.d/google.list'  && apt-get update  && apt-get install -y google-chrome-unstable fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst ttf-freefont    --no-install-recommends  && rm -rf /var/lib/apt/lists/*  && apt-get autoremove -y  && rm -rf /src/*.deb" shape="box"];
  "sha256:7c063ce07b77652349fae5c90524e0ca6b6edade45f5e688ebb8765cb5b77f6c" [label="copy{src=/dumb-init_1.2.0_amd64, dest=/usr/local/bin/dumb-init}" shape="note"];
  "sha256:e6994b0802ece42d67e9ed023932917a2d752ccc1d60c45e0eb8a925685fb45b" [label="/bin/sh -c chmod +x /usr/local/bin/dumb-init" shape="box"];
  "sha256:fba7035f0a0357e389e8c86dc575a920ebf0ccbdf20a6d64c2a4ec75851cd211" [label="/bin/sh -c npm i puppeteer" shape="box"];
  "sha256:09fb41615a3db76f3744cd7cd9f133b6769142bdbba7a2f16448ed3a62864969" [label="sha256:09fb41615a3db76f3744cd7cd9f133b6769142bdbba7a2f16448ed3a62864969" shape="plaintext"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" -> "sha256:bb31fc034ff19e76ef9f8c6f0561a40477f926b9ec5918dc0e8bc1dadf541b74" [label=""];
  "sha256:bb31fc034ff19e76ef9f8c6f0561a40477f926b9ec5918dc0e8bc1dadf541b74" -> "sha256:91ea53c21ac174f8cfe8ebac6ef815b665269b1cc6fdeb36ca977ad7c146d655" [label=""];
  "sha256:91ea53c21ac174f8cfe8ebac6ef815b665269b1cc6fdeb36ca977ad7c146d655" -> "sha256:3749cfed80901f5ae28e1439b5c7b59926506f27681568fbca81ae8b171e818d" [label=""];
  "sha256:3749cfed80901f5ae28e1439b5c7b59926506f27681568fbca81ae8b171e818d" -> "sha256:646b2cb2a8dea876fb1b05a72e152d3bf44d393c2bf9ed452f06f5dca430bf0a" [label=""];
  "sha256:646b2cb2a8dea876fb1b05a72e152d3bf44d393c2bf9ed452f06f5dca430bf0a" -> "sha256:4bce6c18629051e9ffaad1230aa52749e67e768d173a906fea911f99bba26c09" [label=""];
  "sha256:4bce6c18629051e9ffaad1230aa52749e67e768d173a906fea911f99bba26c09" -> "sha256:c2b7e3bfda2bf7715c7d2ddeccb6e993835f9fa46f8b3bfadb5760e095b31d59" [label=""];
  "sha256:c2b7e3bfda2bf7715c7d2ddeccb6e993835f9fa46f8b3bfadb5760e095b31d59" -> "sha256:7c063ce07b77652349fae5c90524e0ca6b6edade45f5e688ebb8765cb5b77f6c" [label=""];
  "sha256:951c2712c041636321e64eb8f8adecec9155cf8f397ddf9237b9127147dfc7a6" -> "sha256:7c063ce07b77652349fae5c90524e0ca6b6edade45f5e688ebb8765cb5b77f6c" [label=""];
  "sha256:7c063ce07b77652349fae5c90524e0ca6b6edade45f5e688ebb8765cb5b77f6c" -> "sha256:e6994b0802ece42d67e9ed023932917a2d752ccc1d60c45e0eb8a925685fb45b" [label=""];
  "sha256:e6994b0802ece42d67e9ed023932917a2d752ccc1d60c45e0eb8a925685fb45b" -> "sha256:fba7035f0a0357e389e8c86dc575a920ebf0ccbdf20a6d64c2a4ec75851cd211" [label=""];
  "sha256:fba7035f0a0357e389e8c86dc575a920ebf0ccbdf20a6d64c2a4ec75851cd211" -> "sha256:09fb41615a3db76f3744cd7cd9f133b6769142bdbba7a2f16448ed3a62864969" [label=""];
}

