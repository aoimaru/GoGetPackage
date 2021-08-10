[app/sources/252792725.Dockerfile]
digraph {
  "sha256:3ff24bddce21ba5d9febe027b9f7fbdc741f75c54edfbfe159f932c2505cd9f5" [label="docker-image://docker.io/library/postgres:9.5" shape="ellipse"];
  "sha256:dd80cc77c75e69add507343a1069714a1567784839901e799ccefa4752d153ce" [label="local://context" shape="ellipse"];
  "sha256:f323fcd50792925de216d9730be354b34cf70dfa70e9126931ba0fb2f45b649d" [label="copy{src=/ssl.conf, dest=/etc/postgresql-common/ssl.conf}" shape="note"];
  "sha256:adee48cc3392de83e6f3b4e4ce5f1df5e4f1728a5e9842cebadac9a2e38460ca" [label="copy{src=/pg_hba.conf, dest=/usr/share/postgresql/9.5/pg_hba.conf.sample}" shape="note"];
  "sha256:47d8d5e6c6921a672688546cca161f7b2dd23157a05f150868947773228dda32" [label="copy{src=/postgresql.conf, dest=/usr/share/postgresql/9.5/postgresql.conf.sample}" shape="note"];
  "sha256:66d1e7c1e973b935532ed25baed4394b534f1c2b771fcdc7df2db330c3b24b78" [label="copy{src=/server.crt, dest=/var/ssl/},copy{src=/server.key, dest=/var/ssl/}" shape="note"];
  "sha256:e0e8d37773ed6b6344648ec3775181e88dc2ce5e34879640ffb472fc8c2c9999" [label="/bin/sh -c chown postgres.postgres /usr/share/postgresql/9.5/pg_hba.conf.sample /usr/share/postgresql/9.5/postgresql.conf.sample /var/ssl/server.key /var/ssl/server.crt && chmod 600 /var/ssl/server.key &&chgrp postgres /var/ssl/server.key &&chown postgres /var/ssl/server.key" shape="box"];
  "sha256:aa07c29c34181b16f995691cbfc9d7935379b9b65c211a27586b126370911553" [label="sha256:aa07c29c34181b16f995691cbfc9d7935379b9b65c211a27586b126370911553" shape="plaintext"];
  "sha256:3ff24bddce21ba5d9febe027b9f7fbdc741f75c54edfbfe159f932c2505cd9f5" -> "sha256:f323fcd50792925de216d9730be354b34cf70dfa70e9126931ba0fb2f45b649d" [label=""];
  "sha256:dd80cc77c75e69add507343a1069714a1567784839901e799ccefa4752d153ce" -> "sha256:f323fcd50792925de216d9730be354b34cf70dfa70e9126931ba0fb2f45b649d" [label=""];
  "sha256:f323fcd50792925de216d9730be354b34cf70dfa70e9126931ba0fb2f45b649d" -> "sha256:adee48cc3392de83e6f3b4e4ce5f1df5e4f1728a5e9842cebadac9a2e38460ca" [label=""];
  "sha256:dd80cc77c75e69add507343a1069714a1567784839901e799ccefa4752d153ce" -> "sha256:adee48cc3392de83e6f3b4e4ce5f1df5e4f1728a5e9842cebadac9a2e38460ca" [label=""];
  "sha256:adee48cc3392de83e6f3b4e4ce5f1df5e4f1728a5e9842cebadac9a2e38460ca" -> "sha256:47d8d5e6c6921a672688546cca161f7b2dd23157a05f150868947773228dda32" [label=""];
  "sha256:dd80cc77c75e69add507343a1069714a1567784839901e799ccefa4752d153ce" -> "sha256:47d8d5e6c6921a672688546cca161f7b2dd23157a05f150868947773228dda32" [label=""];
  "sha256:47d8d5e6c6921a672688546cca161f7b2dd23157a05f150868947773228dda32" -> "sha256:66d1e7c1e973b935532ed25baed4394b534f1c2b771fcdc7df2db330c3b24b78" [label=""];
  "sha256:dd80cc77c75e69add507343a1069714a1567784839901e799ccefa4752d153ce" -> "sha256:66d1e7c1e973b935532ed25baed4394b534f1c2b771fcdc7df2db330c3b24b78" [label=""];
  "sha256:66d1e7c1e973b935532ed25baed4394b534f1c2b771fcdc7df2db330c3b24b78" -> "sha256:e0e8d37773ed6b6344648ec3775181e88dc2ce5e34879640ffb472fc8c2c9999" [label=""];
  "sha256:e0e8d37773ed6b6344648ec3775181e88dc2ce5e34879640ffb472fc8c2c9999" -> "sha256:aa07c29c34181b16f995691cbfc9d7935379b9b65c211a27586b126370911553" [label=""];
}

