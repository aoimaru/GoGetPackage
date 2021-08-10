[app/sources/252783162.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:ec26edec6a3393edc7f28fd3974a5a7434edcad50384656c87f2d925be9ba222" [label="/bin/sh -c /bin/echo 'Hello faerun'" shape="box"];
  "sha256:2530a05ca9f70d7dbc60782af07a51d423cc90ac9d74ad6ee5de4c28a85531b9" [label="sha256:2530a05ca9f70d7dbc60782af07a51d423cc90ac9d74ad6ee5de4c28a85531b9" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:ec26edec6a3393edc7f28fd3974a5a7434edcad50384656c87f2d925be9ba222" [label=""];
  "sha256:ec26edec6a3393edc7f28fd3974a5a7434edcad50384656c87f2d925be9ba222" -> "sha256:2530a05ca9f70d7dbc60782af07a51d423cc90ac9d74ad6ee5de4c28a85531b9" [label=""];
}

