[app/sources/150692264.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:b34b513cc4d6edf0b4bb09b5a9a61131f02000d0485d010774c8e8fbb8247f39" [label="/bin/sh -c apk --no-cache update &&     apk --no-cache upgrade &&     apk --no-cache add bash openssl erlang-crypto" shape="box"];
  "sha256:db30a088256e0222745adb7b1e6ce72976557992e5c5bc7eb5436aca1386477d" [label="mkdir{path=/opt/dispatch}" shape="note"];
  "sha256:f9f5be69d343389880f019e377ea0da1dc1a928ebda3c2014171217dc5ba7395" [label="docker-image://docker.io/library/elixir:1.8.1-alpine" shape="ellipse"];
  "sha256:9f0580b8f17ebcfd3e983fdc782cd8d958b185694e740b350d4fd733a2a64bed" [label="mkdir{path=/build}" shape="note"];
  "sha256:8728992c7419eb02e9f1453dc33f47d6fabfa345baa038f860e16a7a5c49cc13" [label="/bin/sh -c apk update &&     apk upgrade --no-cache &&     apk add --no-cache make git openssl-dev python" shape="box"];
  "sha256:e383fc026583049dc32315e0417f3122017081e2ab97aab6a376a20887d1a137" [label="/bin/sh -c mix local.rebar --force &&     mix local.hex --force" shape="box"];
  "sha256:3955d8d24fd1eab56039c153f3a8b6eb563e3d09e56ec4658f8acbfcd1cfd091" [label="local://context" shape="ellipse"];
  "sha256:9ff68643b9e00971cb7a8e656bba0b43a629c170dff5f065c790670f8d91bcfe" [label="copy{src=/mix.*, dest=/build/}" shape="note"];
  "sha256:64ce3d7f9eb4326b1a289b56a8a58242edf0e32c998b5252512575431cb485ea" [label="/bin/sh -c mix deps.get --only ${MIX_ENV}" shape="box"];
  "sha256:95f32103949e6c4cb9d9a856d1e64add499c25f96cb4abc42841850bd6d88b68" [label="copy{src=/, dest=/build/}" shape="note"];
  "sha256:eb5f90743d3d69d811189d74ce99e5ab81ea2cdb00bc9133373b0043daf7eed0" [label="/bin/sh -c mix compile --force" shape="box"];
  "sha256:17d41dc7534f85ffd6a4f3ceb6f3234ec9bf66bf58000dfa7c7fd50a597886b2" [label="/bin/sh -c mkdir -p /opt/build &&     mix release --verbose &&     cp _build/${MIX_ENV}/rel/${APP_NAME}/releases/${APP_VERSION}/${APP_NAME}.tar.gz /opt/build" shape="box"];
  "sha256:e0edbaa6cc9168020c26f69405ec2d46f7a71335542a7ef48e63ab09ea9ee138" [label="/bin/sh -c cd /opt/build &&     tar -xzf ${APP_NAME}.tar.gz &&     rm ${APP_NAME}.tar.gz" shape="box"];
  "sha256:0f013cc92392f1ce85a7da755c47f19449ca8e0b27d626f058a4c62e747a762c" [label="copy{src=/opt/build, dest=/opt/dispatch/}" shape="note"];
  "sha256:b964b16252096aa0ca570c39087abfa59ca386efe1359d9d2a0f7811b0075e1b" [label="copy{src=/priv/scripts/docker-entrypoint.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:8d0fc61a8b9ae4ac2f335f4a1b05da720a706f23968bb7712524a1809aced8a6" [label="/bin/sh -c chmod a+x /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:e2e044b4df253132937a5713a4675021c83b96378ef25dfe9502b62ea50ef54a" [label="/bin/sh -c adduser -D dispatch &&     chown -R dispatch: /opt/dispatch" shape="box"];
  "sha256:3bd0efa673660fa4a0aed57015b924211f97b1adf7e3a37de7ea0abf1543bbed" [label="sha256:3bd0efa673660fa4a0aed57015b924211f97b1adf7e3a37de7ea0abf1543bbed" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:b34b513cc4d6edf0b4bb09b5a9a61131f02000d0485d010774c8e8fbb8247f39" [label=""];
  "sha256:b34b513cc4d6edf0b4bb09b5a9a61131f02000d0485d010774c8e8fbb8247f39" -> "sha256:db30a088256e0222745adb7b1e6ce72976557992e5c5bc7eb5436aca1386477d" [label=""];
  "sha256:f9f5be69d343389880f019e377ea0da1dc1a928ebda3c2014171217dc5ba7395" -> "sha256:9f0580b8f17ebcfd3e983fdc782cd8d958b185694e740b350d4fd733a2a64bed" [label=""];
  "sha256:9f0580b8f17ebcfd3e983fdc782cd8d958b185694e740b350d4fd733a2a64bed" -> "sha256:8728992c7419eb02e9f1453dc33f47d6fabfa345baa038f860e16a7a5c49cc13" [label=""];
  "sha256:8728992c7419eb02e9f1453dc33f47d6fabfa345baa038f860e16a7a5c49cc13" -> "sha256:e383fc026583049dc32315e0417f3122017081e2ab97aab6a376a20887d1a137" [label=""];
  "sha256:e383fc026583049dc32315e0417f3122017081e2ab97aab6a376a20887d1a137" -> "sha256:9ff68643b9e00971cb7a8e656bba0b43a629c170dff5f065c790670f8d91bcfe" [label=""];
  "sha256:3955d8d24fd1eab56039c153f3a8b6eb563e3d09e56ec4658f8acbfcd1cfd091" -> "sha256:9ff68643b9e00971cb7a8e656bba0b43a629c170dff5f065c790670f8d91bcfe" [label=""];
  "sha256:9ff68643b9e00971cb7a8e656bba0b43a629c170dff5f065c790670f8d91bcfe" -> "sha256:64ce3d7f9eb4326b1a289b56a8a58242edf0e32c998b5252512575431cb485ea" [label=""];
  "sha256:64ce3d7f9eb4326b1a289b56a8a58242edf0e32c998b5252512575431cb485ea" -> "sha256:95f32103949e6c4cb9d9a856d1e64add499c25f96cb4abc42841850bd6d88b68" [label=""];
  "sha256:3955d8d24fd1eab56039c153f3a8b6eb563e3d09e56ec4658f8acbfcd1cfd091" -> "sha256:95f32103949e6c4cb9d9a856d1e64add499c25f96cb4abc42841850bd6d88b68" [label=""];
  "sha256:95f32103949e6c4cb9d9a856d1e64add499c25f96cb4abc42841850bd6d88b68" -> "sha256:eb5f90743d3d69d811189d74ce99e5ab81ea2cdb00bc9133373b0043daf7eed0" [label=""];
  "sha256:eb5f90743d3d69d811189d74ce99e5ab81ea2cdb00bc9133373b0043daf7eed0" -> "sha256:17d41dc7534f85ffd6a4f3ceb6f3234ec9bf66bf58000dfa7c7fd50a597886b2" [label=""];
  "sha256:17d41dc7534f85ffd6a4f3ceb6f3234ec9bf66bf58000dfa7c7fd50a597886b2" -> "sha256:e0edbaa6cc9168020c26f69405ec2d46f7a71335542a7ef48e63ab09ea9ee138" [label=""];
  "sha256:db30a088256e0222745adb7b1e6ce72976557992e5c5bc7eb5436aca1386477d" -> "sha256:0f013cc92392f1ce85a7da755c47f19449ca8e0b27d626f058a4c62e747a762c" [label=""];
  "sha256:e0edbaa6cc9168020c26f69405ec2d46f7a71335542a7ef48e63ab09ea9ee138" -> "sha256:0f013cc92392f1ce85a7da755c47f19449ca8e0b27d626f058a4c62e747a762c" [label=""];
  "sha256:0f013cc92392f1ce85a7da755c47f19449ca8e0b27d626f058a4c62e747a762c" -> "sha256:b964b16252096aa0ca570c39087abfa59ca386efe1359d9d2a0f7811b0075e1b" [label=""];
  "sha256:3955d8d24fd1eab56039c153f3a8b6eb563e3d09e56ec4658f8acbfcd1cfd091" -> "sha256:b964b16252096aa0ca570c39087abfa59ca386efe1359d9d2a0f7811b0075e1b" [label=""];
  "sha256:b964b16252096aa0ca570c39087abfa59ca386efe1359d9d2a0f7811b0075e1b" -> "sha256:8d0fc61a8b9ae4ac2f335f4a1b05da720a706f23968bb7712524a1809aced8a6" [label=""];
  "sha256:8d0fc61a8b9ae4ac2f335f4a1b05da720a706f23968bb7712524a1809aced8a6" -> "sha256:e2e044b4df253132937a5713a4675021c83b96378ef25dfe9502b62ea50ef54a" [label=""];
  "sha256:e2e044b4df253132937a5713a4675021c83b96378ef25dfe9502b62ea50ef54a" -> "sha256:3bd0efa673660fa4a0aed57015b924211f97b1adf7e3a37de7ea0abf1543bbed" [label=""];
}

