[app/sources/219322991.Dockerfile]
digraph {
  "sha256:5656e05c76af9e2c17517b51a275ac470285a6852d2ae75561581da4982b788a" [label="docker-image://docker.io/openshift/origin-haproxy-router-base:latest" shape="ellipse"];
  "sha256:bcdd280e06216cd7404fea3d65ce489c1c6dde5a685e6b831a488850c96fe43c" [label="local://context" shape="ellipse"];
  "sha256:ddd9287537c70adac787a51cb6d12742ff05b28e2db823f3f885ef13b11528b2" [label="copy{src=/conf, dest=/var/lib/haproxy/conf/}" shape="note"];
  "sha256:b242da79660082db168bf9a4dfcd59fff7e5f3dce4970b1296be2372856afebd" [label="copy{src=/reload-haproxy, dest=/var/lib/haproxy/reload-haproxy}" shape="note"];
  "sha256:2908314a224066f5c0b37c53ba22dbad460da9755becc4e1a9f4d0894504290c" [label="copy{src=/bin/openshift, dest=/usr/bin/openshift}" shape="note"];
  "sha256:290a307cac86deeec1d6df053e1304d1c4fce8c338b937d3bc6841b92f31f119" [label="/bin/sh -c ln -s /usr/bin/openshift /usr/bin/openshift-router &&     chmod -R 777 /var &&     setcap 'cap_net_bind_service=ep' /usr/sbin/haproxy" shape="box"];
  "sha256:da106db3b07d93e2e1efa7b01147e57d5dd3d41d42936d2be018c753fcbb7ec3" [label="mkdir{path=/var/lib/haproxy/conf}" shape="note"];
  "sha256:9fb1d66db58112033a094e986bb07513ca05950f743d3b09d5b1bd902c2721b1" [label="sha256:9fb1d66db58112033a094e986bb07513ca05950f743d3b09d5b1bd902c2721b1" shape="plaintext"];
  "sha256:5656e05c76af9e2c17517b51a275ac470285a6852d2ae75561581da4982b788a" -> "sha256:ddd9287537c70adac787a51cb6d12742ff05b28e2db823f3f885ef13b11528b2" [label=""];
  "sha256:bcdd280e06216cd7404fea3d65ce489c1c6dde5a685e6b831a488850c96fe43c" -> "sha256:ddd9287537c70adac787a51cb6d12742ff05b28e2db823f3f885ef13b11528b2" [label=""];
  "sha256:ddd9287537c70adac787a51cb6d12742ff05b28e2db823f3f885ef13b11528b2" -> "sha256:b242da79660082db168bf9a4dfcd59fff7e5f3dce4970b1296be2372856afebd" [label=""];
  "sha256:bcdd280e06216cd7404fea3d65ce489c1c6dde5a685e6b831a488850c96fe43c" -> "sha256:b242da79660082db168bf9a4dfcd59fff7e5f3dce4970b1296be2372856afebd" [label=""];
  "sha256:b242da79660082db168bf9a4dfcd59fff7e5f3dce4970b1296be2372856afebd" -> "sha256:2908314a224066f5c0b37c53ba22dbad460da9755becc4e1a9f4d0894504290c" [label=""];
  "sha256:bcdd280e06216cd7404fea3d65ce489c1c6dde5a685e6b831a488850c96fe43c" -> "sha256:2908314a224066f5c0b37c53ba22dbad460da9755becc4e1a9f4d0894504290c" [label=""];
  "sha256:2908314a224066f5c0b37c53ba22dbad460da9755becc4e1a9f4d0894504290c" -> "sha256:290a307cac86deeec1d6df053e1304d1c4fce8c338b937d3bc6841b92f31f119" [label=""];
  "sha256:290a307cac86deeec1d6df053e1304d1c4fce8c338b937d3bc6841b92f31f119" -> "sha256:da106db3b07d93e2e1efa7b01147e57d5dd3d41d42936d2be018c753fcbb7ec3" [label=""];
  "sha256:da106db3b07d93e2e1efa7b01147e57d5dd3d41d42936d2be018c753fcbb7ec3" -> "sha256:9fb1d66db58112033a094e986bb07513ca05950f743d3b09d5b1bd902c2721b1" [label=""];
}

