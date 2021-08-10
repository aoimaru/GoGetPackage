[app/sources/235477369.Dockerfile]
digraph {
  "sha256:1ae80109ed0f570aecbc9eef579de179ab4e111d9259a868f595e45791fc33e0" [label="local://context" shape="ellipse"];
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" [label="docker-image://docker.io/library/busybox:ubuntu-14.04" shape="ellipse"];
  "sha256:5f015afb259df035f60d4ad8c1262327e11b2111147a82fbf2f81175d25203d5" [label="copy{src=/guestbook_bin, dest=/app/guestbook}" shape="note"];
  "sha256:623d2528d6fd407293e2d9ccae849d87a10622369584a5d345f1abe4c075e7b9" [label="copy{src=/public/index.html, dest=/app/public/index.html}" shape="note"];
  "sha256:c3f5d77fa34ad891d414d20c2c12c3c7153cbf97af7d5ebf25aca12b9b3d6747" [label="copy{src=/public/script.js, dest=/app/public/script.js}" shape="note"];
  "sha256:bd863b323b27aff6522148e954a65d1c0f00dd3afd0af9713ddaaf9efd9195d9" [label="copy{src=/public/style.css, dest=/app/public/style.css}" shape="note"];
  "sha256:ce7261cab5cd13228a35ab41b90b1dfa93fb8fb40889173c8e6329899f25c310" [label="mkdir{path=/app}" shape="note"];
  "sha256:54af7a949697cbb309a6a3ba9e8327028a4822ced3c6c9bda47607edc8dd50bb" [label="sha256:54af7a949697cbb309a6a3ba9e8327028a4822ced3c6c9bda47607edc8dd50bb" shape="plaintext"];
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" -> "sha256:5f015afb259df035f60d4ad8c1262327e11b2111147a82fbf2f81175d25203d5" [label=""];
  "sha256:1ae80109ed0f570aecbc9eef579de179ab4e111d9259a868f595e45791fc33e0" -> "sha256:5f015afb259df035f60d4ad8c1262327e11b2111147a82fbf2f81175d25203d5" [label=""];
  "sha256:5f015afb259df035f60d4ad8c1262327e11b2111147a82fbf2f81175d25203d5" -> "sha256:623d2528d6fd407293e2d9ccae849d87a10622369584a5d345f1abe4c075e7b9" [label=""];
  "sha256:1ae80109ed0f570aecbc9eef579de179ab4e111d9259a868f595e45791fc33e0" -> "sha256:623d2528d6fd407293e2d9ccae849d87a10622369584a5d345f1abe4c075e7b9" [label=""];
  "sha256:623d2528d6fd407293e2d9ccae849d87a10622369584a5d345f1abe4c075e7b9" -> "sha256:c3f5d77fa34ad891d414d20c2c12c3c7153cbf97af7d5ebf25aca12b9b3d6747" [label=""];
  "sha256:1ae80109ed0f570aecbc9eef579de179ab4e111d9259a868f595e45791fc33e0" -> "sha256:c3f5d77fa34ad891d414d20c2c12c3c7153cbf97af7d5ebf25aca12b9b3d6747" [label=""];
  "sha256:c3f5d77fa34ad891d414d20c2c12c3c7153cbf97af7d5ebf25aca12b9b3d6747" -> "sha256:bd863b323b27aff6522148e954a65d1c0f00dd3afd0af9713ddaaf9efd9195d9" [label=""];
  "sha256:1ae80109ed0f570aecbc9eef579de179ab4e111d9259a868f595e45791fc33e0" -> "sha256:bd863b323b27aff6522148e954a65d1c0f00dd3afd0af9713ddaaf9efd9195d9" [label=""];
  "sha256:bd863b323b27aff6522148e954a65d1c0f00dd3afd0af9713ddaaf9efd9195d9" -> "sha256:ce7261cab5cd13228a35ab41b90b1dfa93fb8fb40889173c8e6329899f25c310" [label=""];
  "sha256:ce7261cab5cd13228a35ab41b90b1dfa93fb8fb40889173c8e6329899f25c310" -> "sha256:54af7a949697cbb309a6a3ba9e8327028a4822ced3c6c9bda47607edc8dd50bb" [label=""];
}

