[app/sources/197252305.Dockerfile]
digraph {
  "sha256:00e932e7ff509057e7e49d3010ffe1c7dd9ce1618071b11e379094eb7e19781e" [label="docker-image://docker.io/library/erlang:20-alpine" shape="ellipse"];
  "sha256:8cec2826c810d25c9c72f63d931480754da90801686f4776b6c14e018ee65d77" [label="/bin/sh -c set -xe \t&& ELIXIR_DOWNLOAD_URL=\"https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip\" \t&& ELIXIR_DOWNLOAD_SHA256=\"d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b\" \t&& buildDeps=' \t\tca-certificates \t\tcurl \t\tunzip \t' \t&& apk add --no-cache --virtual .build-deps $buildDeps \t&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL \t&& echo \"$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip\" | sha256sum -c - \t&& unzip -d /usr/local elixir-precompiled.zip \t&& rm elixir-precompiled.zip \t&& apk del .build-deps" shape="box"];
  "sha256:52fef033f1cbf921d3759496510c723eac4178d94f5f7fb077d9236c9f7d7ff5" [label="sha256:52fef033f1cbf921d3759496510c723eac4178d94f5f7fb077d9236c9f7d7ff5" shape="plaintext"];
  "sha256:00e932e7ff509057e7e49d3010ffe1c7dd9ce1618071b11e379094eb7e19781e" -> "sha256:8cec2826c810d25c9c72f63d931480754da90801686f4776b6c14e018ee65d77" [label=""];
  "sha256:8cec2826c810d25c9c72f63d931480754da90801686f4776b6c14e018ee65d77" -> "sha256:52fef033f1cbf921d3759496510c723eac4178d94f5f7fb077d9236c9f7d7ff5" [label=""];
}

