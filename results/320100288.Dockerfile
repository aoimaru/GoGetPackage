[app/sources/320100288.Dockerfile]
digraph {
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" [label="docker-image://docker.io/library/debian:buster" shape="ellipse"];
  "sha256:1335434fea2f23838e898fdadc3417b8a60ac0a8c2bb1ef8d1eb0e5cf5fe373c" [label="/bin/sh -c apt-get update && apt-get install -y \tca-certificates \tlibgtk-3-0 \tlibgtkspell3-3-0 \tlibtspi1 \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b74e62d2f4475d4b616854808138434d7d5d9a84f19ba2f6504fb5ce2f02ab75" [label="/bin/sh -c buildDeps=' \t\tgolang \t\tgit \t\tgcc \t\tlibgtk-3-dev \t\tlibgtkspell3-3-dev \t\tlibtspi-dev \t\tpkg-config \t' \tset -x \t&& apt-get update \t&& apt-get install -y $buildDeps --no-install-recommends \t&& go get -d -v github.com/agl/pond/client \t&& go get -d -v github.com/agl/pond/server \t&& cd /go/src/github.com/agl/pond \t&& go build -o /usr/bin/pond-client ./client \t&& go build -o /usr/bin/pond-server ./server \t&& apt-get purge -y --auto-remove $buildDeps \t&& rm -rf /var/lib/apt/lists/* \t&& rm -rf /go \t&& echo \"Build complete.\"" shape="box"];
  "sha256:3621b18564bacb6fcf2cfd1cbc70798647f0737d303b1ad31782551efbff1cda" [label="/bin/sh -c useradd --create-home --home-dir $HOME pond     && chown -R pond:pond $HOME" shape="box"];
  "sha256:29f9cbf44242b0a177f244ec1b2c8d06823aa44bb9071be634e0759add9ae88d" [label="mkdir{path=/home/pond}" shape="note"];
  "sha256:284138c61c39751d4e0cdb4fe30e2ffa5ae57ae3ef805817d5fc061a25cdc251" [label="sha256:284138c61c39751d4e0cdb4fe30e2ffa5ae57ae3ef805817d5fc061a25cdc251" shape="plaintext"];
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" -> "sha256:1335434fea2f23838e898fdadc3417b8a60ac0a8c2bb1ef8d1eb0e5cf5fe373c" [label=""];
  "sha256:1335434fea2f23838e898fdadc3417b8a60ac0a8c2bb1ef8d1eb0e5cf5fe373c" -> "sha256:b74e62d2f4475d4b616854808138434d7d5d9a84f19ba2f6504fb5ce2f02ab75" [label=""];
  "sha256:b74e62d2f4475d4b616854808138434d7d5d9a84f19ba2f6504fb5ce2f02ab75" -> "sha256:3621b18564bacb6fcf2cfd1cbc70798647f0737d303b1ad31782551efbff1cda" [label=""];
  "sha256:3621b18564bacb6fcf2cfd1cbc70798647f0737d303b1ad31782551efbff1cda" -> "sha256:29f9cbf44242b0a177f244ec1b2c8d06823aa44bb9071be634e0759add9ae88d" [label=""];
  "sha256:29f9cbf44242b0a177f244ec1b2c8d06823aa44bb9071be634e0759add9ae88d" -> "sha256:284138c61c39751d4e0cdb4fe30e2ffa5ae57ae3ef805817d5fc061a25cdc251" [label=""];
}

