[app/sources/319011173.Dockerfile]
digraph {
  "sha256:0f899a28a6a18097bf4c5dbea93ffbb3021fcfda8c8be6aff68e7140d8c50788" [label="local://context" shape="ellipse"];
  "sha256:908bec31b86333a70cc446936a30c7e188c7cc02d8830bc55ea83801b161c90d" [label="docker-image://docker.io/s1r1u5/php:5.6" shape="ellipse"];
  "sha256:1d45d5147b4e076b3f50bd75a5ce16e7948763b8f67c099df21a54a77f3cdc21" [label="copy{src=/src, dest=/app}" shape="note"];
  "sha256:be38dbdc0ab1cd141aa86c5bd4f87fb44e9fbbd1c797465ca8a0f45623e54e89" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:d6f0e710285e1b594c63f8e3811966aa25c36bb12e36fb06b7a4fd61de3466c0" [label="/bin/sh -c apk update && apk  add php5-json  php5-pdo_mysql php5-mysqli  php5-mcrypt php5-ctype php5-dom php5-xml && chmod -R 777 /app" shape="box"];
  "sha256:c90a7f4f69833a4718b0095fb5ff3e5219d6457514616bc42342d6aa837760a9" [label="sha256:c90a7f4f69833a4718b0095fb5ff3e5219d6457514616bc42342d6aa837760a9" shape="plaintext"];
  "sha256:908bec31b86333a70cc446936a30c7e188c7cc02d8830bc55ea83801b161c90d" -> "sha256:1d45d5147b4e076b3f50bd75a5ce16e7948763b8f67c099df21a54a77f3cdc21" [label=""];
  "sha256:0f899a28a6a18097bf4c5dbea93ffbb3021fcfda8c8be6aff68e7140d8c50788" -> "sha256:1d45d5147b4e076b3f50bd75a5ce16e7948763b8f67c099df21a54a77f3cdc21" [label=""];
  "sha256:1d45d5147b4e076b3f50bd75a5ce16e7948763b8f67c099df21a54a77f3cdc21" -> "sha256:be38dbdc0ab1cd141aa86c5bd4f87fb44e9fbbd1c797465ca8a0f45623e54e89" [label=""];
  "sha256:0f899a28a6a18097bf4c5dbea93ffbb3021fcfda8c8be6aff68e7140d8c50788" -> "sha256:be38dbdc0ab1cd141aa86c5bd4f87fb44e9fbbd1c797465ca8a0f45623e54e89" [label=""];
  "sha256:be38dbdc0ab1cd141aa86c5bd4f87fb44e9fbbd1c797465ca8a0f45623e54e89" -> "sha256:d6f0e710285e1b594c63f8e3811966aa25c36bb12e36fb06b7a4fd61de3466c0" [label=""];
  "sha256:d6f0e710285e1b594c63f8e3811966aa25c36bb12e36fb06b7a4fd61de3466c0" -> "sha256:c90a7f4f69833a4718b0095fb5ff3e5219d6457514616bc42342d6aa837760a9" [label=""];
}

