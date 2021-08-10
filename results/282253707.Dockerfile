[app/sources/282253707.Dockerfile]
digraph {
  "sha256:369c39f435b734bf2eeb3a510a49be806b0b941bcca0ad342049c2ed17507e1f" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:61721599482ae81244bfb20551bc6b45221a1dfe633e16a607ac0f0d863f53c9" [label="/bin/sh -c apt-get update && apt-get install -y clang make python python-pip" shape="box"];
  "sha256:150eee40ca59937f6f3d1ac8f25493bfad73405c76b251dda483b4a4214f3d00" [label="copy{src=/tests/safety/requirements.txt, dest=/panda/tests/safety/requirements.txt}" shape="note"];
  "sha256:c8440e0e1a097df5303d68ba36c3241f66ad84edb02001f5117c9fa6708ce816" [label="/bin/sh -c pip install -r /panda/tests/safety/requirements.txt" shape="box"];
  "sha256:39343ac5c99987d90a54c7430f2701a63713bfb2c40ac9b2c394cf1db8b396cd" [label="copy{src=/, dest=/panda}" shape="note"];
  "sha256:fae48e819d178f462801ef0034b46c3231ff8ccd69cdb4a248e840c3cf7c8ff2" [label="sha256:fae48e819d178f462801ef0034b46c3231ff8ccd69cdb4a248e840c3cf7c8ff2" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:61721599482ae81244bfb20551bc6b45221a1dfe633e16a607ac0f0d863f53c9" [label=""];
  "sha256:61721599482ae81244bfb20551bc6b45221a1dfe633e16a607ac0f0d863f53c9" -> "sha256:150eee40ca59937f6f3d1ac8f25493bfad73405c76b251dda483b4a4214f3d00" [label=""];
  "sha256:369c39f435b734bf2eeb3a510a49be806b0b941bcca0ad342049c2ed17507e1f" -> "sha256:150eee40ca59937f6f3d1ac8f25493bfad73405c76b251dda483b4a4214f3d00" [label=""];
  "sha256:150eee40ca59937f6f3d1ac8f25493bfad73405c76b251dda483b4a4214f3d00" -> "sha256:c8440e0e1a097df5303d68ba36c3241f66ad84edb02001f5117c9fa6708ce816" [label=""];
  "sha256:c8440e0e1a097df5303d68ba36c3241f66ad84edb02001f5117c9fa6708ce816" -> "sha256:39343ac5c99987d90a54c7430f2701a63713bfb2c40ac9b2c394cf1db8b396cd" [label=""];
  "sha256:369c39f435b734bf2eeb3a510a49be806b0b941bcca0ad342049c2ed17507e1f" -> "sha256:39343ac5c99987d90a54c7430f2701a63713bfb2c40ac9b2c394cf1db8b396cd" [label=""];
  "sha256:39343ac5c99987d90a54c7430f2701a63713bfb2c40ac9b2c394cf1db8b396cd" -> "sha256:fae48e819d178f462801ef0034b46c3231ff8ccd69cdb4a248e840c3cf7c8ff2" [label=""];
}

