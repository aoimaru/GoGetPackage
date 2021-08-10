[app/sources/252767000.Dockerfile]
digraph {
  "sha256:f9a30db064910425534e13ba54570a15cfaa8bd67e66306de70ceba0ff61dfea" [label="local://context" shape="ellipse"];
  "sha256:d80156a6d4cceed0e8f570b556c516a8a3eec694b3d20d1253be45ce91947995" [label="copy{src=/--from=build, dest=/bin/healthcheck},copy{src=/bin/healthcheck, dest=/bin/healthcheck}" shape="note"];
  "sha256:c7cc66c9052b33ef258369ef249fd20f8712a2452c44fa3bcd61e740f019fe3c" [label="copy{src=/--from=build, dest=/bin/service},copy{src=/bin/echoudp, dest=/bin/service}" shape="note"];
  "sha256:ee46335191a4d30c5e73be839fb34420136cf9b93a339cce3ce2e2cf8112ec18" [label="sha256:ee46335191a4d30c5e73be839fb34420136cf9b93a339cce3ce2e2cf8112ec18" shape="plaintext"];
  "sha256:f9a30db064910425534e13ba54570a15cfaa8bd67e66306de70ceba0ff61dfea" -> "sha256:d80156a6d4cceed0e8f570b556c516a8a3eec694b3d20d1253be45ce91947995" [label=""];
  "sha256:d80156a6d4cceed0e8f570b556c516a8a3eec694b3d20d1253be45ce91947995" -> "sha256:c7cc66c9052b33ef258369ef249fd20f8712a2452c44fa3bcd61e740f019fe3c" [label=""];
  "sha256:f9a30db064910425534e13ba54570a15cfaa8bd67e66306de70ceba0ff61dfea" -> "sha256:c7cc66c9052b33ef258369ef249fd20f8712a2452c44fa3bcd61e740f019fe3c" [label=""];
  "sha256:c7cc66c9052b33ef258369ef249fd20f8712a2452c44fa3bcd61e740f019fe3c" -> "sha256:ee46335191a4d30c5e73be839fb34420136cf9b93a339cce3ce2e2cf8112ec18" [label=""];
}

