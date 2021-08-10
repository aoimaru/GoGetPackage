[app/sources/280449929.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:8277664298ffc8dbbcd1f010a88da756d5f15b7c840925d052398f85fb1690a9" [label="local://context" shape="ellipse"];
  "sha256:0337cfe39f382bf4f42d27f94edafda21e48c510b11a568268f9b661d71556c2" [label="copy{src=/web.py, dest=/}" shape="note"];
  "sha256:86fddd67e271ebd87e03c6cc7eed2a411ed683f10baa8462c322bd892efa5970" [label="/bin/sh -c pip install cherrypy" shape="box"];
  "sha256:835d923e62dd73477d4d94638c8351d375a1836ff4de4dfce9b6039c6aa6723b" [label="sha256:835d923e62dd73477d4d94638c8351d375a1836ff4de4dfce9b6039c6aa6723b" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:0337cfe39f382bf4f42d27f94edafda21e48c510b11a568268f9b661d71556c2" [label=""];
  "sha256:8277664298ffc8dbbcd1f010a88da756d5f15b7c840925d052398f85fb1690a9" -> "sha256:0337cfe39f382bf4f42d27f94edafda21e48c510b11a568268f9b661d71556c2" [label=""];
  "sha256:0337cfe39f382bf4f42d27f94edafda21e48c510b11a568268f9b661d71556c2" -> "sha256:86fddd67e271ebd87e03c6cc7eed2a411ed683f10baa8462c322bd892efa5970" [label=""];
  "sha256:86fddd67e271ebd87e03c6cc7eed2a411ed683f10baa8462c322bd892efa5970" -> "sha256:835d923e62dd73477d4d94638c8351d375a1836ff4de4dfce9b6039c6aa6723b" [label=""];
}

