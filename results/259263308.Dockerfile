[app/sources/259263308.Dockerfile]
digraph {
  "sha256:12ef1d2cce137b64450b7fdcc8c5f5c04185001202d776b53124d1fa57a3b91a" [label="local://context" shape="ellipse"];
  "sha256:3e109e0dee410f2a491db395433bc9711b070eb2d344fd0842aec691033f6583" [label="docker-image://docker.io/mhart/alpine-node:6.10.3" shape="ellipse"];
  "sha256:1d18abbc6df9c4d16fd0c731a4ab1c1ef447a1789c629f9b1c4af4324aefb150" [label="/bin/sh -c npm install -g gulp-cli" shape="box"];
  "sha256:782ed57494f9753253de372e69dc6335e0702782c0da57fa15cbe527657ff112" [label="/bin/sh -c apk add --update php5-cli php5-json" shape="box"];
  "sha256:90619ccddb5769acde7775aca9efd07df785932e6c1c609e69f6c115b12e6f3d" [label="mkdir{path=/src}" shape="note"];
  "sha256:724f0b66e6df63ce6652a9f3c6c0e490c6b4956c4222cc3b7ef1f384f8f92ba6" [label="copy{src=/web/package.json, dest=/tmp/}" shape="note"];
  "sha256:5c351dd32727ae074dfa21bc4cb9919135a36ea96022033a310120552b624d48" [label="/bin/sh -c cd /tmp && npm install" shape="box"];
  "sha256:c5b457eed9cfac05566e98cb4b6082da5bfbb927e3363a780dc434c1774494e5" [label="/bin/sh -c mkdir -p /src && cp -a /tmp/node_modules /src" shape="box"];
  "sha256:f60e678ef0be23a1eaa7c134c21733567323deb42b8b3179977cdb1e766feb21" [label="sha256:f60e678ef0be23a1eaa7c134c21733567323deb42b8b3179977cdb1e766feb21" shape="plaintext"];
  "sha256:3e109e0dee410f2a491db395433bc9711b070eb2d344fd0842aec691033f6583" -> "sha256:1d18abbc6df9c4d16fd0c731a4ab1c1ef447a1789c629f9b1c4af4324aefb150" [label=""];
  "sha256:1d18abbc6df9c4d16fd0c731a4ab1c1ef447a1789c629f9b1c4af4324aefb150" -> "sha256:782ed57494f9753253de372e69dc6335e0702782c0da57fa15cbe527657ff112" [label=""];
  "sha256:782ed57494f9753253de372e69dc6335e0702782c0da57fa15cbe527657ff112" -> "sha256:90619ccddb5769acde7775aca9efd07df785932e6c1c609e69f6c115b12e6f3d" [label=""];
  "sha256:90619ccddb5769acde7775aca9efd07df785932e6c1c609e69f6c115b12e6f3d" -> "sha256:724f0b66e6df63ce6652a9f3c6c0e490c6b4956c4222cc3b7ef1f384f8f92ba6" [label=""];
  "sha256:12ef1d2cce137b64450b7fdcc8c5f5c04185001202d776b53124d1fa57a3b91a" -> "sha256:724f0b66e6df63ce6652a9f3c6c0e490c6b4956c4222cc3b7ef1f384f8f92ba6" [label=""];
  "sha256:724f0b66e6df63ce6652a9f3c6c0e490c6b4956c4222cc3b7ef1f384f8f92ba6" -> "sha256:5c351dd32727ae074dfa21bc4cb9919135a36ea96022033a310120552b624d48" [label=""];
  "sha256:5c351dd32727ae074dfa21bc4cb9919135a36ea96022033a310120552b624d48" -> "sha256:c5b457eed9cfac05566e98cb4b6082da5bfbb927e3363a780dc434c1774494e5" [label=""];
  "sha256:c5b457eed9cfac05566e98cb4b6082da5bfbb927e3363a780dc434c1774494e5" -> "sha256:f60e678ef0be23a1eaa7c134c21733567323deb42b8b3179977cdb1e766feb21" [label=""];
}

