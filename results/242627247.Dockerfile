[app/sources/242627247.Dockerfile]
digraph {
  "sha256:899fbc9e52c218ef587f61bf5f11e91c1301fc8ed22b95e3705ca42fc157d858" [label="docker-image://docker.io/library/node:7.10.0" shape="ellipse"];
  "sha256:3232ec3bd1e252cdd4f463f4a801d775d5f8452bea667b8ce83fe72c049d9c1e" [label="/bin/sh -c apt-get update;     apt-get install -y --no-install-recommends apt-transport-https;     curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -;     echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | tee /etc/apt/sources.list.d/yarn.list;     apt-get update;     apt-get install -y --no-install-recommends             yarn     ;     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:48a4151fd985561d90a78d2e4f21c9edf0950f10a6cb607b32a301fcddf7429b" [label="/bin/sh -c mkdir -p /mask" shape="box"];
  "sha256:ccbd35f7746ab6ca3c037ea2bed9ce438f3c2a1c066e5b764fff810d7313d6d9" [label="local://context" shape="ellipse"];
  "sha256:237b36aaa3af6e41f11b564d73bd278bfa7188dc64a89f81096e551f6dde892f" [label="copy{src=/, dest=/mask}" shape="note"];
  "sha256:7404399991bf19b09c099bea98bb2fa1b2ba53ad885269c737b0f4d8bfce20da" [label="mkdir{path=/mask}" shape="note"];
  "sha256:44d1409d00e74c2863d15b14f8923b16460f7421c5261ed1832cf9098a7d7a2e" [label="/bin/sh -c yarn install && yarn cache clean && yarn run make" shape="box"];
  "sha256:8991df31ea7add66739aaeb3cf330e782b2a76ab67b93e9dba796875699bc120" [label="sha256:8991df31ea7add66739aaeb3cf330e782b2a76ab67b93e9dba796875699bc120" shape="plaintext"];
  "sha256:899fbc9e52c218ef587f61bf5f11e91c1301fc8ed22b95e3705ca42fc157d858" -> "sha256:3232ec3bd1e252cdd4f463f4a801d775d5f8452bea667b8ce83fe72c049d9c1e" [label=""];
  "sha256:3232ec3bd1e252cdd4f463f4a801d775d5f8452bea667b8ce83fe72c049d9c1e" -> "sha256:48a4151fd985561d90a78d2e4f21c9edf0950f10a6cb607b32a301fcddf7429b" [label=""];
  "sha256:48a4151fd985561d90a78d2e4f21c9edf0950f10a6cb607b32a301fcddf7429b" -> "sha256:237b36aaa3af6e41f11b564d73bd278bfa7188dc64a89f81096e551f6dde892f" [label=""];
  "sha256:ccbd35f7746ab6ca3c037ea2bed9ce438f3c2a1c066e5b764fff810d7313d6d9" -> "sha256:237b36aaa3af6e41f11b564d73bd278bfa7188dc64a89f81096e551f6dde892f" [label=""];
  "sha256:237b36aaa3af6e41f11b564d73bd278bfa7188dc64a89f81096e551f6dde892f" -> "sha256:7404399991bf19b09c099bea98bb2fa1b2ba53ad885269c737b0f4d8bfce20da" [label=""];
  "sha256:7404399991bf19b09c099bea98bb2fa1b2ba53ad885269c737b0f4d8bfce20da" -> "sha256:44d1409d00e74c2863d15b14f8923b16460f7421c5261ed1832cf9098a7d7a2e" [label=""];
  "sha256:44d1409d00e74c2863d15b14f8923b16460f7421c5261ed1832cf9098a7d7a2e" -> "sha256:8991df31ea7add66739aaeb3cf330e782b2a76ab67b93e9dba796875699bc120" [label=""];
}

