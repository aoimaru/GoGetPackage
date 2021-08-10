[app/sources/288573964.Dockerfile]
digraph {
  "sha256:f43cc9cb0445a0536bfa2fcecd136da5b816415490f961c0f7827882606df755" [label="docker-image://docker.io/library/node:8.9.4-alpine" shape="ellipse"];
  "sha256:0271208882f987f674797f6325de17275dca8483a94fcaaf5894e1b1319513b5" [label="/bin/sh -c apk update &&     apk upgrade &&     rm -rf /var/cache/apk/* &&     mkdir -p /usr/src/app" shape="box"];
  "sha256:9aa88ca7156a55a47032d2a318c9e591ceba6be75c10800b1e6a59e1bb71c77e" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:7c829769bee9ed2be1e41f6f326a071e0e85385ad3d741862d07020c87b2847f" [label="local://context" shape="ellipse"];
  "sha256:001bdee07fa4b7576551121b2d9acd2200038a95aa79b8eb82b0137d5ca153c1" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:2bbe7e6f9aa8a930cc7d869bfe9a2f9cfad7997dbee2366c9f0ff48cb51ccdb9" [label="/bin/sh -c npm install --silent && npm cache clean --force" shape="box"];
  "sha256:8822bc9d608358b6edff8d7d105d3be0c9734d05467d692e4da72ddfd0c1a1fe" [label="sha256:8822bc9d608358b6edff8d7d105d3be0c9734d05467d692e4da72ddfd0c1a1fe" shape="plaintext"];
  "sha256:f43cc9cb0445a0536bfa2fcecd136da5b816415490f961c0f7827882606df755" -> "sha256:0271208882f987f674797f6325de17275dca8483a94fcaaf5894e1b1319513b5" [label=""];
  "sha256:0271208882f987f674797f6325de17275dca8483a94fcaaf5894e1b1319513b5" -> "sha256:9aa88ca7156a55a47032d2a318c9e591ceba6be75c10800b1e6a59e1bb71c77e" [label=""];
  "sha256:9aa88ca7156a55a47032d2a318c9e591ceba6be75c10800b1e6a59e1bb71c77e" -> "sha256:001bdee07fa4b7576551121b2d9acd2200038a95aa79b8eb82b0137d5ca153c1" [label=""];
  "sha256:7c829769bee9ed2be1e41f6f326a071e0e85385ad3d741862d07020c87b2847f" -> "sha256:001bdee07fa4b7576551121b2d9acd2200038a95aa79b8eb82b0137d5ca153c1" [label=""];
  "sha256:001bdee07fa4b7576551121b2d9acd2200038a95aa79b8eb82b0137d5ca153c1" -> "sha256:2bbe7e6f9aa8a930cc7d869bfe9a2f9cfad7997dbee2366c9f0ff48cb51ccdb9" [label=""];
  "sha256:2bbe7e6f9aa8a930cc7d869bfe9a2f9cfad7997dbee2366c9f0ff48cb51ccdb9" -> "sha256:8822bc9d608358b6edff8d7d105d3be0c9734d05467d692e4da72ddfd0c1a1fe" [label=""];
}

