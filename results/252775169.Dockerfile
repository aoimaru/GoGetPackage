[app/sources/252775169.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:d68f99f091ccf82472ff60bbf1fc10df2395d61d29b7a2ea87ad077142dee231" [label="/bin/sh -c mkdir -p ${APP_DIR} && npm config set spin=false" shape="box"];
  "sha256:e53e41c77873fd1596febe4cc38745bbf00c61b2e8e02bb902b40c2a084defad" [label="mkdir{path=/app/bkmrkd}" shape="note"];
  "sha256:b25ee58f76141263d475f4a4135b8e534ffaee691404b3aa9a6309ac88eb1840" [label="local://context" shape="ellipse"];
  "sha256:5c7b3bab2146c72c0cbf42e4830c621b70f0dd68e326a2ea2381c6861ca7b597" [label="copy{src=/package.json, dest=/app/bkmrkd/},copy{src=/package-lock.json, dest=/app/bkmrkd/},copy{src=/elm-package.json, dest=/app/bkmrkd/}" shape="note"];
  "sha256:ad81456c2c923661a4146c338591e60279e5cc7b4ef43c8f73f09fbc87b9da36" [label="/bin/sh -c npm install --production --no-progress" shape="box"];
  "sha256:38e899c245cc062158d755f4763adeec2964d0309e94b61d796f90199209754a" [label="copy{src=/, dest=/app/bkmrkd/}" shape="note"];
  "sha256:470741ab812ec721d53a3b99d0c257234e263a8de89dbf06a9de991772c45352" [label="sha256:470741ab812ec721d53a3b99d0c257234e263a8de89dbf06a9de991772c45352" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:d68f99f091ccf82472ff60bbf1fc10df2395d61d29b7a2ea87ad077142dee231" [label=""];
  "sha256:d68f99f091ccf82472ff60bbf1fc10df2395d61d29b7a2ea87ad077142dee231" -> "sha256:e53e41c77873fd1596febe4cc38745bbf00c61b2e8e02bb902b40c2a084defad" [label=""];
  "sha256:e53e41c77873fd1596febe4cc38745bbf00c61b2e8e02bb902b40c2a084defad" -> "sha256:5c7b3bab2146c72c0cbf42e4830c621b70f0dd68e326a2ea2381c6861ca7b597" [label=""];
  "sha256:b25ee58f76141263d475f4a4135b8e534ffaee691404b3aa9a6309ac88eb1840" -> "sha256:5c7b3bab2146c72c0cbf42e4830c621b70f0dd68e326a2ea2381c6861ca7b597" [label=""];
  "sha256:5c7b3bab2146c72c0cbf42e4830c621b70f0dd68e326a2ea2381c6861ca7b597" -> "sha256:ad81456c2c923661a4146c338591e60279e5cc7b4ef43c8f73f09fbc87b9da36" [label=""];
  "sha256:ad81456c2c923661a4146c338591e60279e5cc7b4ef43c8f73f09fbc87b9da36" -> "sha256:38e899c245cc062158d755f4763adeec2964d0309e94b61d796f90199209754a" [label=""];
  "sha256:b25ee58f76141263d475f4a4135b8e534ffaee691404b3aa9a6309ac88eb1840" -> "sha256:38e899c245cc062158d755f4763adeec2964d0309e94b61d796f90199209754a" [label=""];
  "sha256:38e899c245cc062158d755f4763adeec2964d0309e94b61d796f90199209754a" -> "sha256:470741ab812ec721d53a3b99d0c257234e263a8de89dbf06a9de991772c45352" [label=""];
}

