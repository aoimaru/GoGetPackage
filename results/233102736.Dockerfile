[app/sources/233102736.Dockerfile]
digraph {
  "sha256:bd260e95b652506f9d67ec8cb5e2d771b2cb2e669836484876ef5429d66f5ac1" [label="docker-image://docker.io/library/wso2ei-analytics-base:6.5.0" shape="ellipse"];
  "sha256:f5a1952d757cc2acc96339b3a906e8e03fc70dfebf514429f2f12a5e4a970087" [label="local://context" shape="ellipse"];
  "sha256:773a5274e0e017a473c46f5066b052ad799b4c33bf744ce7d122a9acf85e52b0" [label="copy{src=/init.sh, dest=/}" shape="note"];
  "sha256:e70489bdea75354285b70c330396f693055e4dadfa50e30aaf5ace9b83057ce7" [label="sha256:e70489bdea75354285b70c330396f693055e4dadfa50e30aaf5ace9b83057ce7" shape="plaintext"];
  "sha256:bd260e95b652506f9d67ec8cb5e2d771b2cb2e669836484876ef5429d66f5ac1" -> "sha256:773a5274e0e017a473c46f5066b052ad799b4c33bf744ce7d122a9acf85e52b0" [label=""];
  "sha256:f5a1952d757cc2acc96339b3a906e8e03fc70dfebf514429f2f12a5e4a970087" -> "sha256:773a5274e0e017a473c46f5066b052ad799b4c33bf744ce7d122a9acf85e52b0" [label=""];
  "sha256:773a5274e0e017a473c46f5066b052ad799b4c33bf744ce7d122a9acf85e52b0" -> "sha256:e70489bdea75354285b70c330396f693055e4dadfa50e30aaf5ace9b83057ce7" [label=""];
}

