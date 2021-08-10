[app/sources/252800833.Dockerfile]
digraph {
  "sha256:ce29b6e28d103cba6fa2e532c8eaa7f06e6d6373577f795ac4426a546ef41572" [label="docker-image://docker.io/library/ruby:2.3.3-alpine" shape="ellipse"];
  "sha256:47754b865ea814539a81cce158817507283e9636d802763331858ed020229030" [label="mkdir{path=/app}" shape="note"];
  "sha256:d67ad58c8f4f65e64440cc60b7f506d03897ef61e4f0fe396c6519265a66cf49" [label="local://context" shape="ellipse"];
  "sha256:543e7e9ef6e87915097e4537d806ba3f061613bcd83fdf2845c673cd6b308bef" [label="copy{src=/Gemfile, dest=/app/}" shape="note"];
  "sha256:de9bc6a078b9b44e2ae6d061b3292e62543b94e4762da08a61b5f490b47bdcb5" [label="copy{src=/Gemfile.lock, dest=/app/}" shape="note"];
  "sha256:b65fcb76f8b48110f77e25bbd13afcde9b9d3c2e13e4762a235e3a2593273761" [label="/bin/sh -c apk --update add --no-cache --update --virtual build-dependencies build-base ruby-dev postgresql-dev tzdata nodejs" shape="box"];
  "sha256:f6c69836a34749eedb64fec42ab46747ff4c8d8a6b7d219571d75308056009a0" [label="/bin/sh -c gem install bundler && bundle install --without development test" shape="box"];
  "sha256:4e3a2de004fa89b02c7c62611ec89ccbcd2ac3531590112b1b7a8ee1a6b78cea" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:817f121ec58824f09edd72cb05027cc6cf1f10f3d8733e36cbd74d107b393555" [label="/bin/sh -c chown -R nobody:nogroup /app/" shape="box"];
  "sha256:032e6f277a90db0e92a879ff196a95a0ca1469ba360938836b9e123ac82aa6d0" [label="sha256:032e6f277a90db0e92a879ff196a95a0ca1469ba360938836b9e123ac82aa6d0" shape="plaintext"];
  "sha256:ce29b6e28d103cba6fa2e532c8eaa7f06e6d6373577f795ac4426a546ef41572" -> "sha256:47754b865ea814539a81cce158817507283e9636d802763331858ed020229030" [label=""];
  "sha256:47754b865ea814539a81cce158817507283e9636d802763331858ed020229030" -> "sha256:543e7e9ef6e87915097e4537d806ba3f061613bcd83fdf2845c673cd6b308bef" [label=""];
  "sha256:d67ad58c8f4f65e64440cc60b7f506d03897ef61e4f0fe396c6519265a66cf49" -> "sha256:543e7e9ef6e87915097e4537d806ba3f061613bcd83fdf2845c673cd6b308bef" [label=""];
  "sha256:543e7e9ef6e87915097e4537d806ba3f061613bcd83fdf2845c673cd6b308bef" -> "sha256:de9bc6a078b9b44e2ae6d061b3292e62543b94e4762da08a61b5f490b47bdcb5" [label=""];
  "sha256:d67ad58c8f4f65e64440cc60b7f506d03897ef61e4f0fe396c6519265a66cf49" -> "sha256:de9bc6a078b9b44e2ae6d061b3292e62543b94e4762da08a61b5f490b47bdcb5" [label=""];
  "sha256:de9bc6a078b9b44e2ae6d061b3292e62543b94e4762da08a61b5f490b47bdcb5" -> "sha256:b65fcb76f8b48110f77e25bbd13afcde9b9d3c2e13e4762a235e3a2593273761" [label=""];
  "sha256:b65fcb76f8b48110f77e25bbd13afcde9b9d3c2e13e4762a235e3a2593273761" -> "sha256:f6c69836a34749eedb64fec42ab46747ff4c8d8a6b7d219571d75308056009a0" [label=""];
  "sha256:f6c69836a34749eedb64fec42ab46747ff4c8d8a6b7d219571d75308056009a0" -> "sha256:4e3a2de004fa89b02c7c62611ec89ccbcd2ac3531590112b1b7a8ee1a6b78cea" [label=""];
  "sha256:d67ad58c8f4f65e64440cc60b7f506d03897ef61e4f0fe396c6519265a66cf49" -> "sha256:4e3a2de004fa89b02c7c62611ec89ccbcd2ac3531590112b1b7a8ee1a6b78cea" [label=""];
  "sha256:4e3a2de004fa89b02c7c62611ec89ccbcd2ac3531590112b1b7a8ee1a6b78cea" -> "sha256:817f121ec58824f09edd72cb05027cc6cf1f10f3d8733e36cbd74d107b393555" [label=""];
  "sha256:817f121ec58824f09edd72cb05027cc6cf1f10f3d8733e36cbd74d107b393555" -> "sha256:032e6f277a90db0e92a879ff196a95a0ca1469ba360938836b9e123ac82aa6d0" [label=""];
}

