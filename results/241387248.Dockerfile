[app/sources/241387248.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:065c2dca2a3ef1c0db195004cc819382b3a9831612e4fe101514b04b6d37ce94" [label="local://context" shape="ellipse"];
  "sha256:f2e5973cc548389c7841c6b3aa7f5b8bcdc82262dc206183ff89d7f09be0ce4d" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:bb21f59564638ab73a474c848a8a2cd3389669e858525164fb4ae69f0145d130" [label="/bin/sh -c apk add --no-cache \t\tsu-exec \t\tgit \t\tg++ \t\tlibffi \t\tlibffi-dev \t\tlibjpeg-turbo \t\tlibjpeg-turbo-dev \t\tlibstdc++ \t\tlibxml2 \t\tlibxml2-dev \t\tlibxslt \t\tlibxslt-dev \t\topenssl \t\topenssl-dev \t\tpython3 \t\tpython3-dev \t\tzlib \t\tzlib-dev     && python3 -m ensurepip     && LDFLAGS=-L/lib pip3 install -r /tmp/requirements.txt     && apk del --purge         git         g++         libffi-dev         libjpeg-turbo-dev         libxml2-dev         libxslt-dev         openssl-dev         python3-dev         zlib-dev     && rm /tmp/requirements.txt     && rm -rf ~/.cache/pip" shape="box"];
  "sha256:d6fed910448187c8ff5e48d65e5f1306a73935edbfb9c48ef71cdefd184fd37e" [label="sha256:d6fed910448187c8ff5e48d65e5f1306a73935edbfb9c48ef71cdefd184fd37e" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:f2e5973cc548389c7841c6b3aa7f5b8bcdc82262dc206183ff89d7f09be0ce4d" [label=""];
  "sha256:065c2dca2a3ef1c0db195004cc819382b3a9831612e4fe101514b04b6d37ce94" -> "sha256:f2e5973cc548389c7841c6b3aa7f5b8bcdc82262dc206183ff89d7f09be0ce4d" [label=""];
  "sha256:f2e5973cc548389c7841c6b3aa7f5b8bcdc82262dc206183ff89d7f09be0ce4d" -> "sha256:bb21f59564638ab73a474c848a8a2cd3389669e858525164fb4ae69f0145d130" [label=""];
  "sha256:bb21f59564638ab73a474c848a8a2cd3389669e858525164fb4ae69f0145d130" -> "sha256:d6fed910448187c8ff5e48d65e5f1306a73935edbfb9c48ef71cdefd184fd37e" [label=""];
}

