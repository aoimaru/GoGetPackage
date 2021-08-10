[app/sources/323769521.Dockerfile]
digraph {
  "sha256:bc6de8ef1c377e31ac7d598c6b9d611784e98b628be93f06e3d6aba0cc73c2a1" [label="docker-image://docker.io/paschmann/rasa-ui:latest" shape="ellipse"];
  "sha256:e05fbf3ddefde7e93c2c9067fb5184202cf8a7c8671c59ef3dd99dc4323c6d20" [label="local://context" shape="ellipse"];
  "sha256:e300958a1110a295032aa3ee92fa1f86d802acee9a1b46f6358fc1e2f43ddfb8" [label="copy{src=/bot-demo, dest=/opt/rasaui/web/src/bot-demo}" shape="note"];
  "sha256:37b40dbfc32dbf11c681fbb24bf42fc970d6ca0b2b5c9909ab669d356b9f2ff8" [label="copy{src=/weather-insert.sql, dest=/opt/postgresql/}" shape="note"];
  "sha256:9c3043621898193694bda618772047d6cf36afb366a4a6298017c43ec84787b6" [label="mkdir{path=/opt/postgresql}" shape="note"];
  "sha256:f8c2565563a5802b928a43d17b0536eecb104dd6078e5ae2cba8fd42069f0cd7" [label="/bin/sh -c service postgresql start && su postgres -c \" echo \\\"\\c rasaui; \\i weather-insert.sql\\\" | psql && echo \\\"grant all on database rasaui to rasaui; grant all privileges on all tables in schema public to rasaui; grant all privileges on all sequences in schema public to rasaui \\\"|psql rasaui\" && service postgresql stop" shape="box"];
  "sha256:d9f1d58eda01100f133cce6b8bee28b9f796fcc2b856cf7db6d5e8ab5f9fa373" [label="mkdir{path=/opt/rasaui}" shape="note"];
  "sha256:d6cd52c5dc6b73d20c68f0bee6d16143b01d8444e86bbb775d15331930baab80" [label="sha256:d6cd52c5dc6b73d20c68f0bee6d16143b01d8444e86bbb775d15331930baab80" shape="plaintext"];
  "sha256:bc6de8ef1c377e31ac7d598c6b9d611784e98b628be93f06e3d6aba0cc73c2a1" -> "sha256:e300958a1110a295032aa3ee92fa1f86d802acee9a1b46f6358fc1e2f43ddfb8" [label=""];
  "sha256:e05fbf3ddefde7e93c2c9067fb5184202cf8a7c8671c59ef3dd99dc4323c6d20" -> "sha256:e300958a1110a295032aa3ee92fa1f86d802acee9a1b46f6358fc1e2f43ddfb8" [label=""];
  "sha256:e300958a1110a295032aa3ee92fa1f86d802acee9a1b46f6358fc1e2f43ddfb8" -> "sha256:37b40dbfc32dbf11c681fbb24bf42fc970d6ca0b2b5c9909ab669d356b9f2ff8" [label=""];
  "sha256:e05fbf3ddefde7e93c2c9067fb5184202cf8a7c8671c59ef3dd99dc4323c6d20" -> "sha256:37b40dbfc32dbf11c681fbb24bf42fc970d6ca0b2b5c9909ab669d356b9f2ff8" [label=""];
  "sha256:37b40dbfc32dbf11c681fbb24bf42fc970d6ca0b2b5c9909ab669d356b9f2ff8" -> "sha256:9c3043621898193694bda618772047d6cf36afb366a4a6298017c43ec84787b6" [label=""];
  "sha256:9c3043621898193694bda618772047d6cf36afb366a4a6298017c43ec84787b6" -> "sha256:f8c2565563a5802b928a43d17b0536eecb104dd6078e5ae2cba8fd42069f0cd7" [label=""];
  "sha256:f8c2565563a5802b928a43d17b0536eecb104dd6078e5ae2cba8fd42069f0cd7" -> "sha256:d9f1d58eda01100f133cce6b8bee28b9f796fcc2b856cf7db6d5e8ab5f9fa373" [label=""];
  "sha256:d9f1d58eda01100f133cce6b8bee28b9f796fcc2b856cf7db6d5e8ab5f9fa373" -> "sha256:d6cd52c5dc6b73d20c68f0bee6d16143b01d8444e86bbb775d15331930baab80" [label=""];
}

