[app/sources/238055243.Dockerfile]
digraph {
  "sha256:12f371d7338b0e1faf98f5c1290d2deead5043133d8dca525ed22586fea86da4" [label="docker-image://docker.io/library/node:7-alpine" shape="ellipse"];
  "sha256:9f63bdafa002096df1e3a194c87fda501fb7d22e242cbef43934c251b9eb9592" [label="/bin/sh -c apk --update --no-cache add bash curl jq git     && apk add --virtual .builddeps build-base python musl-dev     && cd /tmp && npm install keythereum     && apk del .builddeps" shape="box"];
  "sha256:75a9bc52b1bde0bd52ab7b489ecfa1be644e5f82fe7cb3f13b2964dc3b136d09" [label="local://context" shape="ellipse"];
  "sha256:f51d6af1564550a3689c1e91467c3a2c3e08c5b7fb64c226db597b0dd37fa051" [label="copy{src=/package.json, dest=/tmp/package.json}" shape="note"];
  "sha256:aad128dec320271bbbb24ace020f039eba00936beb935db43d4b8cb743e346ae" [label="/bin/sh -c cd /tmp && npm install" shape="box"];
  "sha256:02fd4841e61b5c25f55a1f50ba1f7a637f33bde7b43837d507a1a4a10c2dcf86" [label="/bin/sh -c mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/ && rm -rf /tmp/*" shape="box"];
  "sha256:f5185288044f303c70f1e2790f9694a1275970792b6b42e443bf8193d0d285a7" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:df4775696b638a8e8fe7c483660e0860210223b2417c4279f5793ee9267758f1" [label="copy{src=/lib, dest=/opt/app/lib}" shape="note"];
  "sha256:4569a960b5734bdee53822591a7f2efc63f029da61da2da0c4219697283929af" [label="copy{src=/index.js, dest=/opt/app/}" shape="note"];
  "sha256:602183360515c14db8460766f48a29b3b307a7462cbc2f0b983df6c15ede96ec" [label="copy{src=/scripts, dest=/opt/app/scripts}" shape="note"];
  "sha256:672e929653a6d9d6bfe98502314b7995192883ae9122bed02ed182782ab58f72" [label="copy{src=/docs, dest=/opt/app/docs}" shape="note"];
  "sha256:3a1c1632202b255c8cc36d4aca42b1ec8f2e7241d23c7dd436feaf8655875c89" [label="sha256:3a1c1632202b255c8cc36d4aca42b1ec8f2e7241d23c7dd436feaf8655875c89" shape="plaintext"];
  "sha256:12f371d7338b0e1faf98f5c1290d2deead5043133d8dca525ed22586fea86da4" -> "sha256:9f63bdafa002096df1e3a194c87fda501fb7d22e242cbef43934c251b9eb9592" [label=""];
  "sha256:9f63bdafa002096df1e3a194c87fda501fb7d22e242cbef43934c251b9eb9592" -> "sha256:f51d6af1564550a3689c1e91467c3a2c3e08c5b7fb64c226db597b0dd37fa051" [label=""];
  "sha256:75a9bc52b1bde0bd52ab7b489ecfa1be644e5f82fe7cb3f13b2964dc3b136d09" -> "sha256:f51d6af1564550a3689c1e91467c3a2c3e08c5b7fb64c226db597b0dd37fa051" [label=""];
  "sha256:f51d6af1564550a3689c1e91467c3a2c3e08c5b7fb64c226db597b0dd37fa051" -> "sha256:aad128dec320271bbbb24ace020f039eba00936beb935db43d4b8cb743e346ae" [label=""];
  "sha256:aad128dec320271bbbb24ace020f039eba00936beb935db43d4b8cb743e346ae" -> "sha256:02fd4841e61b5c25f55a1f50ba1f7a637f33bde7b43837d507a1a4a10c2dcf86" [label=""];
  "sha256:02fd4841e61b5c25f55a1f50ba1f7a637f33bde7b43837d507a1a4a10c2dcf86" -> "sha256:f5185288044f303c70f1e2790f9694a1275970792b6b42e443bf8193d0d285a7" [label=""];
  "sha256:f5185288044f303c70f1e2790f9694a1275970792b6b42e443bf8193d0d285a7" -> "sha256:df4775696b638a8e8fe7c483660e0860210223b2417c4279f5793ee9267758f1" [label=""];
  "sha256:75a9bc52b1bde0bd52ab7b489ecfa1be644e5f82fe7cb3f13b2964dc3b136d09" -> "sha256:df4775696b638a8e8fe7c483660e0860210223b2417c4279f5793ee9267758f1" [label=""];
  "sha256:df4775696b638a8e8fe7c483660e0860210223b2417c4279f5793ee9267758f1" -> "sha256:4569a960b5734bdee53822591a7f2efc63f029da61da2da0c4219697283929af" [label=""];
  "sha256:75a9bc52b1bde0bd52ab7b489ecfa1be644e5f82fe7cb3f13b2964dc3b136d09" -> "sha256:4569a960b5734bdee53822591a7f2efc63f029da61da2da0c4219697283929af" [label=""];
  "sha256:4569a960b5734bdee53822591a7f2efc63f029da61da2da0c4219697283929af" -> "sha256:602183360515c14db8460766f48a29b3b307a7462cbc2f0b983df6c15ede96ec" [label=""];
  "sha256:75a9bc52b1bde0bd52ab7b489ecfa1be644e5f82fe7cb3f13b2964dc3b136d09" -> "sha256:602183360515c14db8460766f48a29b3b307a7462cbc2f0b983df6c15ede96ec" [label=""];
  "sha256:602183360515c14db8460766f48a29b3b307a7462cbc2f0b983df6c15ede96ec" -> "sha256:672e929653a6d9d6bfe98502314b7995192883ae9122bed02ed182782ab58f72" [label=""];
  "sha256:75a9bc52b1bde0bd52ab7b489ecfa1be644e5f82fe7cb3f13b2964dc3b136d09" -> "sha256:672e929653a6d9d6bfe98502314b7995192883ae9122bed02ed182782ab58f72" [label=""];
  "sha256:672e929653a6d9d6bfe98502314b7995192883ae9122bed02ed182782ab58f72" -> "sha256:3a1c1632202b255c8cc36d4aca42b1ec8f2e7241d23c7dd436feaf8655875c89" [label=""];
}

