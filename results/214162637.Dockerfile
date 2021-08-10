[app/sources/214162637.Dockerfile]
digraph {
  "sha256:1b3490c04736717bef161c5af9921b097e99bee5a6c4bb6f71267d017e8b74ad" [label="docker-image://docker.io/library/postgres:9.6.2-alpine" shape="ellipse"];
  "sha256:468ad938281317e15cd2f35b8b98e92e8f2b7859baaaf362ba776db65959820d" [label="/bin/sh -c cd /usr/src  && apk add --update     python3     python3-dev     build-base     git  && python3 -m ensurepip  && git clone https://github.com/ajinabraham/NodeJsScan.git  && cd NodeJsScan  && sed -i -e s/postgresql:\\\\/\\\\/localhost\\\\/nodejsscan/postgresql:\\\\/\\\\/127.0.0.1\\\\/nodejsscan/g core/settings.py  && pip3 install -r requirements.txt  && apk del python3-dev     build-base     git  && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:438d49334110b5f8dcc498b3d3a205aaafcf21a53227ea1d4d19ed66ffb4df6a" [label="local://context" shape="ellipse"];
  "sha256:f17782cb154a1042a7f31b90b86133e5e411af7a7c19169ad529743f5b58ccbb" [label="copy{src=/start.sh, dest=/usr/src/NodeJsScan}" shape="note"];
  "sha256:1600acc5826944ec6ea9abf62716ebe8d12d5754c068e8557ab22da1e9278b76" [label="mkdir{path=/usr/src/NodeJsScan}" shape="note"];
  "sha256:d6c49bac27e95c5f0413043a6fef25782354a246421f98029e0570a4ffb895d0" [label="sha256:d6c49bac27e95c5f0413043a6fef25782354a246421f98029e0570a4ffb895d0" shape="plaintext"];
  "sha256:1b3490c04736717bef161c5af9921b097e99bee5a6c4bb6f71267d017e8b74ad" -> "sha256:468ad938281317e15cd2f35b8b98e92e8f2b7859baaaf362ba776db65959820d" [label=""];
  "sha256:468ad938281317e15cd2f35b8b98e92e8f2b7859baaaf362ba776db65959820d" -> "sha256:f17782cb154a1042a7f31b90b86133e5e411af7a7c19169ad529743f5b58ccbb" [label=""];
  "sha256:438d49334110b5f8dcc498b3d3a205aaafcf21a53227ea1d4d19ed66ffb4df6a" -> "sha256:f17782cb154a1042a7f31b90b86133e5e411af7a7c19169ad529743f5b58ccbb" [label=""];
  "sha256:f17782cb154a1042a7f31b90b86133e5e411af7a7c19169ad529743f5b58ccbb" -> "sha256:1600acc5826944ec6ea9abf62716ebe8d12d5754c068e8557ab22da1e9278b76" [label=""];
  "sha256:1600acc5826944ec6ea9abf62716ebe8d12d5754c068e8557ab22da1e9278b76" -> "sha256:d6c49bac27e95c5f0413043a6fef25782354a246421f98029e0570a4ffb895d0" [label=""];
}

