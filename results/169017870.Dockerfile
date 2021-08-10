[app/sources/169017870.Dockerfile]
digraph {
  "sha256:3ff24bddce21ba5d9febe027b9f7fbdc741f75c54edfbfe159f932c2505cd9f5" [label="docker-image://docker.io/library/postgres:9.5" shape="ellipse"];
  "sha256:990e037070372744ea999b96bc5c1215d84acdb5a109fc554af6a1ea93c191ba" [label="/bin/sh -c buildDependencies=\"build-essential     ca-certificates     curl     git-core     postgresql-server-dev-$PG_MAJOR\"   && apt-get update   && apt-get install -y --no-install-recommends ${buildDependencies}   && mkdir -p /tmp/build   && curl -o /tmp/build/${PLV8_VERSION}.tar.gz -SL \"https://github.com/plv8/plv8/archive/$PLV8_VERSION.tar.gz\"   && cd /tmp/build   && echo ${PLV8_SHASUM} | sha256sum -c   && tar -xzf /tmp/build/${PLV8_VERSION}.tar.gz -C /tmp/build/   && cd /tmp/build/plv8-${PLV8_VERSION#?}   && sed -i 's/\\(depot_tools.git\\)/\\1; cd depot_tools; git checkout 46541b4996f25b706146148331b9613c8a787e7e; rm -rf .git;/' Makefile.v8   && make static   && make install   && strip /usr/lib/postgresql/${PG_MAJOR}/lib/plv8.so   && cd /   && apt-get clean   && apt-get remove -y ${buildDependencies}   && apt-get autoremove -y   && rm -rf /tmp/build /var/lib/apt/lists/*" shape="box"];
  "sha256:e4b32ff7dcb206470770fc0a8c7dc48594545f4596da67df3dc982344332c589" [label="sha256:e4b32ff7dcb206470770fc0a8c7dc48594545f4596da67df3dc982344332c589" shape="plaintext"];
  "sha256:3ff24bddce21ba5d9febe027b9f7fbdc741f75c54edfbfe159f932c2505cd9f5" -> "sha256:990e037070372744ea999b96bc5c1215d84acdb5a109fc554af6a1ea93c191ba" [label=""];
  "sha256:990e037070372744ea999b96bc5c1215d84acdb5a109fc554af6a1ea93c191ba" -> "sha256:e4b32ff7dcb206470770fc0a8c7dc48594545f4596da67df3dc982344332c589" [label=""];
}

