[app/sources/469166386.Dockerfile]
digraph {
  "sha256:5c9a86de97f79bab6544dd7ad460937dd459bf6e86f1f9f8bc4f28a6aa9f19ba" [label="docker-image://docker.io/library/swift:4.1" shape="ellipse"];
  "sha256:151110a81cdfeb66e6d7c9ad791f749ae96a601079aeaac40877597210effcb8" [label="mkdir{path=/package}" shape="note"];
  "sha256:ca9b95c97d5c1b25601eb0344e93156142f1dd483f7309bfa5ab35c68dc52c59" [label="local://context" shape="ellipse"];
  "sha256:0eee19c5edc54932ee5f658166b1a0c50e479d42f440721aba6fac387d2e7019" [label="copy{src=/, dest=/package/}" shape="note"];
  "sha256:20d00e218f5a950d63c882341d6dd93b3478de282b49abd66f660b889194b1e8" [label="/bin/sh -c swift package resolve" shape="box"];
  "sha256:b4de6545e1c89dfe5ed916c1c80bdea05a089ce3fd95e4bf354adeff046b994e" [label="/bin/sh -c swift package clean" shape="box"];
  "sha256:455fec033d2b2474fd62f69cc3ad83db259871ada70844211e22c61f2f1b8ea6" [label="sha256:455fec033d2b2474fd62f69cc3ad83db259871ada70844211e22c61f2f1b8ea6" shape="plaintext"];
  "sha256:5c9a86de97f79bab6544dd7ad460937dd459bf6e86f1f9f8bc4f28a6aa9f19ba" -> "sha256:151110a81cdfeb66e6d7c9ad791f749ae96a601079aeaac40877597210effcb8" [label=""];
  "sha256:151110a81cdfeb66e6d7c9ad791f749ae96a601079aeaac40877597210effcb8" -> "sha256:0eee19c5edc54932ee5f658166b1a0c50e479d42f440721aba6fac387d2e7019" [label=""];
  "sha256:ca9b95c97d5c1b25601eb0344e93156142f1dd483f7309bfa5ab35c68dc52c59" -> "sha256:0eee19c5edc54932ee5f658166b1a0c50e479d42f440721aba6fac387d2e7019" [label=""];
  "sha256:0eee19c5edc54932ee5f658166b1a0c50e479d42f440721aba6fac387d2e7019" -> "sha256:20d00e218f5a950d63c882341d6dd93b3478de282b49abd66f660b889194b1e8" [label=""];
  "sha256:20d00e218f5a950d63c882341d6dd93b3478de282b49abd66f660b889194b1e8" -> "sha256:b4de6545e1c89dfe5ed916c1c80bdea05a089ce3fd95e4bf354adeff046b994e" [label=""];
  "sha256:b4de6545e1c89dfe5ed916c1c80bdea05a089ce3fd95e4bf354adeff046b994e" -> "sha256:455fec033d2b2474fd62f69cc3ad83db259871ada70844211e22c61f2f1b8ea6" [label=""];
}

