[app/sources/320100825.Dockerfile]
digraph {
  "sha256:afba07df7ea4cf20a8875c501a3e770fd4b23486135eb7f35c1f05b1f2d3f061" [label="docker-image://docker.io/library/ruby:2.3-alpine" shape="ellipse"];
  "sha256:ed9584285062a5d879454aa3fd008a665d3491a720ce008a9735291de9900723" [label="/bin/sh -c set -xe   && apk add --no-cache --virtual .build-deps     sqlite-dev     g++     make   && gem install mailcatcher -v $MAILCATCHER_VERSION --no-ri --no-rdoc   && runDeps=\"$(     scanelf --needed --nobanner --recursive /usr/local       | awk '{ gsub(/,/, \"\\nso:\", $2); print \"so:\" $2 }'       | sort -u       | xargs -r apk info --installed       | sort -u   )\"   && apk add --no-cache --virtual .mailcatcher-rundeps $runDeps   && apk del .build-deps" shape="box"];
  "sha256:ecdebe2642acef144480b2754c52ee58e4d2e2bf43bc90bda87a421e79cc8d0a" [label="sha256:ecdebe2642acef144480b2754c52ee58e4d2e2bf43bc90bda87a421e79cc8d0a" shape="plaintext"];
  "sha256:afba07df7ea4cf20a8875c501a3e770fd4b23486135eb7f35c1f05b1f2d3f061" -> "sha256:ed9584285062a5d879454aa3fd008a665d3491a720ce008a9735291de9900723" [label=""];
  "sha256:ed9584285062a5d879454aa3fd008a665d3491a720ce008a9735291de9900723" -> "sha256:ecdebe2642acef144480b2754c52ee58e4d2e2bf43bc90bda87a421e79cc8d0a" [label=""];
}

