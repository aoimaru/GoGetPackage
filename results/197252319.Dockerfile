[app/sources/197252319.Dockerfile]
digraph {
  "sha256:4b34d36f57554523e97b503fa95c0d86cf6f5980bde4ef8c4ff840b2eb77ad42" [label="docker-image://docker.io/library/erlang:22" shape="ellipse"];
  "sha256:8369b1bff2020cb3e021f5018228b249d192d1e309510696e251c5c5cdc9c903" [label="/bin/sh -c set -xe \t&& ELIXIR_DOWNLOAD_URL=\"https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz\" \t&& ELIXIR_DOWNLOAD_SHA256=\"cf9bf0b2d92bc4671431e3fe1d1b0a0e5125f1a942cc4fdf7914b74f04efb835\" \t&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL \t&& echo \"$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz\" | sha256sum -c - \t&& mkdir -p /usr/local/src/elixir \t&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz \t&& rm elixir-src.tar.gz \t&& cd /usr/local/src/elixir \t&& make install clean" shape="box"];
  "sha256:b69753f50475f04959b2dd44dd86440479d40d5d6762b9ae469651a75adbd3d5" [label="sha256:b69753f50475f04959b2dd44dd86440479d40d5d6762b9ae469651a75adbd3d5" shape="plaintext"];
  "sha256:4b34d36f57554523e97b503fa95c0d86cf6f5980bde4ef8c4ff840b2eb77ad42" -> "sha256:8369b1bff2020cb3e021f5018228b249d192d1e309510696e251c5c5cdc9c903" [label=""];
  "sha256:8369b1bff2020cb3e021f5018228b249d192d1e309510696e251c5c5cdc9c903" -> "sha256:b69753f50475f04959b2dd44dd86440479d40d5d6762b9ae469651a75adbd3d5" [label=""];
}

