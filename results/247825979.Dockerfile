[app/sources/247825979.Dockerfile]
digraph {
  "sha256:78b112054fe539d20d0f79b7ab22f3bd073ba20c3e62098ca1307aac1bc36756" [label="docker-image://docker.io/library/httpd:2.4" shape="ellipse"];
  "sha256:684416033daf5f2975bfa2e55f7fcc2c905d1fb79cf67e2b00a4a7d05e8b3134" [label="local://context" shape="ellipse"];
  "sha256:d9a11fe2f00fab5380a801d8f9229fb6b1e0e86c06c6ea664ad369c29a3d6007" [label="copy{src=/httpd.conf, dest=/usr/local/apache2/conf/httpd.conf}" shape="note"];
  "sha256:5f50a23991636abda1fe99de682c6bcef31781823b30e2a15cf53a373d76f357" [label="sha256:5f50a23991636abda1fe99de682c6bcef31781823b30e2a15cf53a373d76f357" shape="plaintext"];
  "sha256:78b112054fe539d20d0f79b7ab22f3bd073ba20c3e62098ca1307aac1bc36756" -> "sha256:d9a11fe2f00fab5380a801d8f9229fb6b1e0e86c06c6ea664ad369c29a3d6007" [label=""];
  "sha256:684416033daf5f2975bfa2e55f7fcc2c905d1fb79cf67e2b00a4a7d05e8b3134" -> "sha256:d9a11fe2f00fab5380a801d8f9229fb6b1e0e86c06c6ea664ad369c29a3d6007" [label=""];
  "sha256:d9a11fe2f00fab5380a801d8f9229fb6b1e0e86c06c6ea664ad369c29a3d6007" -> "sha256:5f50a23991636abda1fe99de682c6bcef31781823b30e2a15cf53a373d76f357" [label=""];
}

