[app/sources/246269530.Dockerfile]
digraph {
  "sha256:28646eba2fcbe2ebd828fda09951697955fccb99441576ae2f3ac2093f7fb37b" [label="docker-image://docker.io/library/mysql:5.5" shape="ellipse"];
  "sha256:e6cacb97b3730043a548da9bc645b490dc77bda297ed996ef5f9519d3bdb556b" [label="local://context" shape="ellipse"];
  "sha256:62d583d6f7eed5f282acf3751fcdda08398f1eada641d3035db23a55d90811ca" [label="copy{src=/conf/data.cnf, dest=/etc/mysql/conf.d/data.cnf}" shape="note"];
  "sha256:14ca739fc19e2f93f5b763b728c1cb9b4d6fd51aca1fb17d6216f1f4933635b5" [label="/bin/sh -c chmod 644 /etc/mysql/conf.d/data.cnf &&     rm -rf /var/lib/mysql_data &&     mkdir -p /var/lib/mysql_data &&     touch /var/lib/mysql_data/db_lock &&     chown -R mysql:mysql /var/lib/mysql_data" shape="box"];
  "sha256:889075c150581757d1c3b06ece2c0b306d19d2bcac74923de4215413e652cd5a" [label="copy{src=/dumps/empty.sql.gz, dest=/docker-entrypoint-initdb.d/10_dump.sql.gz}" shape="note"];
  "sha256:1e9ca969662d93cc7a3eef2243381c7db7dfc66e1fee81fab5da2d2caeddc98f" [label="copy{src=/conf/unlock.sh, dest=/docker-entrypoint-initdb.d/20_unlock.sh}" shape="note"];
  "sha256:03ae5b7a88be2f37b583cf2dc4d2bc446db49821c38e2b4b95bbfcb7e9e30478" [label="sha256:03ae5b7a88be2f37b583cf2dc4d2bc446db49821c38e2b4b95bbfcb7e9e30478" shape="plaintext"];
  "sha256:28646eba2fcbe2ebd828fda09951697955fccb99441576ae2f3ac2093f7fb37b" -> "sha256:62d583d6f7eed5f282acf3751fcdda08398f1eada641d3035db23a55d90811ca" [label=""];
  "sha256:e6cacb97b3730043a548da9bc645b490dc77bda297ed996ef5f9519d3bdb556b" -> "sha256:62d583d6f7eed5f282acf3751fcdda08398f1eada641d3035db23a55d90811ca" [label=""];
  "sha256:62d583d6f7eed5f282acf3751fcdda08398f1eada641d3035db23a55d90811ca" -> "sha256:14ca739fc19e2f93f5b763b728c1cb9b4d6fd51aca1fb17d6216f1f4933635b5" [label=""];
  "sha256:14ca739fc19e2f93f5b763b728c1cb9b4d6fd51aca1fb17d6216f1f4933635b5" -> "sha256:889075c150581757d1c3b06ece2c0b306d19d2bcac74923de4215413e652cd5a" [label=""];
  "sha256:e6cacb97b3730043a548da9bc645b490dc77bda297ed996ef5f9519d3bdb556b" -> "sha256:889075c150581757d1c3b06ece2c0b306d19d2bcac74923de4215413e652cd5a" [label=""];
  "sha256:889075c150581757d1c3b06ece2c0b306d19d2bcac74923de4215413e652cd5a" -> "sha256:1e9ca969662d93cc7a3eef2243381c7db7dfc66e1fee81fab5da2d2caeddc98f" [label=""];
  "sha256:e6cacb97b3730043a548da9bc645b490dc77bda297ed996ef5f9519d3bdb556b" -> "sha256:1e9ca969662d93cc7a3eef2243381c7db7dfc66e1fee81fab5da2d2caeddc98f" [label=""];
  "sha256:1e9ca969662d93cc7a3eef2243381c7db7dfc66e1fee81fab5da2d2caeddc98f" -> "sha256:03ae5b7a88be2f37b583cf2dc4d2bc446db49821c38e2b4b95bbfcb7e9e30478" [label=""];
}

