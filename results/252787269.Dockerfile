[app/sources/252787269.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:1b42be39d3de6266829c9f3991b121685be8cfdeb47b0fa7aca7d24c97df520c" [label="/bin/sh -c sudo apt-get update && sudo apt-get -y install nodejs npm" shape="box"];
  "sha256:40b76cce1cf88f6e61f3fff07c3264807d620f48c89f4027e880920dbc0da144" [label="/bin/sh -c ln -s /usr/bin/nodejs /usr/bin/node" shape="box"];
  "sha256:7a433e17655eef72659604e142fcfeca90f22f59dc8a024d5b32c505462d7130" [label="/bin/sh -c npm install -g grunt-cli" shape="box"];
  "sha256:f5ee8adbd0090445f652e58b4b5d62abc16b208699c823528ccad0f754877297" [label="local://context" shape="ellipse"];
  "sha256:34a21dfd7213959a5542fdb4814b2c25134553a25976065ae274bdd9fda8c46f" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:3cd03f58f3dd0ae3f421996da902d047aabc2b949f924be4133b803889517b9c" [label="/bin/sh -c cd /src; npm install; grunt jade:dev less:dev" shape="box"];
  "sha256:6d0dc6f6e6e8f5641880eb911a2e3aa8e22e0a3befa3947abba93bed01ea7928" [label="sha256:6d0dc6f6e6e8f5641880eb911a2e3aa8e22e0a3befa3947abba93bed01ea7928" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:1b42be39d3de6266829c9f3991b121685be8cfdeb47b0fa7aca7d24c97df520c" [label=""];
  "sha256:1b42be39d3de6266829c9f3991b121685be8cfdeb47b0fa7aca7d24c97df520c" -> "sha256:40b76cce1cf88f6e61f3fff07c3264807d620f48c89f4027e880920dbc0da144" [label=""];
  "sha256:40b76cce1cf88f6e61f3fff07c3264807d620f48c89f4027e880920dbc0da144" -> "sha256:7a433e17655eef72659604e142fcfeca90f22f59dc8a024d5b32c505462d7130" [label=""];
  "sha256:7a433e17655eef72659604e142fcfeca90f22f59dc8a024d5b32c505462d7130" -> "sha256:34a21dfd7213959a5542fdb4814b2c25134553a25976065ae274bdd9fda8c46f" [label=""];
  "sha256:f5ee8adbd0090445f652e58b4b5d62abc16b208699c823528ccad0f754877297" -> "sha256:34a21dfd7213959a5542fdb4814b2c25134553a25976065ae274bdd9fda8c46f" [label=""];
  "sha256:34a21dfd7213959a5542fdb4814b2c25134553a25976065ae274bdd9fda8c46f" -> "sha256:3cd03f58f3dd0ae3f421996da902d047aabc2b949f924be4133b803889517b9c" [label=""];
  "sha256:3cd03f58f3dd0ae3f421996da902d047aabc2b949f924be4133b803889517b9c" -> "sha256:6d0dc6f6e6e8f5641880eb911a2e3aa8e22e0a3befa3947abba93bed01ea7928" [label=""];
}

