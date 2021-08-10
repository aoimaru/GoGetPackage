[app/sources/256275008.Dockerfile]
digraph {
  "sha256:8a240692f1f79b91464631a2fc6a7fcac2baf2e5152dd22448506bb05db80e1d" [label="docker-image://docker.io/stefanscherer/node-windows:4.6" shape="ellipse"];
  "sha256:5d5f4b8a844917184028bf576622a3362e063591deb43297c799c98f2cbe64c7" [label="mkdir{path=/app}" shape="note"];
  "sha256:688317ab93bbc50cc094aa3a95794d21735c5fcfd27d931e17d36475e495b634" [label="/bin/sh -c npm install -g nodemon" shape="box"];
  "sha256:9b5a85c22de955ebbdd951ec733c090d9cbe87fd84f3d23eb5e00516efafafb6" [label="local://context" shape="ellipse"];
  "sha256:bfacd67581ccebd6f7ab25bfd6e1f5a1088ee921b6376fce4fbb85bae3e1a68f" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:c57953e4a0db3085594714360a1d3dc3a702cde2db6483df0d2d27c9826baa1e" [label="/bin/sh -c npm config set registry http://registry.npmjs.org" shape="box"];
  "sha256:2abeddb4f1d68c924077cfe72dec0aa1c8bb3f0875c344e8498d5fd1b0cf8f68" [label="/bin/sh -c npm install" shape="box"];
  "sha256:631a778010618badc5ab734ffbf6ecf8e411542541d28816d12fc716c17a12dc" [label="/bin/sh -c mv /app/node_modules /node_modules" shape="box"];
  "sha256:d59383ce0723c8bf9a4f635bcf0b47eddf9c6708bcc81bb3a21e97a4ccdabde4" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:a0472ab43622290952eda713850fff0547022f129d03a95875696fa220491793" [label="sha256:a0472ab43622290952eda713850fff0547022f129d03a95875696fa220491793" shape="plaintext"];
  "sha256:8a240692f1f79b91464631a2fc6a7fcac2baf2e5152dd22448506bb05db80e1d" -> "sha256:5d5f4b8a844917184028bf576622a3362e063591deb43297c799c98f2cbe64c7" [label=""];
  "sha256:5d5f4b8a844917184028bf576622a3362e063591deb43297c799c98f2cbe64c7" -> "sha256:688317ab93bbc50cc094aa3a95794d21735c5fcfd27d931e17d36475e495b634" [label=""];
  "sha256:688317ab93bbc50cc094aa3a95794d21735c5fcfd27d931e17d36475e495b634" -> "sha256:bfacd67581ccebd6f7ab25bfd6e1f5a1088ee921b6376fce4fbb85bae3e1a68f" [label=""];
  "sha256:9b5a85c22de955ebbdd951ec733c090d9cbe87fd84f3d23eb5e00516efafafb6" -> "sha256:bfacd67581ccebd6f7ab25bfd6e1f5a1088ee921b6376fce4fbb85bae3e1a68f" [label=""];
  "sha256:bfacd67581ccebd6f7ab25bfd6e1f5a1088ee921b6376fce4fbb85bae3e1a68f" -> "sha256:c57953e4a0db3085594714360a1d3dc3a702cde2db6483df0d2d27c9826baa1e" [label=""];
  "sha256:c57953e4a0db3085594714360a1d3dc3a702cde2db6483df0d2d27c9826baa1e" -> "sha256:2abeddb4f1d68c924077cfe72dec0aa1c8bb3f0875c344e8498d5fd1b0cf8f68" [label=""];
  "sha256:2abeddb4f1d68c924077cfe72dec0aa1c8bb3f0875c344e8498d5fd1b0cf8f68" -> "sha256:631a778010618badc5ab734ffbf6ecf8e411542541d28816d12fc716c17a12dc" [label=""];
  "sha256:631a778010618badc5ab734ffbf6ecf8e411542541d28816d12fc716c17a12dc" -> "sha256:d59383ce0723c8bf9a4f635bcf0b47eddf9c6708bcc81bb3a21e97a4ccdabde4" [label=""];
  "sha256:9b5a85c22de955ebbdd951ec733c090d9cbe87fd84f3d23eb5e00516efafafb6" -> "sha256:d59383ce0723c8bf9a4f635bcf0b47eddf9c6708bcc81bb3a21e97a4ccdabde4" [label=""];
  "sha256:d59383ce0723c8bf9a4f635bcf0b47eddf9c6708bcc81bb3a21e97a4ccdabde4" -> "sha256:a0472ab43622290952eda713850fff0547022f129d03a95875696fa220491793" [label=""];
}

