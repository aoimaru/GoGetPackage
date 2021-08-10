[app/sources/338146442.Dockerfile]
digraph {
  "sha256:fa830bb20e84a3bd110bf431e138457c4fd976ae4bf61a33b1d58ff2b8a91cb1" [label="docker-image://docker.io/bucharestgold/centos7-s2i-nodejs@sha256:929dad2c6003a01d7b27fb6eec5cf94a43ac6cda8664ff5918e8482b82d8daf0" shape="ellipse"];
  "sha256:208dcae9436b0093f7418023ad086680da287f5d83ca120f331fbb5dd118772a" [label="/bin/sh -c curl -L -o nodejs.tar.gz https://github.com/apache/incubator-openwhisk-runtime-nodejs/archive/$OPENWHISK_RUNTIME_NODEJS_VERSION.tar.gz   && mkdir nodejs   && tar --strip-components=1 -xf nodejs.tar.gz -C nodejs   && mv nodejs/core/nodejsActionBase/app.js nodejs/core/nodejsActionBase/runner.js nodejs/core/nodejsActionBase/src /opt/app-root/src/   && curl -L -O https://raw.githubusercontent.com/apache/incubator-openwhisk-runtime-nodejs/$OPENWHISK_RUNTIME_NODEJS_VERSION/core/nodejs8Action/package.json   && rm -rf /opt/app-root/src/nodejs/ /opt/app-root/src/nodejs.tar.gz   && npm install   && npm cache clean --force" shape="box"];
  "sha256:ffb151bc1b0839c9bdc315fa59d3e9e36674314214cfd5ebb89eb769d3b72f8c" [label="/bin/sh -c chown -R default:root /opt/app-root/src   && chmod -R g+rwX /opt/app-root/src" shape="box"];
  "sha256:6484d756881fc800ce719f7183663e8ac84160d098d758186945daaab7651620" [label="sha256:6484d756881fc800ce719f7183663e8ac84160d098d758186945daaab7651620" shape="plaintext"];
  "sha256:fa830bb20e84a3bd110bf431e138457c4fd976ae4bf61a33b1d58ff2b8a91cb1" -> "sha256:208dcae9436b0093f7418023ad086680da287f5d83ca120f331fbb5dd118772a" [label=""];
  "sha256:208dcae9436b0093f7418023ad086680da287f5d83ca120f331fbb5dd118772a" -> "sha256:ffb151bc1b0839c9bdc315fa59d3e9e36674314214cfd5ebb89eb769d3b72f8c" [label=""];
  "sha256:ffb151bc1b0839c9bdc315fa59d3e9e36674314214cfd5ebb89eb769d3b72f8c" -> "sha256:6484d756881fc800ce719f7183663e8ac84160d098d758186945daaab7651620" [label=""];
}

