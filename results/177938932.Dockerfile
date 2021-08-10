[app/sources/177938932.Dockerfile]
digraph {
  "sha256:5fa4f18122716e9492ac92e1f77eaccb1246ac10ee2377feedbff6a70460f17a" [label="docker-image://docker.io/google/appengine-go:latest" shape="ellipse"];
  "sha256:ceb0c9282e8efdbffb9f79cdab7cbdab3f68d47f9ae4dc154398a63d0c6ef591" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:808a7af13d07f55236e8cbbee1fdf3ab3cc54d7557f3dc9e52a29b5b13217d37" [label="/bin/sh -c apt-get install --fix-missing --no-install-recommends -y -q     curl build-essential git mercurial bzr" shape="box"];
  "sha256:710b815e4c4bfb7d504ee46b243a0aa2b993c97e490015bad819a6bf9a4c112b" [label="/bin/sh -c mkdir /goroot && curl https://storage.googleapis.com/golang/go1.2.2.linux-amd64.tar.gz | tar xvzf - -C /goroot --strip-components=1" shape="box"];
  "sha256:c8d191c6fc7e7ab7960b9a33b732560b1960ea979615532b2c2ce70b22fdc6bf" [label="/bin/sh -c mkdir /gopath" shape="box"];
  "sha256:60ab3adc272ccb710cf50670fc50f342da42d2a5ff022ad808fb220441d1584a" [label="mkdir{path=/app}" shape="note"];
  "sha256:04ae6ce8e08d8f82b074196a288ee0a5c51a424af2cfceec1fb9e962ac0f5d3f" [label="local://context" shape="ellipse"];
  "sha256:ac9162002221d8be10b08c76c6f5bd6ca912aefc1939938962a1cda66fcd5816" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:d04242f53132a962ad38e62761b813ad9735d1613582381996eabe313d993b3a" [label="/bin/sh -c /bin/bash /app/_ah/build.sh" shape="box"];
  "sha256:093b6e68e2fbf419483990e33d19c34d8325ddf1b8be41981496e266844a50e3" [label="sha256:093b6e68e2fbf419483990e33d19c34d8325ddf1b8be41981496e266844a50e3" shape="plaintext"];
  "sha256:5fa4f18122716e9492ac92e1f77eaccb1246ac10ee2377feedbff6a70460f17a" -> "sha256:ceb0c9282e8efdbffb9f79cdab7cbdab3f68d47f9ae4dc154398a63d0c6ef591" [label=""];
  "sha256:ceb0c9282e8efdbffb9f79cdab7cbdab3f68d47f9ae4dc154398a63d0c6ef591" -> "sha256:808a7af13d07f55236e8cbbee1fdf3ab3cc54d7557f3dc9e52a29b5b13217d37" [label=""];
  "sha256:808a7af13d07f55236e8cbbee1fdf3ab3cc54d7557f3dc9e52a29b5b13217d37" -> "sha256:710b815e4c4bfb7d504ee46b243a0aa2b993c97e490015bad819a6bf9a4c112b" [label=""];
  "sha256:710b815e4c4bfb7d504ee46b243a0aa2b993c97e490015bad819a6bf9a4c112b" -> "sha256:c8d191c6fc7e7ab7960b9a33b732560b1960ea979615532b2c2ce70b22fdc6bf" [label=""];
  "sha256:c8d191c6fc7e7ab7960b9a33b732560b1960ea979615532b2c2ce70b22fdc6bf" -> "sha256:60ab3adc272ccb710cf50670fc50f342da42d2a5ff022ad808fb220441d1584a" [label=""];
  "sha256:60ab3adc272ccb710cf50670fc50f342da42d2a5ff022ad808fb220441d1584a" -> "sha256:ac9162002221d8be10b08c76c6f5bd6ca912aefc1939938962a1cda66fcd5816" [label=""];
  "sha256:04ae6ce8e08d8f82b074196a288ee0a5c51a424af2cfceec1fb9e962ac0f5d3f" -> "sha256:ac9162002221d8be10b08c76c6f5bd6ca912aefc1939938962a1cda66fcd5816" [label=""];
  "sha256:ac9162002221d8be10b08c76c6f5bd6ca912aefc1939938962a1cda66fcd5816" -> "sha256:d04242f53132a962ad38e62761b813ad9735d1613582381996eabe313d993b3a" [label=""];
  "sha256:d04242f53132a962ad38e62761b813ad9735d1613582381996eabe313d993b3a" -> "sha256:093b6e68e2fbf419483990e33d19c34d8325ddf1b8be41981496e266844a50e3" [label=""];
}

