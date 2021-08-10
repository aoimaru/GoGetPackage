[app/sources/247130869.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:98e81d9c2befae0905785798cbac92a0e175b576fc5be9df4455aa2ea29659ae" [label="/bin/sh -c echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/main'       >>/etc/apk/repositories &&     echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing'       >>/etc/apk/repositories &&     apk add --update nut@testing=$NUT_VERSION       libcrypto1.1@edge libssl1.1@edge net-snmp-libs@edge" shape="box"];
  "sha256:ae04ec4f9525ae769d100eb5d23a4ac054287d02b576871d00a7259df0f9cc33" [label="local://context" shape="ellipse"];
  "sha256:69f9fed606fccc3a4f4126fd873947569ed355f05f5c26274e89fb31bd482548" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:535ff4dbc644c7e21299b86a978106b27ce77df29cd59f8207a738d03e51be90" [label="sha256:535ff4dbc644c7e21299b86a978106b27ce77df29cd59f8207a738d03e51be90" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:98e81d9c2befae0905785798cbac92a0e175b576fc5be9df4455aa2ea29659ae" [label=""];
  "sha256:98e81d9c2befae0905785798cbac92a0e175b576fc5be9df4455aa2ea29659ae" -> "sha256:69f9fed606fccc3a4f4126fd873947569ed355f05f5c26274e89fb31bd482548" [label=""];
  "sha256:ae04ec4f9525ae769d100eb5d23a4ac054287d02b576871d00a7259df0f9cc33" -> "sha256:69f9fed606fccc3a4f4126fd873947569ed355f05f5c26274e89fb31bd482548" [label=""];
  "sha256:69f9fed606fccc3a4f4126fd873947569ed355f05f5c26274e89fb31bd482548" -> "sha256:535ff4dbc644c7e21299b86a978106b27ce77df29cd59f8207a738d03e51be90" [label=""];
}

