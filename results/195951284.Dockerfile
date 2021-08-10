[app/sources/195951284.Dockerfile]
digraph {
  "sha256:ac400331335471dfac5a0294c76a8cf6f11a1227e31c849d3532ad45b3890081" [label="docker-image://docker.io/bitwalker/alpine-elixir:1.8.1" shape="ellipse"];
  "sha256:102bc2da504826e1e6ee9424a6b9c5f9e105fa50f07837e13e36a2ea80977658" [label="/bin/sh -c mkdir -p /opt/app &&     chmod -R 777 /opt/app &&     apk update &&     apk --no-cache --update add       git make g++ wget curl inotify-tools       nodejs nodejs-npm &&     npm install npm -g --no-progress &&     update-ca-certificates --fresh &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:41ce72e33b5a497687be9b4494c62d787eb14a0dc7f0c4d39a1269c2eeb53c3b" [label="/bin/sh -c mix local.hex --force &&     mix local.rebar --force" shape="box"];
  "sha256:00dead5a68c8281c5e38cf7765cd5d81faaf1c412fce2ce36dc6adaf43b8a7ef" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:d7bac7a4e918f3bf805ee2ef1e3140d3e8f9b8cc47578c994394ef2610f04963" [label="sha256:d7bac7a4e918f3bf805ee2ef1e3140d3e8f9b8cc47578c994394ef2610f04963" shape="plaintext"];
  "sha256:ac400331335471dfac5a0294c76a8cf6f11a1227e31c849d3532ad45b3890081" -> "sha256:102bc2da504826e1e6ee9424a6b9c5f9e105fa50f07837e13e36a2ea80977658" [label=""];
  "sha256:102bc2da504826e1e6ee9424a6b9c5f9e105fa50f07837e13e36a2ea80977658" -> "sha256:41ce72e33b5a497687be9b4494c62d787eb14a0dc7f0c4d39a1269c2eeb53c3b" [label=""];
  "sha256:41ce72e33b5a497687be9b4494c62d787eb14a0dc7f0c4d39a1269c2eeb53c3b" -> "sha256:00dead5a68c8281c5e38cf7765cd5d81faaf1c412fce2ce36dc6adaf43b8a7ef" [label=""];
  "sha256:00dead5a68c8281c5e38cf7765cd5d81faaf1c412fce2ce36dc6adaf43b8a7ef" -> "sha256:d7bac7a4e918f3bf805ee2ef1e3140d3e8f9b8cc47578c994394ef2610f04963" [label=""];
}

