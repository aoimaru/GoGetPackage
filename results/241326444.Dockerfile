[app/sources/241326444.Dockerfile]
digraph {
  "sha256:900171916885cd96a868f49485d1389360092cc2540e41121eca3e2225751a9b" [label="docker-image://docker.io/library/node:11.9.0-alpine" shape="ellipse"];
  "sha256:4d671ace596708c359df5af7a19e34674415ba300fc632015be06158b375d38f" [label="/bin/sh -c apk --no-cache add --virtual build-deps git     && git clone --depth=1 -b \"v${CHECKAPI_VERSION}\" https://github.com/Mermade/check_api.git /code     && apk del --purge -r build-deps     && cd /code     && yarn add \"node-fetch\"     && rm -rf /usr/local/share/.cache        /code/node_modules/raml-1-parser/documentation/images     && find / -depth -type d -name test* -exec rm -rf {} \\;     && find / -depth -type f -name *.md -exec rm -f {} \\;     && find / -depth -type f -name *.yml -exec rm -f {} \\;" shape="box"];
  "sha256:e48ec3882815f93640f3a87de68877359fd21b1b80ac039c0501efa21265edef" [label="local://context" shape="ellipse"];
  "sha256:2825e120835133ce7f6727818f2c9308ea6a3586b16a97aba74af164b9984aee" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:c2f00fdb9f1e910caa287c6d8401e5b4b2bda785dbd6377dfe300bb813fcd5bd" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:9313ff55c9cd0c9b6ed1a8bf7143d831f140872788a1bdd8ec272137a9204a2c" [label="sha256:9313ff55c9cd0c9b6ed1a8bf7143d831f140872788a1bdd8ec272137a9204a2c" shape="plaintext"];
  "sha256:900171916885cd96a868f49485d1389360092cc2540e41121eca3e2225751a9b" -> "sha256:4d671ace596708c359df5af7a19e34674415ba300fc632015be06158b375d38f" [label=""];
  "sha256:4d671ace596708c359df5af7a19e34674415ba300fc632015be06158b375d38f" -> "sha256:2825e120835133ce7f6727818f2c9308ea6a3586b16a97aba74af164b9984aee" [label=""];
  "sha256:e48ec3882815f93640f3a87de68877359fd21b1b80ac039c0501efa21265edef" -> "sha256:2825e120835133ce7f6727818f2c9308ea6a3586b16a97aba74af164b9984aee" [label=""];
  "sha256:2825e120835133ce7f6727818f2c9308ea6a3586b16a97aba74af164b9984aee" -> "sha256:c2f00fdb9f1e910caa287c6d8401e5b4b2bda785dbd6377dfe300bb813fcd5bd" [label=""];
  "sha256:c2f00fdb9f1e910caa287c6d8401e5b4b2bda785dbd6377dfe300bb813fcd5bd" -> "sha256:9313ff55c9cd0c9b6ed1a8bf7143d831f140872788a1bdd8ec272137a9204a2c" [label=""];
}

