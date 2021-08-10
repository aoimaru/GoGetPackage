[app/sources/260174898.Dockerfile]
digraph {
  "sha256:98cb78e8f4847b09e35224b376e0c289d5a2c497ec04f30b672b9925e67b2a22" [label="local://context" shape="ellipse"];
  "sha256:68dbc07004babca59bc8463f9160df566243bc2e5557a449cd26829b71a12d51" [label="docker-image://docker.io/firesh/nginx-lua:latest" shape="ellipse"];
  "sha256:1447a12f6d4d85ba3fea938215eaf11cb1ed3d7182d33dffcc715b1cf1f0e577" [label="copy{src=/.build/nginx.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:a127454722f5418dcfe1f49300fe4e6aa66f4d52559d12252e6281be0787ed08" [label="copy{src=/.build/startup.sh, dest=/etc/nginx/startup.sh}" shape="note"];
  "sha256:21b24477e40d0d89b923c5187639db81183ee9e93b260f51170aa7653ff41cec" [label="copy{src=/dist/cloudstack-ui, dest=/static/}" shape="note"];
  "sha256:6c6ee776b617ac9d3dae8519dda2c591e16d3108b3af235a9e3273063612a885" [label="/bin/sh -c chmod 777 /etc/nginx/startup.sh" shape="box"];
  "sha256:82cd8512a7e09bba2aefc11dcc01e6738c8d0607fca1ba5498a04bef8bd2c5dd" [label="/bin/sh -c apk update     && apk add --update curl     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:f8e865e268e2590fa65aee6b2b89b1b99412d5365d35faafce090dd521d34e7d" [label="sha256:f8e865e268e2590fa65aee6b2b89b1b99412d5365d35faafce090dd521d34e7d" shape="plaintext"];
  "sha256:68dbc07004babca59bc8463f9160df566243bc2e5557a449cd26829b71a12d51" -> "sha256:1447a12f6d4d85ba3fea938215eaf11cb1ed3d7182d33dffcc715b1cf1f0e577" [label=""];
  "sha256:98cb78e8f4847b09e35224b376e0c289d5a2c497ec04f30b672b9925e67b2a22" -> "sha256:1447a12f6d4d85ba3fea938215eaf11cb1ed3d7182d33dffcc715b1cf1f0e577" [label=""];
  "sha256:1447a12f6d4d85ba3fea938215eaf11cb1ed3d7182d33dffcc715b1cf1f0e577" -> "sha256:a127454722f5418dcfe1f49300fe4e6aa66f4d52559d12252e6281be0787ed08" [label=""];
  "sha256:98cb78e8f4847b09e35224b376e0c289d5a2c497ec04f30b672b9925e67b2a22" -> "sha256:a127454722f5418dcfe1f49300fe4e6aa66f4d52559d12252e6281be0787ed08" [label=""];
  "sha256:a127454722f5418dcfe1f49300fe4e6aa66f4d52559d12252e6281be0787ed08" -> "sha256:21b24477e40d0d89b923c5187639db81183ee9e93b260f51170aa7653ff41cec" [label=""];
  "sha256:98cb78e8f4847b09e35224b376e0c289d5a2c497ec04f30b672b9925e67b2a22" -> "sha256:21b24477e40d0d89b923c5187639db81183ee9e93b260f51170aa7653ff41cec" [label=""];
  "sha256:21b24477e40d0d89b923c5187639db81183ee9e93b260f51170aa7653ff41cec" -> "sha256:6c6ee776b617ac9d3dae8519dda2c591e16d3108b3af235a9e3273063612a885" [label=""];
  "sha256:6c6ee776b617ac9d3dae8519dda2c591e16d3108b3af235a9e3273063612a885" -> "sha256:82cd8512a7e09bba2aefc11dcc01e6738c8d0607fca1ba5498a04bef8bd2c5dd" [label=""];
  "sha256:82cd8512a7e09bba2aefc11dcc01e6738c8d0607fca1ba5498a04bef8bd2c5dd" -> "sha256:f8e865e268e2590fa65aee6b2b89b1b99412d5365d35faafce090dd521d34e7d" [label=""];
}

