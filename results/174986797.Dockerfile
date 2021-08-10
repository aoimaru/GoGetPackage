[app/sources/174986797.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:f7fecf09590c6a0f24f78455c94ab23ce401e1eada9fe06b28de633078699c38" [label="/bin/sh -c set -xe     && apk add --no-cache apr-dev                           apr-util-dev                           bash                           build-base                           coreutils                           curl                           jq                           libidn                           libidn-dev                           libpq                           libssh                           libssh-dev                           mariadb-connector-c                           mariadb-connector-c-dev                           mariadb-dev                           ncurses                           ncurses-dev                           parallel                           pcre                           pcre-dev                           postgresql-dev                           subversion-dev                           subversion-libs                           tar                           tmux     && parallel --will-cite     && mkdir src         && cd src         && curl -sSL $HYDRA_URL | tar xz --strip 1         && ./configure --prefix=/usr         && make install         && cd ..         && rm -rf src     && apk del --purge apr-dev                        apr-util-dev                        build-base                        libidn-dev                        libssh-dev                        ncurses-dev                        mariadb-connector-c-dev                        mariadb-dev                        pcre-dev                        postgresql-dev                        subversion-dev" shape="box"];
  "sha256:8f35b34bb35145d184572c7acdddecc808eae168e14740c7fd02102b3485326d" [label="sha256:8f35b34bb35145d184572c7acdddecc808eae168e14740c7fd02102b3485326d" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:f7fecf09590c6a0f24f78455c94ab23ce401e1eada9fe06b28de633078699c38" [label=""];
  "sha256:f7fecf09590c6a0f24f78455c94ab23ce401e1eada9fe06b28de633078699c38" -> "sha256:8f35b34bb35145d184572c7acdddecc808eae168e14740c7fd02102b3485326d" [label=""];
}

