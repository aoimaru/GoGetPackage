[app/sources/174987221.Dockerfile]
digraph {
  "sha256:67ca87eacda16dfedf0a605cc15deed25d6cece0d5397b5f244f751f6d913187" [label="docker-image://docker.io/easypi/alpine-arm:latest" shape="ellipse"];
  "sha256:7e85f09f3560b1956507032e0bd1dfa6148656189e3f27f1bcacac1bccf85f0a" [label="/bin/sh -c set -xe     && apk add -U curl privoxy     && curl -sSL https://github.com/tianon/gosu/releases/download/1.9/gosu-armhf > /usr/sbin/gosu     && chmod +x /usr/sbin/gosu     && apk del curl     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:e692360bafd4e6a1b7e5d29bf1d81af3247af8f37f574efcbdf9b9e24b080c06" [label="/bin/sh -c sed -i -e '/^listen-address/s/127.0.0.1/0.0.0.0/'            -e '/^accept-intercepted-requests/s/0/1/'            -e '/^enforce-blocks/s/0/1/'            -e '/^#debug/s/#//' /etc/privoxy/config" shape="box"];
  "sha256:cd2ba54f717058e10520cf398bf47f3a89d6490130f8912881971747fc701733" [label="sha256:cd2ba54f717058e10520cf398bf47f3a89d6490130f8912881971747fc701733" shape="plaintext"];
  "sha256:67ca87eacda16dfedf0a605cc15deed25d6cece0d5397b5f244f751f6d913187" -> "sha256:7e85f09f3560b1956507032e0bd1dfa6148656189e3f27f1bcacac1bccf85f0a" [label=""];
  "sha256:7e85f09f3560b1956507032e0bd1dfa6148656189e3f27f1bcacac1bccf85f0a" -> "sha256:e692360bafd4e6a1b7e5d29bf1d81af3247af8f37f574efcbdf9b9e24b080c06" [label=""];
  "sha256:e692360bafd4e6a1b7e5d29bf1d81af3247af8f37f574efcbdf9b9e24b080c06" -> "sha256:cd2ba54f717058e10520cf398bf47f3a89d6490130f8912881971747fc701733" [label=""];
}

