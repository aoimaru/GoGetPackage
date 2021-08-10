[app/sources/360359814.Dockerfile]
digraph {
  "sha256:22f0684e6bc7de9cf0999d0a4e7f218ee93f3646e81480085b53d19f028ef8f5" [label="docker-image://docker.io/instructure/node:8-xenial" shape="ellipse"];
  "sha256:0b008e3de3203b5cd0e2bf923f47ed73a7475eb5c5ff53442ba51e128fbde617" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7   && apt-get install -y apt-transport-https ca-certificates   && sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger xenial main > /etc/apt/sources.list.d/passenger.list'   && apt-get update   && apt-get install -y --no-install-recommends     nginx-extras     ruby     sudo     supervisor   && apt-get clean   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:531d7e29d0fa817ae9cc61dc4ced5c01eaffa9fa11ace03a00922eca86b583aa" [label="/bin/sh -c yarn global add pm2@3.1.2" shape="box"];
  "sha256:8208f8aa166d55d99c8b570a13f1bc4d74e747c8c82d22f83b27ffffa36ddc08" [label="/bin/sh -c mkdir -p /usr/src/supervisord/  && mkdir -p /usr/src/nginx/conf.d  && mkdir -p /usr/src/nginx/location.d  && mkdir -p /usr/src/app  && mkdir -p /var/log/app  && ln -sf /dev/stdout /var/log/nginx/access.log  && ln -sf /dev/stderr /var/log/nginx/error.log  && ln -sf /dev/stdout /var/log/app/output.log  && ln -sf /dev/stderr /var/log/app/error.log" shape="box"];
  "sha256:eaecde68623990a9a8fa46d1f1917a9b15d58579372eac3897ebdb949a67d94d" [label="local://context" shape="ellipse"];
  "sha256:8162d0e63eec6502f1dfc8cfeb8afa021ac4e71216a5d376a5f92a3d3edeb32b" [label="copy{src=/entrypoint, dest=/usr/src/entrypoint}" shape="note"];
  "sha256:c251dae8133aa152dfb1978a39fca442867838dfbbcd4baec6e984e985e3fff3" [label="copy{src=/supervisord/*, dest=/usr/src/supervisord/}" shape="note"];
  "sha256:dfd59a1d7e96e690985cb81519c00fe4beeed7008f717958a50dac3f6ab80ba6" [label="copy{src=/nginx.conf.erb, dest=/usr/src/nginx/nginx.conf.erb}" shape="note"];
  "sha256:42e15f9f1420e41f444f391088fcd491ac3c05d86a8dd479a3eddd98c654ce08" [label="copy{src=/conf.d/*, dest=/usr/src/nginx/conf.d/}" shape="note"];
  "sha256:f14b0ee2ac6221e1d43c51b39978c74db10bfe7d55f35aebe30346c6daa4983b" [label="copy{src=/default.config.json, dest=/usr/src/app/.pm2.config.default.json}" shape="note"];
  "sha256:192911ad280d1471d320a8ed999ca45f5321882b007efbfac7ee50273c4ff709" [label="/bin/sh -c chown docker:docker -R /usr/src/supervisord  && chown docker:docker -R /usr/src/nginx  && chown docker:docker -R /var/lib/nginx  && chown docker:docker -R /var/log/app  && chgrp docker /var/run  && chmod g+w /var/run" shape="box"];
  "sha256:e46e19a19531e1b3d5ba07884c971f85b626577bdd868e4e0d985ae180562a04" [label="sha256:e46e19a19531e1b3d5ba07884c971f85b626577bdd868e4e0d985ae180562a04" shape="plaintext"];
  "sha256:22f0684e6bc7de9cf0999d0a4e7f218ee93f3646e81480085b53d19f028ef8f5" -> "sha256:0b008e3de3203b5cd0e2bf923f47ed73a7475eb5c5ff53442ba51e128fbde617" [label=""];
  "sha256:0b008e3de3203b5cd0e2bf923f47ed73a7475eb5c5ff53442ba51e128fbde617" -> "sha256:531d7e29d0fa817ae9cc61dc4ced5c01eaffa9fa11ace03a00922eca86b583aa" [label=""];
  "sha256:531d7e29d0fa817ae9cc61dc4ced5c01eaffa9fa11ace03a00922eca86b583aa" -> "sha256:8208f8aa166d55d99c8b570a13f1bc4d74e747c8c82d22f83b27ffffa36ddc08" [label=""];
  "sha256:8208f8aa166d55d99c8b570a13f1bc4d74e747c8c82d22f83b27ffffa36ddc08" -> "sha256:8162d0e63eec6502f1dfc8cfeb8afa021ac4e71216a5d376a5f92a3d3edeb32b" [label=""];
  "sha256:eaecde68623990a9a8fa46d1f1917a9b15d58579372eac3897ebdb949a67d94d" -> "sha256:8162d0e63eec6502f1dfc8cfeb8afa021ac4e71216a5d376a5f92a3d3edeb32b" [label=""];
  "sha256:8162d0e63eec6502f1dfc8cfeb8afa021ac4e71216a5d376a5f92a3d3edeb32b" -> "sha256:c251dae8133aa152dfb1978a39fca442867838dfbbcd4baec6e984e985e3fff3" [label=""];
  "sha256:eaecde68623990a9a8fa46d1f1917a9b15d58579372eac3897ebdb949a67d94d" -> "sha256:c251dae8133aa152dfb1978a39fca442867838dfbbcd4baec6e984e985e3fff3" [label=""];
  "sha256:c251dae8133aa152dfb1978a39fca442867838dfbbcd4baec6e984e985e3fff3" -> "sha256:dfd59a1d7e96e690985cb81519c00fe4beeed7008f717958a50dac3f6ab80ba6" [label=""];
  "sha256:eaecde68623990a9a8fa46d1f1917a9b15d58579372eac3897ebdb949a67d94d" -> "sha256:dfd59a1d7e96e690985cb81519c00fe4beeed7008f717958a50dac3f6ab80ba6" [label=""];
  "sha256:dfd59a1d7e96e690985cb81519c00fe4beeed7008f717958a50dac3f6ab80ba6" -> "sha256:42e15f9f1420e41f444f391088fcd491ac3c05d86a8dd479a3eddd98c654ce08" [label=""];
  "sha256:eaecde68623990a9a8fa46d1f1917a9b15d58579372eac3897ebdb949a67d94d" -> "sha256:42e15f9f1420e41f444f391088fcd491ac3c05d86a8dd479a3eddd98c654ce08" [label=""];
  "sha256:42e15f9f1420e41f444f391088fcd491ac3c05d86a8dd479a3eddd98c654ce08" -> "sha256:f14b0ee2ac6221e1d43c51b39978c74db10bfe7d55f35aebe30346c6daa4983b" [label=""];
  "sha256:eaecde68623990a9a8fa46d1f1917a9b15d58579372eac3897ebdb949a67d94d" -> "sha256:f14b0ee2ac6221e1d43c51b39978c74db10bfe7d55f35aebe30346c6daa4983b" [label=""];
  "sha256:f14b0ee2ac6221e1d43c51b39978c74db10bfe7d55f35aebe30346c6daa4983b" -> "sha256:192911ad280d1471d320a8ed999ca45f5321882b007efbfac7ee50273c4ff709" [label=""];
  "sha256:192911ad280d1471d320a8ed999ca45f5321882b007efbfac7ee50273c4ff709" -> "sha256:e46e19a19531e1b3d5ba07884c971f85b626577bdd868e4e0d985ae180562a04" [label=""];
}

