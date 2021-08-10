[app/sources/357814316.Dockerfile]
digraph {
  "sha256:00c23553292c635579f813e5fcbd7b1bbfd7c90eb2948da3fa62dfc5847433bc" [label="local://context" shape="ellipse"];
  "sha256:abcab5f531da58b7f8d0805f27357168d7598e41aa2fa6232a3ea8ce2317f31b" [label="docker-image://docker.io/library/ruby:2.5.0" shape="ellipse"];
  "sha256:dcce1c21c3abc0f841002e579ab8a8938098cdff7a7cfacd2c7380e167286018" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash -" shape="box"];
  "sha256:bdbec6357d84c55b4f13697b5cdd4a7a26e860640b23c98d4de14f632d6dcb6b" [label="/bin/sh -c apt-get update && apt-get install -y build-essential libpq-dev nodejs npm" shape="box"];
  "sha256:8c9cf09de3922c5e920178a9d0dde7622b9eec95a0bfb88ca35c1fe15f1802f6" [label="/bin/sh -c apt-get install -y libpangocairo-1.0-0 libx11-xcb1 libxcomposite1 libxcursor1 libxdamage1 libxi6 libxtst6 libnss3 libcups2 libxss1 libxrandr2 libgconf2-4 libasound2 libatk1.0-0 libgtk-3-0" shape="box"];
  "sha256:52c17a7c73c26c496f901f9811611ef1e8e2ea0d8ce6cdfc895fcea24f70b1e2" [label="/bin/sh -c npm cache clean -f" shape="box"];
  "sha256:56eb8e47500cfca9793ec24318411c98ca78090429d9c08156ba22140c047045" [label="/bin/sh -c npm install -g n" shape="box"];
  "sha256:f622ff8209784872b89dd8217535c5871092e8eaf79fc62dd71e547f2b10a92d" [label="/bin/sh -c n 10.15.1" shape="box"];
  "sha256:0b074392cbb112a16f15d25b7be1402411f5c34adbce2ed0dae9109a9724b061" [label="/bin/sh -c ln -sf /usr/local/n/versions/node/10.15.1/bin/node /usr/bin/nodejs" shape="box"];
  "sha256:86818207e4f308fd79b60adaf46a175fbe01e2079152dc5207be9bfeb2ca309c" [label="mkdir{path=/app}" shape="note"];
  "sha256:90665e1f620f42ec0493060891a71b3399ed0c543378a4786c2200727ec4ac19" [label="copy{src=/docker/ruby/startup.dev, dest=/usr/local/bin/startup}" shape="note"];
  "sha256:0fb85bf72ad098b0801d1d9744afa9538d2862ceb605905d6ff3976defe15a4e" [label="/bin/sh -c chmod 755 /usr/local/bin/startup" shape="box"];
  "sha256:9411a4a44e722efa913371276c4b83f0367f335a97e441306a01bcf94c5ad15a" [label="sha256:9411a4a44e722efa913371276c4b83f0367f335a97e441306a01bcf94c5ad15a" shape="plaintext"];
  "sha256:abcab5f531da58b7f8d0805f27357168d7598e41aa2fa6232a3ea8ce2317f31b" -> "sha256:dcce1c21c3abc0f841002e579ab8a8938098cdff7a7cfacd2c7380e167286018" [label=""];
  "sha256:dcce1c21c3abc0f841002e579ab8a8938098cdff7a7cfacd2c7380e167286018" -> "sha256:bdbec6357d84c55b4f13697b5cdd4a7a26e860640b23c98d4de14f632d6dcb6b" [label=""];
  "sha256:bdbec6357d84c55b4f13697b5cdd4a7a26e860640b23c98d4de14f632d6dcb6b" -> "sha256:8c9cf09de3922c5e920178a9d0dde7622b9eec95a0bfb88ca35c1fe15f1802f6" [label=""];
  "sha256:8c9cf09de3922c5e920178a9d0dde7622b9eec95a0bfb88ca35c1fe15f1802f6" -> "sha256:52c17a7c73c26c496f901f9811611ef1e8e2ea0d8ce6cdfc895fcea24f70b1e2" [label=""];
  "sha256:52c17a7c73c26c496f901f9811611ef1e8e2ea0d8ce6cdfc895fcea24f70b1e2" -> "sha256:56eb8e47500cfca9793ec24318411c98ca78090429d9c08156ba22140c047045" [label=""];
  "sha256:56eb8e47500cfca9793ec24318411c98ca78090429d9c08156ba22140c047045" -> "sha256:f622ff8209784872b89dd8217535c5871092e8eaf79fc62dd71e547f2b10a92d" [label=""];
  "sha256:f622ff8209784872b89dd8217535c5871092e8eaf79fc62dd71e547f2b10a92d" -> "sha256:0b074392cbb112a16f15d25b7be1402411f5c34adbce2ed0dae9109a9724b061" [label=""];
  "sha256:0b074392cbb112a16f15d25b7be1402411f5c34adbce2ed0dae9109a9724b061" -> "sha256:86818207e4f308fd79b60adaf46a175fbe01e2079152dc5207be9bfeb2ca309c" [label=""];
  "sha256:86818207e4f308fd79b60adaf46a175fbe01e2079152dc5207be9bfeb2ca309c" -> "sha256:90665e1f620f42ec0493060891a71b3399ed0c543378a4786c2200727ec4ac19" [label=""];
  "sha256:00c23553292c635579f813e5fcbd7b1bbfd7c90eb2948da3fa62dfc5847433bc" -> "sha256:90665e1f620f42ec0493060891a71b3399ed0c543378a4786c2200727ec4ac19" [label=""];
  "sha256:90665e1f620f42ec0493060891a71b3399ed0c543378a4786c2200727ec4ac19" -> "sha256:0fb85bf72ad098b0801d1d9744afa9538d2862ceb605905d6ff3976defe15a4e" [label=""];
  "sha256:0fb85bf72ad098b0801d1d9744afa9538d2862ceb605905d6ff3976defe15a4e" -> "sha256:9411a4a44e722efa913371276c4b83f0367f335a97e441306a01bcf94c5ad15a" [label=""];
}

