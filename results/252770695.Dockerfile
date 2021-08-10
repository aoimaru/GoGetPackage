[app/sources/252770695.Dockerfile]
digraph {
  "sha256:13b86560ec72be1af3a61870f362939873bbd6966fad043b43d8292343145c19" [label="docker-image://docker.io/library/ruby:2.3" shape="ellipse"];
  "sha256:a38d3e44abd67bfe224f7d4885e722823d0ff47dbfcb4bc45f09022a56c204ad" [label="/bin/sh -c mkdir /sa_grades_ms" shape="box"];
  "sha256:f6b80b53a2f404cede19fe12542b27807f2c2fc49494d5927a0ffd8d5ade160e" [label="mkdir{path=/sa_grades_ms}" shape="note"];
  "sha256:d0c745f686253b7db34745fca3826f47c2862dc6ae4dd23cbaeef346e8c7f732" [label="local://context" shape="ellipse"];
  "sha256:5fb67460ebe4949bd7d04e6cada5b861d8f0a9bba1662bca4df4142638fe05d6" [label="copy{src=/Gemfile, dest=/sa_grades_ms/Gemfile}" shape="note"];
  "sha256:9a098f9ba33c027130be3da11a8007ac8fab3147e67abc8d2c543d63c6c55945" [label="copy{src=/Gemfile.lock, dest=/sa_grades_ms/Gemfile.lock}" shape="note"];
  "sha256:3247bb39424526782af6f3083dbffd0d66d0da44555566634992c8468680a5b7" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:3172d15ac16a107aff0055c263ec15c1c4b24d8b7043e5099a05e2a6587de6c0" [label="copy{src=/, dest=/sa_grades_ms}" shape="note"];
  "sha256:727c5a5726b7fc96c6c5284294af143e54a42a344398486a6573094c060e050c" [label="sha256:727c5a5726b7fc96c6c5284294af143e54a42a344398486a6573094c060e050c" shape="plaintext"];
  "sha256:13b86560ec72be1af3a61870f362939873bbd6966fad043b43d8292343145c19" -> "sha256:a38d3e44abd67bfe224f7d4885e722823d0ff47dbfcb4bc45f09022a56c204ad" [label=""];
  "sha256:a38d3e44abd67bfe224f7d4885e722823d0ff47dbfcb4bc45f09022a56c204ad" -> "sha256:f6b80b53a2f404cede19fe12542b27807f2c2fc49494d5927a0ffd8d5ade160e" [label=""];
  "sha256:f6b80b53a2f404cede19fe12542b27807f2c2fc49494d5927a0ffd8d5ade160e" -> "sha256:5fb67460ebe4949bd7d04e6cada5b861d8f0a9bba1662bca4df4142638fe05d6" [label=""];
  "sha256:d0c745f686253b7db34745fca3826f47c2862dc6ae4dd23cbaeef346e8c7f732" -> "sha256:5fb67460ebe4949bd7d04e6cada5b861d8f0a9bba1662bca4df4142638fe05d6" [label=""];
  "sha256:5fb67460ebe4949bd7d04e6cada5b861d8f0a9bba1662bca4df4142638fe05d6" -> "sha256:9a098f9ba33c027130be3da11a8007ac8fab3147e67abc8d2c543d63c6c55945" [label=""];
  "sha256:d0c745f686253b7db34745fca3826f47c2862dc6ae4dd23cbaeef346e8c7f732" -> "sha256:9a098f9ba33c027130be3da11a8007ac8fab3147e67abc8d2c543d63c6c55945" [label=""];
  "sha256:9a098f9ba33c027130be3da11a8007ac8fab3147e67abc8d2c543d63c6c55945" -> "sha256:3247bb39424526782af6f3083dbffd0d66d0da44555566634992c8468680a5b7" [label=""];
  "sha256:3247bb39424526782af6f3083dbffd0d66d0da44555566634992c8468680a5b7" -> "sha256:3172d15ac16a107aff0055c263ec15c1c4b24d8b7043e5099a05e2a6587de6c0" [label=""];
  "sha256:d0c745f686253b7db34745fca3826f47c2862dc6ae4dd23cbaeef346e8c7f732" -> "sha256:3172d15ac16a107aff0055c263ec15c1c4b24d8b7043e5099a05e2a6587de6c0" [label=""];
  "sha256:3172d15ac16a107aff0055c263ec15c1c4b24d8b7043e5099a05e2a6587de6c0" -> "sha256:727c5a5726b7fc96c6c5284294af143e54a42a344398486a6573094c060e050c" [label=""];
}

