[app/sources/252774081.Dockerfile]
digraph {
  "sha256:2d03b27268c15982221afd6ed1a0b3b47c3e8e5da5953c1b2e32e248bc599de3" [label="docker-image://docker.io/library/python:2-alpine" shape="ellipse"];
  "sha256:ac9072b1572b1a610cc7c0138ffa74800035320cca74dead4b8702b630561c2b" [label="local://context" shape="ellipse"];
  "sha256:9fb7202bb0b994032383c5fe135e5d0e197613f44b30c8f65a215ce9f43ffe5c" [label="copy{src=/server, dest=/tmp/server}" shape="note"];
  "sha256:2b3961eccb673770c9e355e976cd0f7093ca4eb16217db3dca7af2afe6aee2e3" [label="/bin/sh -c apk add \\--no-cache --update openssl && which openssl && apk add openssl && pip install raven && pip install dnspython && pip install requests && pip install tld && mkdir /app/ && cp -R /tmp/server /app/scmt && mkdir -p /var/lib/scmt" shape="box"];
  "sha256:d39e807efeb18f570dbeaf5d6b89b3d9af6829b7043f499f3c1bc4ab79bfa0ce" [label="sha256:d39e807efeb18f570dbeaf5d6b89b3d9af6829b7043f499f3c1bc4ab79bfa0ce" shape="plaintext"];
  "sha256:2d03b27268c15982221afd6ed1a0b3b47c3e8e5da5953c1b2e32e248bc599de3" -> "sha256:9fb7202bb0b994032383c5fe135e5d0e197613f44b30c8f65a215ce9f43ffe5c" [label=""];
  "sha256:ac9072b1572b1a610cc7c0138ffa74800035320cca74dead4b8702b630561c2b" -> "sha256:9fb7202bb0b994032383c5fe135e5d0e197613f44b30c8f65a215ce9f43ffe5c" [label=""];
  "sha256:9fb7202bb0b994032383c5fe135e5d0e197613f44b30c8f65a215ce9f43ffe5c" -> "sha256:2b3961eccb673770c9e355e976cd0f7093ca4eb16217db3dca7af2afe6aee2e3" [label=""];
  "sha256:2b3961eccb673770c9e355e976cd0f7093ca4eb16217db3dca7af2afe6aee2e3" -> "sha256:d39e807efeb18f570dbeaf5d6b89b3d9af6829b7043f499f3c1bc4ab79bfa0ce" [label=""];
}

