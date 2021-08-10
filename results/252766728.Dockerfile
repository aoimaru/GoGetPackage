[app/sources/252766728.Dockerfile]
digraph {
  "sha256:da19508e5edd8dd4a040c7de4eb4b5c68203f96926fb14d7ea92410e83f3ecbb" [label="local://context" shape="ellipse"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:9959e2c9ce75ccdaf7c8102708893a2a22cde6073688d907108dac0570454e96" [label="/bin/sh -c apk add --update nginx && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:25c2f098c4aacc6673d956044b9032d714e23038595a730b8324ab45c62bf7fe" [label="/bin/sh -c mkdir -p /tmp/nginx/client-body" shape="box"];
  "sha256:c943f2c95aea25c34d047b539b4a4001969a985bd935dac62297724a077dcef4" [label="copy{src=/nginx/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:36b918d00d6d7ba12042e07114ee15887323c3b97b5297cc9f08120e6052e0eb" [label="copy{src=/nginx/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:469a1fd0a65f6b9c5feeab96846b44c2d846bb6a8f0efd1dc452b35e2a35b185" [label="copy{src=/website, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:60c8596a00b957fef909398961264008ffc42ed0e1d2ac39b9992ec97ef1bb30" [label="sha256:60c8596a00b957fef909398961264008ffc42ed0e1d2ac39b9992ec97ef1bb30" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:9959e2c9ce75ccdaf7c8102708893a2a22cde6073688d907108dac0570454e96" [label=""];
  "sha256:9959e2c9ce75ccdaf7c8102708893a2a22cde6073688d907108dac0570454e96" -> "sha256:25c2f098c4aacc6673d956044b9032d714e23038595a730b8324ab45c62bf7fe" [label=""];
  "sha256:25c2f098c4aacc6673d956044b9032d714e23038595a730b8324ab45c62bf7fe" -> "sha256:c943f2c95aea25c34d047b539b4a4001969a985bd935dac62297724a077dcef4" [label=""];
  "sha256:da19508e5edd8dd4a040c7de4eb4b5c68203f96926fb14d7ea92410e83f3ecbb" -> "sha256:c943f2c95aea25c34d047b539b4a4001969a985bd935dac62297724a077dcef4" [label=""];
  "sha256:c943f2c95aea25c34d047b539b4a4001969a985bd935dac62297724a077dcef4" -> "sha256:36b918d00d6d7ba12042e07114ee15887323c3b97b5297cc9f08120e6052e0eb" [label=""];
  "sha256:da19508e5edd8dd4a040c7de4eb4b5c68203f96926fb14d7ea92410e83f3ecbb" -> "sha256:36b918d00d6d7ba12042e07114ee15887323c3b97b5297cc9f08120e6052e0eb" [label=""];
  "sha256:36b918d00d6d7ba12042e07114ee15887323c3b97b5297cc9f08120e6052e0eb" -> "sha256:469a1fd0a65f6b9c5feeab96846b44c2d846bb6a8f0efd1dc452b35e2a35b185" [label=""];
  "sha256:da19508e5edd8dd4a040c7de4eb4b5c68203f96926fb14d7ea92410e83f3ecbb" -> "sha256:469a1fd0a65f6b9c5feeab96846b44c2d846bb6a8f0efd1dc452b35e2a35b185" [label=""];
  "sha256:469a1fd0a65f6b9c5feeab96846b44c2d846bb6a8f0efd1dc452b35e2a35b185" -> "sha256:60c8596a00b957fef909398961264008ffc42ed0e1d2ac39b9992ec97ef1bb30" [label=""];
}

