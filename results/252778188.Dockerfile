[app/sources/252778188.Dockerfile]
digraph {
  "sha256:812672c2191e0414bb495828a15760a83407bfa20327d0468709579de9d0f957" [label="local://context" shape="ellipse"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:cb09f6808220d31c748df3a24e9011ee5ee91efddcdca4a6133007f54ba30b5f" [label="/bin/sh -c apk add --update nginx" shape="box"];
  "sha256:21ec280ae671da48c0d5efdeedccdf8d72d265f732beb8075a8054465fcbdc39" [label="/bin/sh -c mkdir -p /run/nginx" shape="box"];
  "sha256:bd61105387639347112e2ebaa39756ff0562cbf7eb72e58fe00a5e21239ef409" [label="copy{src=/nginx.conf, dest=/etc/nginx/}" shape="note"];
  "sha256:bee725bb151dc76c303ebb8622e18f33a90931c583f40abb5fc5c54d77727ddd" [label="copy{src=/dist/*, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:1898c15fbf0d54fb389594364db9db41d07e49eaf26bccdfdd2a3b3e0532c31e" [label="copy{src=/docker-run.sh, dest=/usr/share/nginx/}" shape="note"];
  "sha256:72b25510edfc9a17dfbcc7fb0c9d5251fe2f8ddc722411a8e5151b0b9df79012" [label="sha256:72b25510edfc9a17dfbcc7fb0c9d5251fe2f8ddc722411a8e5151b0b9df79012" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:cb09f6808220d31c748df3a24e9011ee5ee91efddcdca4a6133007f54ba30b5f" [label=""];
  "sha256:cb09f6808220d31c748df3a24e9011ee5ee91efddcdca4a6133007f54ba30b5f" -> "sha256:21ec280ae671da48c0d5efdeedccdf8d72d265f732beb8075a8054465fcbdc39" [label=""];
  "sha256:21ec280ae671da48c0d5efdeedccdf8d72d265f732beb8075a8054465fcbdc39" -> "sha256:bd61105387639347112e2ebaa39756ff0562cbf7eb72e58fe00a5e21239ef409" [label=""];
  "sha256:812672c2191e0414bb495828a15760a83407bfa20327d0468709579de9d0f957" -> "sha256:bd61105387639347112e2ebaa39756ff0562cbf7eb72e58fe00a5e21239ef409" [label=""];
  "sha256:bd61105387639347112e2ebaa39756ff0562cbf7eb72e58fe00a5e21239ef409" -> "sha256:bee725bb151dc76c303ebb8622e18f33a90931c583f40abb5fc5c54d77727ddd" [label=""];
  "sha256:812672c2191e0414bb495828a15760a83407bfa20327d0468709579de9d0f957" -> "sha256:bee725bb151dc76c303ebb8622e18f33a90931c583f40abb5fc5c54d77727ddd" [label=""];
  "sha256:bee725bb151dc76c303ebb8622e18f33a90931c583f40abb5fc5c54d77727ddd" -> "sha256:1898c15fbf0d54fb389594364db9db41d07e49eaf26bccdfdd2a3b3e0532c31e" [label=""];
  "sha256:812672c2191e0414bb495828a15760a83407bfa20327d0468709579de9d0f957" -> "sha256:1898c15fbf0d54fb389594364db9db41d07e49eaf26bccdfdd2a3b3e0532c31e" [label=""];
  "sha256:1898c15fbf0d54fb389594364db9db41d07e49eaf26bccdfdd2a3b3e0532c31e" -> "sha256:72b25510edfc9a17dfbcc7fb0c9d5251fe2f8ddc722411a8e5151b0b9df79012" [label=""];
}

