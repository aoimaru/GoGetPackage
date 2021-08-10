[app/sources/275223369.Dockerfile]
digraph {
  "sha256:eec14029989f7f3dd325f3fb0a977173f4dd63d7855e36033cf851ed059ca4af" [label="docker-image://docker.io/lagoon/curator:latest" shape="ellipse"];
  "sha256:87a4a0e12e3786400ca560c7b9cf4fc3efc1fb241281b0a93034017797d4a274" [label="local://context" shape="ellipse"];
  "sha256:2a6bd0517c290ac5f9e47f2c5c57d0848dd46438b031f77adb188dd81953f35e" [label="copy{src=/actions.yml, dest=/curator/},copy{src=/curator.yml, dest=/curator/}" shape="note"];
  "sha256:387437e4862419848024979c09e2576cbf607fa5423198f9120c177d535630db" [label="copy{src=/90-generate-http-auth.sh, dest=/lagoon/entrypoints/}" shape="note"];
  "sha256:28f837db8052a8d1747a9388fc8bdcdbc3c1e8bbb141fad4e071183d435a75fa" [label="/bin/sh -c echo \"source /lagoon/entrypoints/90-generate-http-auth.sh\" >> /home/.bashrc" shape="box"];
  "sha256:b9890fb13ae9084462f49b284c1c296c904bb9e1a8eded4062db906397f29229" [label="sha256:b9890fb13ae9084462f49b284c1c296c904bb9e1a8eded4062db906397f29229" shape="plaintext"];
  "sha256:eec14029989f7f3dd325f3fb0a977173f4dd63d7855e36033cf851ed059ca4af" -> "sha256:2a6bd0517c290ac5f9e47f2c5c57d0848dd46438b031f77adb188dd81953f35e" [label=""];
  "sha256:87a4a0e12e3786400ca560c7b9cf4fc3efc1fb241281b0a93034017797d4a274" -> "sha256:2a6bd0517c290ac5f9e47f2c5c57d0848dd46438b031f77adb188dd81953f35e" [label=""];
  "sha256:2a6bd0517c290ac5f9e47f2c5c57d0848dd46438b031f77adb188dd81953f35e" -> "sha256:387437e4862419848024979c09e2576cbf607fa5423198f9120c177d535630db" [label=""];
  "sha256:87a4a0e12e3786400ca560c7b9cf4fc3efc1fb241281b0a93034017797d4a274" -> "sha256:387437e4862419848024979c09e2576cbf607fa5423198f9120c177d535630db" [label=""];
  "sha256:387437e4862419848024979c09e2576cbf607fa5423198f9120c177d535630db" -> "sha256:28f837db8052a8d1747a9388fc8bdcdbc3c1e8bbb141fad4e071183d435a75fa" [label=""];
  "sha256:28f837db8052a8d1747a9388fc8bdcdbc3c1e8bbb141fad4e071183d435a75fa" -> "sha256:b9890fb13ae9084462f49b284c1c296c904bb9e1a8eded4062db906397f29229" [label=""];
}

