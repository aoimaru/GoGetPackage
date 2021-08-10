[app/sources/454918076.Dockerfile]
digraph {
  "sha256:2adff456ac385ca0554ccada2992f7027732cf132da6058c4ee8c2277468109e" [label="docker-image://docker.io/hypriot/rpi-node:slim" shape="ellipse"];
  "sha256:a08e9d6c78d088bdabd48429f5f1f3be84c2123229cf8104ab0f38bcc9c9a603" [label="/bin/sh -c npm config set unsafe-perm true" shape="box"];
  "sha256:6f72ad1f188c449a4a36f01ba053da967772af651730abe615a0326f068697f7" [label="/bin/sh -c npm install -g hm2mqtt" shape="box"];
  "sha256:76a714e1836cf6607d7342a8422a2e155f0df5c6ad74cf1c89d53059f729f516" [label="sha256:76a714e1836cf6607d7342a8422a2e155f0df5c6ad74cf1c89d53059f729f516" shape="plaintext"];
  "sha256:2adff456ac385ca0554ccada2992f7027732cf132da6058c4ee8c2277468109e" -> "sha256:a08e9d6c78d088bdabd48429f5f1f3be84c2123229cf8104ab0f38bcc9c9a603" [label=""];
  "sha256:a08e9d6c78d088bdabd48429f5f1f3be84c2123229cf8104ab0f38bcc9c9a603" -> "sha256:6f72ad1f188c449a4a36f01ba053da967772af651730abe615a0326f068697f7" [label=""];
  "sha256:6f72ad1f188c449a4a36f01ba053da967772af651730abe615a0326f068697f7" -> "sha256:76a714e1836cf6607d7342a8422a2e155f0df5c6ad74cf1c89d53059f729f516" [label=""];
}

