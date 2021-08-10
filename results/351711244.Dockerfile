[app/sources/351711244.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:10c7e9bd0bd3e86a4ebb4138291134ab468e498dcc140b93c64f0eec91eb8ec6" [label="local://context" shape="ellipse"];
  "sha256:bef43a2f8c97b110309ed93b3dc4bb5e72b8aedb1bce75b5c2906b088d62561e" [label="copy{src=/install, dest=/usr/local/sbin/}" shape="note"];
  "sha256:62c1b731f70d51cac56c1b0a06ba26b662b009456e47f870d2e0565329bdfb73" [label="/bin/sh -c apk upgrade --no-cache --available &&     apk add --no-cache       ca-certificates       groff       less       python       &&     apk add --no-cache --virtual dev py2-pip &&     /usr/local/sbin/install &&     apk del --purge dev     && adduser -D user" shape="box"];
  "sha256:1d3b35946b5f6429ea87f82a8678e1024ef0b9da5648f29672ba2184644b791f" [label="mkdir{path=/home/user}" shape="note"];
  "sha256:eb5d5b200a224b0e486ffe2a224ec52d2ab97e8465a5ba606cba37b05a1ffe66" [label="sha256:eb5d5b200a224b0e486ffe2a224ec52d2ab97e8465a5ba606cba37b05a1ffe66" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:bef43a2f8c97b110309ed93b3dc4bb5e72b8aedb1bce75b5c2906b088d62561e" [label=""];
  "sha256:10c7e9bd0bd3e86a4ebb4138291134ab468e498dcc140b93c64f0eec91eb8ec6" -> "sha256:bef43a2f8c97b110309ed93b3dc4bb5e72b8aedb1bce75b5c2906b088d62561e" [label=""];
  "sha256:bef43a2f8c97b110309ed93b3dc4bb5e72b8aedb1bce75b5c2906b088d62561e" -> "sha256:62c1b731f70d51cac56c1b0a06ba26b662b009456e47f870d2e0565329bdfb73" [label=""];
  "sha256:62c1b731f70d51cac56c1b0a06ba26b662b009456e47f870d2e0565329bdfb73" -> "sha256:1d3b35946b5f6429ea87f82a8678e1024ef0b9da5648f29672ba2184644b791f" [label=""];
  "sha256:1d3b35946b5f6429ea87f82a8678e1024ef0b9da5648f29672ba2184644b791f" -> "sha256:eb5d5b200a224b0e486ffe2a224ec52d2ab97e8465a5ba606cba37b05a1ffe66" [label=""];
}

