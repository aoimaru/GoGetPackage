[app/sources/252766408.Dockerfile]
digraph {
  "sha256:082aaa850a55bda5bf9d7ecdbf6bd4591ed314bc76e426fa0e605d2c321141b4" [label="docker-image://docker.io/dockerfile/nodejs:latest" shape="ellipse"];
  "sha256:14560071aedfdf26367d9be4608f252255da93886521a7f00ebd2b89bf3e98cb" [label="local://context" shape="ellipse"];
  "sha256:c9fd6802869fb33a38a2329716e1f1a804e4e897bfc3ef90b4d0c7f77a145673" [label="copy{src=/, dest=/data}" shape="note"];
  "sha256:2e1ccb146cd1b5b43c1a8dce668e223ae859c78179d701057a6f9715805f06df" [label="/bin/sh -c npm install --production && npm rebuild --production" shape="box"];
  "sha256:9f4a370e0ee384efc48d45ded41ddad43e962251bd38084dd62bdcae3861001b" [label="sha256:9f4a370e0ee384efc48d45ded41ddad43e962251bd38084dd62bdcae3861001b" shape="plaintext"];
  "sha256:082aaa850a55bda5bf9d7ecdbf6bd4591ed314bc76e426fa0e605d2c321141b4" -> "sha256:c9fd6802869fb33a38a2329716e1f1a804e4e897bfc3ef90b4d0c7f77a145673" [label=""];
  "sha256:14560071aedfdf26367d9be4608f252255da93886521a7f00ebd2b89bf3e98cb" -> "sha256:c9fd6802869fb33a38a2329716e1f1a804e4e897bfc3ef90b4d0c7f77a145673" [label=""];
  "sha256:c9fd6802869fb33a38a2329716e1f1a804e4e897bfc3ef90b4d0c7f77a145673" -> "sha256:2e1ccb146cd1b5b43c1a8dce668e223ae859c78179d701057a6f9715805f06df" [label=""];
  "sha256:2e1ccb146cd1b5b43c1a8dce668e223ae859c78179d701057a6f9715805f06df" -> "sha256:9f4a370e0ee384efc48d45ded41ddad43e962251bd38084dd62bdcae3861001b" [label=""];
}

