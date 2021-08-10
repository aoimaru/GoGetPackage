[app/sources/247933236.Dockerfile]
digraph {
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" [label="docker-image://docker.io/library/golang:1.11-alpine" shape="ellipse"];
  "sha256:d4eddfd9dfd6acc6a375cefa82a879b0d77ff9a4f2e5a6315c044c8f12bfd421" [label="/bin/sh -c set -x   && apk add --update     bzr     tini   && apk add --virtual .mailhog-build-dependencies     git   && : \"---------- MailHog ----------\"   && go get github.com/mailhog/MailHog   && : \"---------- Removing build dependencies, clean temporary files ----------\"   && apk del .mailhog-build-dependencies   && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*" shape="box"];
  "sha256:889698b5ff32030fdbb76e7137fe7be42ee0d3fbba793d8cc060bf8eba3ee33c" [label="sha256:889698b5ff32030fdbb76e7137fe7be42ee0d3fbba793d8cc060bf8eba3ee33c" shape="plaintext"];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" -> "sha256:d4eddfd9dfd6acc6a375cefa82a879b0d77ff9a4f2e5a6315c044c8f12bfd421" [label=""];
  "sha256:d4eddfd9dfd6acc6a375cefa82a879b0d77ff9a4f2e5a6315c044c8f12bfd421" -> "sha256:889698b5ff32030fdbb76e7137fe7be42ee0d3fbba793d8cc060bf8eba3ee33c" [label=""];
}

