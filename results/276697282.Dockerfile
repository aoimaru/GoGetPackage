[app/sources/276697282.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4e6ff3a627ab4b437cab527bb062969c7dc311e883bba6170b88bedc0df11a5b" [label="local://context" shape="ellipse"];
  "sha256:2a0e4bdc5f4e533f0955291d738350afc3967b8d4083a3997470bbc46d8e5eba" [label="copy{src=/sentinel, dest=/root/sentinel}" shape="note"];
  "sha256:1989650851d5f4dc309d2d3b01d87067221f5b63a3f84a29b9e74aea3c9095a5" [label="copy{src=/app.py, dest=/root/},copy{src=/server.py, dest=/root/},copy{src=/run.sh, dest=/root/}" shape="note"];
  "sha256:bccf8ad14b1e31ded4ecf61a222c4ae77895b0fd5f0208c073b986eb5437986f" [label="/bin/sh -c echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories &&     apk add --no-cache ca-certificates easy-rsa mongodb openvpn ufw@testing &&     apk add --no-cache gcc python-dev musl-dev nano &&     mkdir -p /data/db &&     wget -c https://bootstrap.pypa.io/get-pip.py -O /tmp/get-pip.py &&     python /tmp/get-pip.py &&     pip install --no-cache-dir falcon gunicorn pymongo requests speedtest_cli shadowsocks &&     pip install --no-cache-dir ipython &&     rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/* /root/.cache .wget-hsts" shape="box"];
  "sha256:a5694960a7a3dedd1b8ddf47a68b4b58ac8cac2301e663e9268e9d5025edee5d" [label="sha256:a5694960a7a3dedd1b8ddf47a68b4b58ac8cac2301e663e9268e9d5025edee5d" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:2a0e4bdc5f4e533f0955291d738350afc3967b8d4083a3997470bbc46d8e5eba" [label=""];
  "sha256:4e6ff3a627ab4b437cab527bb062969c7dc311e883bba6170b88bedc0df11a5b" -> "sha256:2a0e4bdc5f4e533f0955291d738350afc3967b8d4083a3997470bbc46d8e5eba" [label=""];
  "sha256:2a0e4bdc5f4e533f0955291d738350afc3967b8d4083a3997470bbc46d8e5eba" -> "sha256:1989650851d5f4dc309d2d3b01d87067221f5b63a3f84a29b9e74aea3c9095a5" [label=""];
  "sha256:4e6ff3a627ab4b437cab527bb062969c7dc311e883bba6170b88bedc0df11a5b" -> "sha256:1989650851d5f4dc309d2d3b01d87067221f5b63a3f84a29b9e74aea3c9095a5" [label=""];
  "sha256:1989650851d5f4dc309d2d3b01d87067221f5b63a3f84a29b9e74aea3c9095a5" -> "sha256:bccf8ad14b1e31ded4ecf61a222c4ae77895b0fd5f0208c073b986eb5437986f" [label=""];
  "sha256:bccf8ad14b1e31ded4ecf61a222c4ae77895b0fd5f0208c073b986eb5437986f" -> "sha256:a5694960a7a3dedd1b8ddf47a68b4b58ac8cac2301e663e9268e9d5025edee5d" [label=""];
}

