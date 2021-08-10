[app/sources/252780487.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:98a676ca96485a00b5e1616d52a5edecff1c89f47e1f6af092dfa7c7de53e3b0" [label="/bin/sh -c apk upgrade --no-cache && apk add --no-cache lame tmux flac python3" shape="box"];
  "sha256:67742589cdd4d64c4ec250de1e514f6b327ea30c7cc6abeb556241de6aa2318d" [label="/bin/sh -c apk add --no-cache --virtual=build-dependencies git g++ gcc make && cd /tmp && git clone https://github.com/RecursiveForest/whatmp3 && cd /tmp/whatmp3 && make clean install && cd /tmp && git clone https://github.com/Rudde/mktorrent && cd /tmp/mktorrent && make clean install && apk del --purge build-dependencies && rm -rf /tmp/* /usr/lib/*.la" shape="box"];
  "sha256:5a3bf22b3105b83a076a61490b53b4e70190885a348b9d855aa92daf704a17e6" [label="sha256:5a3bf22b3105b83a076a61490b53b4e70190885a348b9d855aa92daf704a17e6" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:98a676ca96485a00b5e1616d52a5edecff1c89f47e1f6af092dfa7c7de53e3b0" [label=""];
  "sha256:98a676ca96485a00b5e1616d52a5edecff1c89f47e1f6af092dfa7c7de53e3b0" -> "sha256:67742589cdd4d64c4ec250de1e514f6b327ea30c7cc6abeb556241de6aa2318d" [label=""];
  "sha256:67742589cdd4d64c4ec250de1e514f6b327ea30c7cc6abeb556241de6aa2318d" -> "sha256:5a3bf22b3105b83a076a61490b53b4e70190885a348b9d855aa92daf704a17e6" [label=""];
}

