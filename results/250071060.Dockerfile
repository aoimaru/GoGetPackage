[app/sources/250071060.Dockerfile]
digraph {
  "sha256:e4e83f9090e05bfe8b9d53ceef02e533c09f6d4d55bd80e208853f0d6c5698d5" [label="local://context" shape="ellipse"];
  "sha256:300d714dd16017f6df5d5b5d5a11ca6aa90c5b1f1bb128354e921b58fb3a6830" [label="docker-image://docker.io/library/node:9.9.0-alpine" shape="ellipse"];
  "sha256:a45ebed016cf507e26b2f7a267588d5bf0d5cb91e60173b1077387c1c720cff8" [label="/bin/sh -c apk upgrade --update     && apk add bash tzdata fontconfig freetype tar curl     && mkdir ${KIBANA_HOME}     && (cd ${KIBANA_HOME}     && curl -Ls ${KIBANA_DOWNLOAD_URL} | tar --strip-components=1 -zxf -     && ln -s ${KIBANA_HOME}/bin/* /usr/local/bin)     && sed -i 's@^NODE=.*@@gi' ${KIBANA_HOME}/bin/kibana-plugin     && sed -i 's@^test\\ -x.*@NODE=$(which node)@gi' ${KIBANA_HOME}/bin/kibana-plugin     && kibana-plugin install ${XPACK_DOWNLOAD_URL}     && ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime     && echo ${TZ} > /etc/timezone     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:ddbb285fe3c66f7b87c3bc286810c08bd1224509f3e56277a44a8a57c4f31dfa" [label="copy{src=/config/*, dest=/usr/local/kibana/config/}" shape="note"];
  "sha256:405cb3af594b4a6ed4f4519fd9084c1ecf732e3b247f7e7608a7ffc3ff987f5f" [label="copy{src=/kibana-docker, dest=/usr/local/bin/kibana-docker}" shape="note"];
  "sha256:2ebe176f07b9dc604f09634487b2836f8b4700a603a382ed277d9226011b718c" [label="sha256:2ebe176f07b9dc604f09634487b2836f8b4700a603a382ed277d9226011b718c" shape="plaintext"];
  "sha256:300d714dd16017f6df5d5b5d5a11ca6aa90c5b1f1bb128354e921b58fb3a6830" -> "sha256:a45ebed016cf507e26b2f7a267588d5bf0d5cb91e60173b1077387c1c720cff8" [label=""];
  "sha256:a45ebed016cf507e26b2f7a267588d5bf0d5cb91e60173b1077387c1c720cff8" -> "sha256:ddbb285fe3c66f7b87c3bc286810c08bd1224509f3e56277a44a8a57c4f31dfa" [label=""];
  "sha256:e4e83f9090e05bfe8b9d53ceef02e533c09f6d4d55bd80e208853f0d6c5698d5" -> "sha256:ddbb285fe3c66f7b87c3bc286810c08bd1224509f3e56277a44a8a57c4f31dfa" [label=""];
  "sha256:ddbb285fe3c66f7b87c3bc286810c08bd1224509f3e56277a44a8a57c4f31dfa" -> "sha256:405cb3af594b4a6ed4f4519fd9084c1ecf732e3b247f7e7608a7ffc3ff987f5f" [label=""];
  "sha256:e4e83f9090e05bfe8b9d53ceef02e533c09f6d4d55bd80e208853f0d6c5698d5" -> "sha256:405cb3af594b4a6ed4f4519fd9084c1ecf732e3b247f7e7608a7ffc3ff987f5f" [label=""];
  "sha256:405cb3af594b4a6ed4f4519fd9084c1ecf732e3b247f7e7608a7ffc3ff987f5f" -> "sha256:2ebe176f07b9dc604f09634487b2836f8b4700a603a382ed277d9226011b718c" [label=""];
}

